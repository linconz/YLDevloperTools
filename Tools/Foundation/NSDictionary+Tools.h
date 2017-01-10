//
//  NSDictionary+Tools.h
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Tools)

/**
 检查是否是合法的NSDictionary

 @param dict dictionary

 @return BOOL value
 */
+ (BOOL)isLegalDictionary:(NSDictionary *)dict;

/**
 检查是否是空的NSDictionary

 @param dict dictionary

 @return BOOL value
 */
+ (BOOL)isEmptyDictionary:(NSDictionary *)dict;

/**
 通过安全方式获得一个对象

 @param key string

 @return id object
 */
- (id)safeObjectForKey:(NSString *)key;

/**
 通过安全方式获得一个NSString

 @param key string

 @return NSString string
 */
- (NSString *)safeValueForKey:(NSString *)key;

/**
 转为JSON格式的NSData

 @return NSData data
 */
- (NSData *)toData;

/**
 转为JSON格式的NSString

 @return string
 */
- (NSString *)toString;

@end

@interface NSMutableDictionary (Tools)

/**
 通过安全方式设置一个object

 @param object object
 @param key    string

 @return BOOL
 */
- (BOOL)safeSetObject:(id)object forKey:(NSString *)key;

/**
 通过安全方式移除一个object

 @param key string

 @return BOOL
 */
- (BOOL)safeRemoveObjectForKey:(NSString *)key;

@end
