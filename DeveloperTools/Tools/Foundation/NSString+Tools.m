//
//  NSString+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/9.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "NSString+Tools.h"
#import "NSObject+Tools.h"
#import<CommonCrypto/CommonDigest.h>

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

+ (NSString*)encodeString:(NSString *)string
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
    NSString * encoded = (NSString*) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)string, NULL, (CFStringRef)@"| !*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 ));
#pragma clang diagnostic pop

    return encoded;
}

+ (NSString *)decodeString:(NSString*)string
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
    NSString *decode  = (__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge CFStringRef)string, CFSTR(""), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
#pragma clang diagnostic pop

    return decode;
}

- (NSString *)trim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)ltrim
{
    if (![self hasPrefix:@" "]) {
        return self;
    }
    NSUInteger blockPosition = 0;
    for (NSUInteger i=0; i<self.length; i++) {
        char c = [self characterAtIndex:i];
        if (c == ' ') {
            blockPosition = i;
        } else {
            break;
        }
    }
    return [self substringFromIndex:blockPosition + 1];
}

- (NSString *)rtrim
{
    if (![self hasSuffix:@" "]) {
        return self;
    }
    NSInteger blockPosition = [self length];
    for (NSInteger i=[self length] - 1; i>=0 ; i--) {
        char c = [self characterAtIndex:i];
        if (c == ' ') {
            blockPosition = i;
        } else {
            break;
        }
    }
    if (blockPosition == 0) {
        return @"";
    }
    return [self substringToIndex:blockPosition];
}

- (NSDate *)toDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter dateFromString:self];
}

- (NSData *)toData
{
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

- (NSDictionary *)toDictionary
{
    NSData *jsonData = [self toData];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        return [NSDictionary dictionary];
    }
    return dic;
}

- (NSString *)toMD5
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];

    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];

    return output;
}

- (CGSize)boundingRectWithSize:(CGSize)maxSize
                      withFont:(UIFont *)font
{
    CGRect frame = [self boundingRectWithSize:maxSize
                                      options:NSStringDrawingUsesLineFragmentOrigin
                                   attributes:@{NSFontAttributeName: font}
                                      context:nil];

    return frame.size;
}

@end
