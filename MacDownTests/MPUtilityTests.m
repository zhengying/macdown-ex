//
//  MPUtilityTests.m
//  MacDown
//
//  Created by Tzu-ping Chung  on 23/8.
//  Copyright (c) 2014 Tzu-ping Chung . All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MPUtilities.h"
#import "MPDocument.h"

@interface MPDocument (OutlineTesting)
- (NSArray *)markdownOutlineItemsForMarkdown:(NSString *)markdown;
@end

@interface MPUtilityTests : XCTestCase
@end


@implementation MPUtilityTests

- (void)testGetObjectFromJavaScript
{
    NSString *code = (
        @"var obj = { foo: 'bar', baz: 42 };"
        @"var arr = [0, null, {}];"
    );
    id obj = MPGetObjectFromJavaScript(code, @"obj");
    id objx = @{@"foo": @"bar", @"baz": @42};
    XCTAssertEqualObjects(obj, objx, @"JavaScript object to NSDictionary");

    id arr = MPGetObjectFromJavaScript(code, @"arr");
    id arrx = @[@0, [NSNull null], @{}];
    XCTAssertEqualObjects(arr, arrx, @"JavaScript object to NSDictionary");
}

- (void)testMarkdownOutlineParsing
{
    MPDocument *document = [[MPDocument alloc] init];

    NSString *markdown =
        @"# A\n"
        @"## B\n"
        @"Text\n"
        @"### C\n"
        @"```\n"
        @"# NotAHeading\n"
        @"```\n"
        @"Title\n"
        @"-----\n";

    NSArray *items = [document markdownOutlineItemsForMarkdown:markdown];
    XCTAssertEqual(items.count, 1);

    NSDictionary *a = items[0];
    XCTAssertEqualObjects(a[@"title"], @"A");
    XCTAssertEqualObjects(a[@"level"], @1);

    NSArray *aChildren = a[@"children"];
    XCTAssertEqual(aChildren.count, 2);
    NSDictionary *b = aChildren[0];
    XCTAssertEqualObjects(b[@"title"], @"B");
    XCTAssertEqualObjects(b[@"level"], @2);

    NSArray *bChildren = b[@"children"];
    XCTAssertEqual(bChildren.count, 1);
    NSDictionary *c = bChildren[0];
    XCTAssertEqualObjects(c[@"title"], @"C");
    XCTAssertEqualObjects(c[@"level"], @3);

    NSDictionary *title = aChildren[1];
    XCTAssertEqualObjects(title[@"title"], @"Title");
    XCTAssertEqualObjects(title[@"level"], @2);
}

@end
