//
//  NSString+Tools.h
//  DeveloperTools
//
//  Created by zhang on 2017/1/9.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Tools)


/**
 是否是空字符串

 @param string string

 @return BOOL
 */
+ (BOOL)isBlankString:(NSString *)string;

/**
 返回一个安全字符

 @param string string

 @return string
 */
+ (NSString*)safeString:(NSString*)string;

/**
 是否是纯数字

 @param string string

 @return BOOL
 */
+ (BOOL)isPureInt:(NSString*)string;

/**
 是否是纯浮点

 @param string string

 @return BOOL
 */
+ (BOOL)isPureFloat:(NSString*)string;

/**
 是否是数字

 @param string string

 @return BOOL
 */
+ (BOOL)isNumber:(NSString *)string;

/**
 URLEncode

 @param string string

 @return encode string
 */
+ (NSString*)encodeString:(NSString *)string;

/**
 UELDecode

 @param string string
 @return decode string
 */
+ (NSString *)decodeString:(NSString*)string;

/**
 去除首尾空格
 
 @return string
 */
- (NSString *)trim;

/**
 去掉左边空格

 @return string
 */
- (NSString *)ltrim;

/**
 去掉右边空格

 @return string
 */
- (NSString *)rtrim;

/**
 转换为NSDate
 要求格式必须是yyyy-MM-dd HH:mm:ss

 @return NSDate date
 */
- (NSDate *)toDate;

/**
 转换为NSData
 转换为UTF8编码的NSData

 @return NSData data
 */
- (NSData *)toData;

/**
 把JSON格式的NSString转换为NSDictionary

 @return NSDictionary dictionary
 */
- (NSDictionary *)toDictionary;

/**
 进行MD5加密
 eg: test -> 098f6bcd4621d373cade4e832627b4f6

 @return MD5
 */
- (NSString *)toMD5;

/**
 根据提供的最大尺寸和字体大小返回字符串展示后需要的尺寸

 @param maxSize 最大尺寸
 @param font 字体
 @return CGSize size
 */
- (CGSize)boundingRectWithSize:(CGSize)maxSize
                      withFont:(UIFont *)font;

@end
