//
//  HelloWorld.m
//  ObjcStaticFramework
//
//  Copyright © 2018年 simorgh3196. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

+ (NSString *)getHello {
    return @"Hello";
}

+ (NSString *)getWorld {
    return @"World";
}

+ (NSString *)unusedWithUnusedParam:(NSString *)unused {
    NSString *unusedInstance = @"";
    NSString *unusedInstance2 = @"";
    return @"";
}

@end
