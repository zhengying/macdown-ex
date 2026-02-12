//
//  MPEditorView.m
//  MacDown
//
//  Created by Tzu-ping Chung  on 30/8.
//  Copyright (c) 2014 Tzu-ping Chung . All rights reserved.
//

#import "MPEditorView.h"
#import <AppKit/NSDocumentController.h>


NS_INLINE BOOL MPAreRectsEqual(NSRect r1, NSRect r2)
{
    return (r1.origin.x == r2.origin.x && r1.origin.y == r2.origin.y
            && r1.size.width == r2.size.width
            && r1.size.height == r2.size.height);
}


@interface MPEditorView ()

@property NSRect contentRect;
@property CGFloat trailingHeight;

@end


@implementation MPEditorView

#pragma mark - Accessors

@synthesize contentRect = _contentRect;
@synthesize scrollsPastEnd = _scrollsPastEnd;

- (BOOL)scrollsPastEnd
{
    @synchronized(self) {
        return _scrollsPastEnd;
    }
}

- (void)awakeFromNib {
    [self registerForDraggedTypes:[NSArray arrayWithObjects: NSDragPboard, nil]];
    [super awakeFromNib];
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender {
    NSPasteboard *pboard;
    NSDragOperation sourceDragMask;
    
    sourceDragMask = [sender draggingSourceOperationMask];
    pboard = [sender draggingPasteboard];
    
    if ([[pboard types] containsObject:NSFilenamesPboardType]) {
        NSArray *files = [pboard propertyListForType:NSFilenamesPboardType];
        if (files.count) {
            BOOL isDir = NO;
            if ([[NSFileManager defaultManager] fileExistsAtPath:files[0] isDirectory:&isDir] && isDir) {
                if (sourceDragMask & NSDragOperationLink) {
                    return NSDragOperationLink;
                }
                if (sourceDragMask & NSDragOperationCopy) {
                    return NSDragOperationCopy;
                }
                return NSDragOperationCopy;
            }
        }
    }
    
    if ([pboard canReadItemWithDataConformingToTypes:[NSArray arrayWithObjects:@"public.jpeg", nil]]) {
        if (sourceDragMask & NSDragOperationLink) {
            return NSDragOperationLink;
        } else if (sourceDragMask & NSDragOperationCopy) {
            return NSDragOperationCopy;
        }
    }
    
    return NSDragOperationNone;
}

- (BOOL)performDragOperation:(id <NSDraggingInfo>)sender {
    NSPasteboard *pboard;
    NSDragOperation sourceDragMask;
    
    sourceDragMask = [sender draggingSourceOperationMask];
    (void)sourceDragMask;
    pboard = [sender draggingPasteboard];
    
    if ( [[pboard types] containsObject:NSFilenamesPboardType] ) {
        NSArray *files = [pboard propertyListForType:NSFilenamesPboardType];
        NSMutableArray<NSURL *> *directoryURLs = [NSMutableArray array];
        NSFileManager *fm = [NSFileManager defaultManager];
        for (NSString *path in files) {
            BOOL isDir = NO;
            if ([fm fileExistsAtPath:path isDirectory:&isDir] && isDir) {
                [directoryURLs addObject:[NSURL fileURLWithPath:path]];
            }
        }
        
        if (directoryURLs.count) {
            NSDocumentController *controller = [NSDocumentController sharedDocumentController];
            NSDocument *currentDocument = nil;
            if ([self.window.windowController.document isKindOfClass:[NSDocument class]])
                currentDocument = (NSDocument *)self.window.windowController.document;

            NSURL *primaryURL = directoryURLs.firstObject;
            NSArray<NSURL *> *extraURLs = (directoryURLs.count > 1)
                ? [directoryURLs subarrayWithRange:NSMakeRange(1, directoryURLs.count - 1)]
                : @[];

            void (^openInNewWindow)(NSURL *) = ^(NSURL *url) {
                [controller openDocumentWithContentsOfURL:url display:YES completionHandler:^(NSDocument *document, BOOL documentWasAlreadyOpen, NSError *error) {
                    (void)document;
                    (void)documentWasAlreadyOpen;
                    (void)error;
                }];
            };

            if (!currentDocument) {
                openInNewWindow(primaryURL);
                for (NSURL *url in extraURLs)
                    openInNewWindow(url);
                return YES;
            }

            BOOL inFolderMode = NO;
            if ([currentDocument respondsToSelector:@selector(isDirectory)])
                inFolderMode = [[currentDocument valueForKey:@"isDirectory"] boolValue];

            if (!inFolderMode) {
                NSError *error = nil;
                NSString *type = currentDocument.fileType ?: @"net.daringfireball.markdown";
                BOOL ok = [currentDocument revertToContentsOfURL:primaryURL ofType:type error:&error];
                if (!ok)
                    openInNewWindow(primaryURL);
                for (NSURL *url in extraURLs)
                    openInNewWindow(url);
                return YES;
            }

            NSAlert *alert = [[NSAlert alloc] init];
            alert.messageText = NSLocalizedString(@"Open Folder", @"Folder drop alert title");
            alert.informativeText = NSLocalizedString(@"A folder is already opened in the left file tree. Do you want to replace it, or open the new folder in a new window?", @"Folder drop alert message");
            [alert addButtonWithTitle:NSLocalizedString(@"Replace Folder", @"Folder drop alert replace button")];
            [alert addButtonWithTitle:NSLocalizedString(@"Open in New Window", @"Folder drop alert new window button")];
            [alert addButtonWithTitle:NSLocalizedString(@"Cancel", @"Folder drop alert cancel button")];

            [alert beginSheetModalForWindow:self.window completionHandler:^(NSModalResponse returnCode) {
                if (returnCode == NSAlertFirstButtonReturn) {
                    NSError *error = nil;
                    NSString *type = currentDocument.fileType ?: @"net.daringfireball.markdown";
                    BOOL ok = [currentDocument revertToContentsOfURL:primaryURL ofType:type error:&error];
                    if (!ok)
                        openInNewWindow(primaryURL);
                    for (NSURL *url in extraURLs)
                        openInNewWindow(url);
                    return;
                }
                if (returnCode == NSAlertSecondButtonReturn) {
                    openInNewWindow(primaryURL);
                    for (NSURL *url in extraURLs)
                        openInNewWindow(url);
                    return;
                }
            }];
            return YES;
        }
        
        /* Load data of file. */
        NSError *error;
        NSData *fileData = [NSData dataWithContentsOfFile: files[0]
                                                  options: NSMappedRead
                                                    error: &error];
        if (!error) {
            // convert to base64 representation
            NSString *dataString = [fileData base64Encoding];
            
            // insert into text.
            NSInteger insertionPoint = [[[self selectedRanges] objectAtIndex:0] rangeValue].location;
            [self setString:[NSString stringWithFormat:@"%@![](data:image/jpeg;base64,%@)%@", [[self string] substringToIndex:insertionPoint], dataString, [[self string] substringFromIndex:insertionPoint]]];
            [self didChangeText];
        } else {
            return NO;
        }
    }
    return YES;
}


- (void)setScrollsPastEnd:(BOOL)scrollsPastEnd
{
    @synchronized(self) {
        _scrollsPastEnd = scrollsPastEnd;
        if (scrollsPastEnd)
        {
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                [self updateContentGeometry];
            }];
        }
        else
        {
            // Clears contentRect to fallback to self.frame.
            self.contentRect = NSZeroRect;
        }
    }
}

