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

 @return string
 */
+ (NSString*)encodeURL:(NSString *)string;

@end
