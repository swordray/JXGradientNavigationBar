//
//  JXGradientNavigationBar.m
//  JXGradientNavigationBar
//
//  Created by Jianqiu Xiao on 09/07/15.
//  Copyright (c) 2015 Jianqiu Xiao. All rights reserved.
//

#import "JXGradientNavigationBar.h"

@implementation JXGradientNavigationBar

@synthesize barTintGradientColors = _barTintGradientColors;

- (void)setBarTintGradientColors:(NSArray *)barTintGradientColors
{
    _barTintGradientColors = barTintGradientColors;
    [self setBackgroundImage:[self gradientBackgroundImage:barTintGradientColors height:64] forBarMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:[self gradientBackgroundImage:barTintGradientColors height:32] forBarMetrics:UIBarMetricsCompact];
}

- (UIImage *)gradientBackgroundImage:(NSArray *)colors height:(CGFloat)height
{
    CGFloat components[colors.count * 4];
    for (int i = 0; i < colors.count; i++) {
        CGFloat red, green, blue, alpha;
        [colors[i] getRed:&red green:&green blue:&blue alpha:&alpha];
        components[i * 4] = red;
        components[i * 4 + 1] = green;
        components[i * 4 + 2] = blue;
        components[i * 4 + 3] = alpha;
    }
    CGSize size = CGSizeMake(1, height * [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(size, YES, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(space, components, NULL, colors.count);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(0, size.height), 0);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
