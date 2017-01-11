//
//  UIView+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "UIView+Tools.h"

@implementation UIView (Tools)

- (void)setX:(float)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (float)x
{
    return [self origin].x;
}

- (void)setY:(float)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (float)y
{
    return [self origin].y;
}

- (void)setWidth:(float)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (float)width
{
    return [self size].width;
}

- (void)setHeight:(float)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (float)height
{
    return [self size].height;
}

- (void)setRight:(float)right
{
    // 获取父view.frame
    float superViewWidth = self.superview.width;
    // 再用父view.width减掉right
    CGRect frame = self.frame;
    frame.size.width = superViewWidth - right;
    self.frame = frame;
}

- (float)right
{
    return [self x] + [self width];
}

- (void)setBottom:(float)bottom
{
    // 获取父view.frame
    float superViewHeight = self.superview.height;
    // 再用父view.height减掉bottom
    CGRect frame = self.frame;
    frame.size.height = superViewHeight - bottom;
    self.frame = frame;
}

- (float)bottom
{
    return [self y] + [self height];
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

- (UIImage *)toImage
{
    return [self toImageWithRect:self.bounds];
}

- (UIImage *)toImageWithRect:(CGRect)rect
{
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7) {
        [self drawViewHierarchyInRect:rect afterScreenUpdates:YES];
    } else {
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    }
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
