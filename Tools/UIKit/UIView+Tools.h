//
//  UIView+Tools.h
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Tools)

/**
 获取view的x

 @return view.frame.origin.x
 */
- (float)x;

/**
 获取view的y

 @return view.frame.origin.y
 */
- (float)y;

/**
 获取view的width

 @return view.frame.size.width
 */
- (float)width;

/**
 获取view的height

 @return view.frame.size.height
 */
- (float)height;

/**
 获取view的 x + 宽度
 right = view.left + view.width

 @return right
 */
- (float)right;

/**
 获取view的 y + 高度
 bottom = view.top + view.height

 @return bottom
 */
- (float)bottom;

/**
 获取view的size

 @return view.frame.size
 */
- (CGSize)size;

/**
 获取view的origin

 @return view.frame.origin
 */
- (CGPoint)origin;

/**
 UIView转换为UIImage

 @return image
 */
- (UIImage *)toImage;

/**
 根据rect裁剪UIView的区域,转换为UIImage

 @param rect 裁剪区域

 @return image
 */
- (UIImage *)toImageWithRect:(CGRect)rect;
@end
