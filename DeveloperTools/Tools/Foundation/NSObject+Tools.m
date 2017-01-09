//
//  NSObject+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/9.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "NSObject+Tools.h"
#import "NSString+Tools.h"

@implementation NSObject (Tools)

+ (BOOL)isEmpty:(NSObject *)object
{
    if (object == nil) {
        return YES;
    }
    if (object == NULL) {
        return YES;
    }
    if (object == [NSNull new]) {
        return YES;
    }
    if ([object isKindOfClass:[NSString class]]) {
        return [NSString isBlankString:(NSString *) object];
    }
    if ([object isKindOfClass:[NSData class]]) {
        return [((NSData *) object) length]<=0;
    }
    if ([object isKindOfClass:[NSDictionary class]]) {
        return [((NSDictionary *) object) count]<=0;
    }
    if ([object isKindOfClass:[NSArray class]]) {
        return [((NSArray *) object) count]<=0;
    }
    if ([object isKindOfClass:[NSSet class]]) {
        return [((NSSet *) object) count]<=0;
    }
    return NO;
}

@end
