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
 获取view的x, 实际获取的是 view.frame.origin.x
 */
@property (nonatomic, assign) float x;

/**
 获取view的y, 实际获取的是 view.frame.origin.y
 */
@property (nonatomic, assign) float y;

/**
 获取view的width, 实际获取的是 view.frame.size.width
 */
@property (nonatomic, assign) float width;

/**
 获取view的height, 实际获取的是 view.frame.size.height
 */
@property (nonatomic, assign) float height;

/**
 获取view的right, 实际获取的是 view.frame.origin.x + view.frame.size.width
 对right赋值时, 会相对于父view设置 view.frame.size.width
 */
@property (nonatomic, assign) float right;

/**
 获取view的bottom, 实际获取的是 view.frame.origin.y + view.frame.size.height
 对bottom赋值时, 会相对于父view设置 view.frame.size.height
 */
@property (nonatomic, assign) float bottom;

/**
 获取view的size, 实际获取的是 view.frame.size
 */
@property (nonatomic, assign) CGSize size;

/**
 获取view的origin, 实际获取的是 view.frame.origin
 */
@property (nonatomic, assign) CGPoint origin;

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
