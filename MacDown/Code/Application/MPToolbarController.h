//
//  MPToolbarController.h
//  MacDown
//
//  Created by Niklas Berglund on 2017-02-12.
//  Copyright © 2017 Tzu-ping Chung . All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MPDocument;

@interface MPToolbarController : NSObject<NSToolbarDelegate>

@property (weak) IBOutlet MPDocument *document;

- (NSArray<NSToolbarItem *> *)editorToolbarItems;
- (NSArray<NSView *> *)editorToolbarItemViews;

@end
