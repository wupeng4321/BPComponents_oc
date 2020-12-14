//
//  BPUIAssistant.m
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "BPUIAssistant.h"
#import <objc/runtime.h>

@implementation BPUIAssistant

CGFloat bp_screen_scale(void) {
    CGFloat scale = ([UIScreen instancesRespondToSelector:@selector(scale)] ? [UIScreen.mainScreen scale] : (1.0f));
    return scale;
}


CGFloat bp_screen_width(void) {
    CGFloat width = ([UIScreen.mainScreen bounds].size.width);
    return width;
}


CGFloat bp_screen_height(void) {
    CGFloat height = ([UIScreen.mainScreen bounds].size.height);
    return height;
}


CGFloat bp_screen_width_in_portrait(void) {
    return MIN(bp_screen_width(), bp_screen_height());
}


CGFloat bp_screen_height_in_portrait(void) {
    return MAX(bp_screen_width(), bp_screen_height());
}


CGFloat bp_screen_width_in_landscape(void) {
    return MAX(bp_screen_width(), bp_screen_height());
}


CGFloat bp_screen_height_in_landscape(void) {
    return MIN(bp_screen_width(), bp_screen_height());
}


CGFloat bp_screen_center_x(void) {
    CGFloat centerX = bp_screen_width() * 0.5f;
    return centerX;
}


CGFloat bp_pixel(void) {
    static CGFloat pixel = 1.0f;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pixel = 1.0f / bp_screen_scale();
    });
    return pixel;
}


CGFloat bp_status_bar_height(void) {
    return UIApplication.sharedApplication.statusBarFrame.size.height;
}


CGFloat bp_navigation_bar_height(void) {
    return 44.0f;
}


CGFloat bp_status_bar_and_navigation_bar_height(void) {
    return bp_status_bar_height() + bp_navigation_bar_height();
}


UIEdgeInsets bp_safe_area_insets(void) {
    if ([UIView instancesRespondToSelector:@selector(safeAreaInsets)]) {
        if (@available(iOS 11.0, *)) {
            return UIApplication.sharedApplication.delegate.window.safeAreaInsets;
        }
    }
    return UIEdgeInsetsZero;
}


CGFloat bp_safe_area_insets_top(void) {
    return bp_safe_area_insets().top;
}


CGFloat bp_safe_area_insets_left(void) {
    return bp_safe_area_insets().left;
}


CGFloat bp_safe_area_insets_bottom(void) {
    return bp_safe_area_insets().bottom;
}


CGFloat bp_safe_area_insets_right(void) {
    return bp_safe_area_insets().right;
}


UIEdgeInsets bp_screen_padding_insets(void) {
    if ([UIView instancesRespondToSelector:@selector(safeAreaInsets)]) {
        if (@available(iOS 11.0, *)) {
            UIEdgeInsets insets = UIApplication.sharedApplication.delegate.window.safeAreaInsets;
            if (insets.top <= 40.0f) {
                insets.top = 0.0f;
            }
            return insets;
        }
    }
    return UIEdgeInsetsZero;
}


CGFloat bp_screen_adaptive_float(CGFloat floatValue) {
    return bp_screen_adaptive_float_with_padding(floatValue, 0.0f);
}


CGFloat bp_screen_adaptive_float_with_padding(CGFloat floatValue, CGFloat padding) {
    CGFloat currentScreenWidth = MIN(bp_screen_width(), bp_screen_height()) - padding;
    CGFloat standardScreenWidth = 375.0f - padding;
    return floorf(floatValue / standardScreenWidth * currentScreenWidth);
}


CGPoint bp_screen_adaptive_point(CGPoint pointValue) {
    return CGPointMake(bp_screen_adaptive_float(pointValue.x), bp_screen_adaptive_float(pointValue.y));
}


CGSize bp_screen_adaptive_size(CGSize sizeValue) {
    return CGSizeMake(bp_screen_adaptive_float(sizeValue.width), bp_screen_adaptive_float(sizeValue.height));
}


CGRect bp_screen_adaptive_rect(CGRect rectValue) {
    return CGRectMake(bp_screen_adaptive_float(rectValue.origin.x), bp_screen_adaptive_float(rectValue.origin.y), bp_screen_adaptive_float(rectValue.size.width), bp_screen_adaptive_float(rectValue.size.height));
}


CGFloat bp_screen_vertical_adaptive_float_with_padding(CGFloat floatValue, CGFloat padding) {
    CGFloat currentScreenHeight = MAX(bp_screen_width(), bp_screen_height()) - padding;
    CGFloat standardScreenHeight = 667.0f - padding;
    return floorf(floatValue / standardScreenHeight * currentScreenHeight);
}

@end
