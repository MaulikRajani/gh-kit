//
//  GHNSStringUIKitUtilsTest.m
//  GHKitIPhone
//
//  Created by Gabriel Handford on 1/22/09.
//  Copyright 2009. All rights reserved.
//

@interface GHNSStringUIKitUtilsTest : GTMTestCase { }
@end

@implementation GHNSStringUIKitUtilsTest

- (void)testSize {
	NSArray *lines = nil;
	NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do";
	[text gh_sizeWithFont:[UIFont systemFontOfSize:16.0] forWidth:100 lineGap:4 lines:&lines maxLineCount:100 truncated:nil options:0];
	
	NSArray *expectedLines = [NSArray arrayWithObjects:@"Lorem ipsum",
														@"dolor sit",
														@"amet,",
														@"consectetur",
														@"adipisicing",
														@"elit, sed do", nil];
	
	//STAssertTrue([lines isEqualToArray:expectedLines], nil);
}

@end
