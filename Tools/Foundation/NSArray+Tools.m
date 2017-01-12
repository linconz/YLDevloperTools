//
//  NSArray+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/12.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "NSArray+Tools.h"

@implementation NSArray (Tools)

- (id)safeObjectAtIndex:(NSUInteger)index {
    if (index >= [self count]) {
        return nil;
    }

    return [self objectAtIndex:index];
}

- (NSData *)toData
{
    return [NSJSONSerialization dataWithJSONObject:self options:0 error:nil];
}

- (NSString *)toJSON
{
    NSData *data = [self toData];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end

@implementation NSMutableArray (Tools)

- (void)safeAddObject:(id)object {
    if (object) {
        [self addObject:object];
    }
}

@end