- (NSRect)contentRect
{
    @synchronized(self) {
        if (MPAreRectsEqual(_contentRect, NSZeroRect))
            return self.frame;
        return _contentRect;
    }
}

- (void)setContentRect:(NSRect)rect
{
    @synchronized(self) {
        _contentRect = rect;
    }
}

- (void)setFrameSize:(NSSize)newSize
{
    if (self.scrollsPastEnd)
    {
        CGFloat ch = self.contentRect.size.height;
        CGFloat eh = self.enclosingScrollView.contentSize.height;
        CGFloat offset = ch < eh ? ch : eh;
        offset -= self.trailingHeight + 2 * self.textContainerInset.height;
        if (offset > 0)
            newSize.height += offset;
    }
    [super setFrameSize:newSize];
}

/** Overriden to perform extra operation on initial text setup.
 *
 * When we first launch the editor, -didChangeText will *not* be called, so we
 * override this to perform required resizing. The -updateContentRect is wrapped
 * inside an NSOperation to be invoked later since the layout manager will not
 * be invoked when the text is first set.
 *
 * @see didChangeText
 * @see updateContentRect
 */
- (void)setString:(NSString *)string
{
    [super setString:string];
    if (self.scrollsPastEnd)
    {
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            [self updateContentGeometry];
        }];
    }
}


#pragma mark - Overrides

/** Overriden to perform extra operation on text change.
 *
 * Updates content height, and invoke the resizing method to apply it.
 *
 * @see updateContentRect
 */
- (void)didChangeText
{
    [super didChangeText];
    if (self.scrollsPastEnd)
        [self updateContentGeometry];
}


#pragma mark - Private

- (void)updateContentGeometry
{
    static NSCharacterSet *visibleCharacterSet = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSCharacterSet *ws = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        visibleCharacterSet = ws.invertedSet;
    });

    NSString *content = self.string;
    NSLayoutManager *manager = self.layoutManager;
    NSTextContainer *container = self.textContainer;
    NSRect r = [manager usedRectForTextContainer:container];

    NSRange lastRange = [content rangeOfCharacterFromSet:visibleCharacterSet
                                                 options:NSBackwardsSearch];
    NSRect junkRect = r;
    if (lastRange.location != NSNotFound)
    {
        NSUInteger contentLength = content.length;
        NSUInteger firstJunkLocation = lastRange.location + lastRange.length;
        NSRange junkRange = NSMakeRange(firstJunkLocation,
                                        contentLength - firstJunkLocation);
        junkRect = [manager boundingRectForGlyphRange:junkRange
                                      inTextContainer:container];
    }
    self.trailingHeight = junkRect.size.height;

    NSSize inset = self.textContainerInset;
    r.size.width += 2 * inset.width;
    r.size.height += 2 * inset.height;
    self.contentRect = r;

    [self setFrameSize:self.frame.size];    // Force size update.
}

@end
