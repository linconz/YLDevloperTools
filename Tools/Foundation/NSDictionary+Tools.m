//
//  NSDictionary+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "NSDictionary+Tools.h"

@implementation NSDictionary (Tools)

+ (BOOL)isLegalDictionary:(NSDictionary *)dic
{
    if (dic != nil && [dic isKindOfClass:[NSDictionary class]]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isEmptyDictionary:(NSDictionary *)dict
{
    if ([NSDictionary isLegalDictionary:dict] && dict.count > 0) {
        return NO;
    }
    return YES;
}

- (id)safeObjectForKey:(NSString *)key
{
    if ([NSDictionary isEmptyDictionary:self] || [NSString isBlankString:key]) {
        return nil;
    }
    return [self objectForKey:key];
}

- (NSString *)safeValueForKey:(NSString *)key {

    if ([NSObject isEmpty:self] || [NSObject isEmpty:[self valueForKey:key]]) {
        return @"";
    }

    return [NSString stringWithFormat:@"%@", [self valueForKey:key]];
}

- (NSData *)toData
{
    if (self.count > 0) {
        return [NSJSONSerialization dataWithJSONObject:self options:0 error:nil];
    }
    return [[NSData alloc] init];
}

- (NSString *)toJSON
{
    NSData *data = [self toData];
    NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return result;
}
@end

@implementation NSMutableDictionary (Tools)

- (BOOL)safeSetObject:(id)object forKey:(NSString *)key
{
    if ([NSDictionary isLegalDictionary:self] && object && ![NSString isBlankString:key]) {
        [self setObject:object forKey:key];
        return YES;
    }
    return NO;
}

- (BOOL)safeRemoveObjectForKey:(NSString *)key
{
    if ([NSDictionary isLegalDictionary:self] && [NSString isBlankString:key]) {
        [self removeObjectForKey:key];
        return YES;
    }
    return NO;
}

@end
