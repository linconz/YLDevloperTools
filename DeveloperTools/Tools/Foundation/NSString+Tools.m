//
//  NSString+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/9.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "NSString+Tools.h"
#import "NSObject+Tools.h"

@implementation NSString (Tools)

+ (BOOL)isBlankString:(NSString *)string
{
    if (string == nil) {
        return YES;
    }
    if (string == NULL) {
        return YES;
    }
    if (    [string isEqual:nil]
        ||  [string isEqual:Nil]){
        return YES;
    }
    if (![string isKindOfClass:[NSString class]]) {
        return YES;
    }
    if (0 == [string length]){
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]==0) {
        return YES;
    }
    if([string isEqualToString:@"(null)"]){
        return YES;
    }

    return NO;
}

+ (NSString*)safeString:(NSString*)string
{
    if ([NSObject isEmpty:string]) {
        return @"";
    }

    return [NSString stringWithFormat:@"%@", string];
}

+ (BOOL)isPureInt:(NSString*)string
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

+ (BOOL)isPureFloat:(NSString*)string
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return [scan scanFloat:&val] && [scan isAtEnd];
}

+ (BOOL)isNumber:(NSString *)string
{
    if( ![self isPureInt:string] || ![self isPureFloat:string]) {
        return NO;
    }
    return YES;
}

- (NSString *)stringByMatching:(NSString *)matchString
{
    NSRange range = [self rangeOfString:matchString options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        return [self substringWithRange:range];
    }
    return @"";
}

+ (NSString*)encodeURL:(NSString *)string
{
    NSString * encodedString = (NSString*) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)string, NULL, (CFStringRef)@"| !*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 ));

    return encodedString;
}
@end
