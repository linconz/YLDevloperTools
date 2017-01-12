//
//  NSArray+Tools.h
//  DeveloperTools
//
//  Created by zhang on 2017/1/12.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Tools)

/**
 通过安全方式获得array中的对象

 @param index index

 @return object
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

/**
 转换为NSData

 @warning 不支持自定义的NSObject对象
 @return NSData data
 */
- (NSData *)toData;

/**
 转换为json格式字符串

 @warning 不支持自定义的NSObject对象
 @return NSString string
 */
- (NSString *)toJSON;
@end

@interface NSMutableArray (Tools)

/**
 通过安全方式加入一个object到数组中

 @param object object
 */
- (void)safeAddObject:(id)object;

@end
