//
//  UIColor+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "UIColor+Tools.h"

@implementation UIColor (Tools)

+ (UIColor *)colorWithHexString:(NSString *)string
{
    return [UIColor colorWithHexString:string withDefaultColor:nil];
}

+ (UIColor *)colorWithHexString:(NSString *)string withDefaultColor:(UIColor *)defaultColor
{
    NSString *tempString = [string copy];
    if ([tempString hasPrefix:@"#"]) {
        tempString = [tempString substringFromIndex:1];
    }

    float alpha = 1.0f;
    if ([tempString length] == 8) {
        // AARRGGBB
        unsigned alphaHex = [[tempString substringToIndex:2] integerValue];
        alpha = (alphaHex & 0xFF) / 255.0;
        tempString = [tempString substringFromIndex:2];
    }
    if ([tempString length] == 6) {
        unsigned hexNum;
        [[NSScanner scannerWithString:tempString] scanHexInt:&hexNum];
        return [UIColor colorWithHexRRGGBB:hexNum withAlpha:(float)alpha];
    }
    return [UIColor clearColor];
}

+ (UIColor *)colorWithHexRRGGBB:(UInt32)hex withAlpha:(float)alpha
{
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;

    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
}

+ (UIColor *)colorWithHexAARRGGBB:(UInt32)hex
{
    int alpha = (hex >> 24) & 0xFF;
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = hex & 0xFF;

    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha / 255.0f];
}
@end
