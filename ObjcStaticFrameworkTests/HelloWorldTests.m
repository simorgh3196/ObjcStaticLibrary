//
//  HelloWorldTests.m
//  HelloWorldTests
//
//  Copyright © 2018年 simorgh3196. All rights reserved.
//

#import "ObjcStaticFramework.h"
@import XCTest;

@interface HelloWorldTests : XCTestCase
@end

@implementation HelloWorldTests

- (void)testGetHello {
    NSString *actual = [HelloWorld getHello];
    NSString *expected = @"Hello";
    XCTAssertEqualObjects(actual, expected);
}

- (void)testGetWorld {
    NSString *actual = [HelloWorld getWorld];
    NSString *expected = @"World";
    XCTAssertEqualObjects(actual, expected);
}

@end
