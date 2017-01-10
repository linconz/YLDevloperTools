//
//  UIColor+Tools.h
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Tools)

/**
 根据16进制字符串转为UIColor
 eg: #AARRGGBB or #RRGGBB

 @param string string

 @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)string;

/**
 根据16进制字符串转为UIColor,数据错误时提供默认颜色

 @param string       string
 @param defaultColor 默认颜色 [UIColor clearColor]

 @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)string withDefaultColor:(UIColor *)defaultColor;

/**
 根据16进制数字转为UIColor,提供颜色透明度

 @param hex   16进制数字
 @param alpha 透明度 默认是1

 @return UIColor
 */
+ (UIColor *)colorWithHexRRGGBB:(UInt32)hex withAlpha:(float)alpha;

/**
 根据16进制(含alpha)转为UIColor
 eg: 0x64FFFFFF

 @param hex 16进制数字

 @return UIColor
 */
+ (UIColor *)colorWithHexAARRGGBB:(UInt32)hex;
@end
