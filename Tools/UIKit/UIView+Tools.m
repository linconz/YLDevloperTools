//
//  UIView+Tools.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/10.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "UIView+Tools.h"

@implementation UIView (Tools)

- (float)x
{
    return [self origin].x;
}

- (float)y
{
    return [self origin].y;
}

- (float)width
{
    return [self size].width;
}

- (float)height
{
    return [self size].height;
}

- (float)right
{
    return [self x] + [self width];
}

- (float)bottom
{
    return [self y] + [self height];
}

- (CGSize)size
{
    return self.frame.size;
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
