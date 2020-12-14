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

CGFloat bp_screenScale(void) {
    CGFloat scale = ([UIScreen instancesRespondToSelector:@selector(scale)] ? [UIScreen.mainScreen scale] : (1.0f));
    return scale;
}


CGFloat bp_screenWidth(void) {
    CGFloat width = ([UIScreen.mainScreen bounds].size.width);
    return width;
}


CGFloat bp_screenHeight(void) {
    CGFloat height = ([UIScreen.mainScreen bounds].size.height);
    return height;
}


CGFloat bp_screenWidthInPortrait(void) {
    return MIN(bp_screenWidth(), bp_screenHeight());
}


CGFloat bp_screenHeightInPortrait(void) {
    return MAX(bp_screenWidth(), bp_screenHeight());
}


CGFloat bp_screenWidthInLandscape(void) {
    return MAX(bp_screenWidth(), bp_screenHeight());
}


CGFloat bp_screenHeightInLandscape(void) {
    return MIN(bp_screenWidth(), bp_screenHeight());
}


CGFloat bp_screenCenterX(void) {
    CGFloat centerX = bp_screenWidth() * 0.5f;
    return centerX;
}


CGFloat bp_pixel(void) {
    static CGFloat pixel = 1.0f;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pixel = 1.0f / bp_screenScale();
    });
    return pixel;
}


CGFloat bp_statusBarHeight(void) {
    return UIApplication.sharedApplication.statusBarFrame.size.height;
}


CGFloat bp_navigationBarHeight(void) {
    return 44.0f;
}


CGFloat bp_statusBarAndNavigationBarHeight(void) {
    return bp_statusBarHeight() + bp_navigationBarHeight();
}


UIEdgeInsets bp_safeAreaInsets(void) {
    if ([UIView instancesRespondToSelector:@selector(safeAreaInsets)]) {
        if (@available(iOS 11.0, *)) {
            return UIApplication.sharedApplication.delegate.window.safeAreaInsets;
        }
    }
    return UIEdgeInsetsZero;
}


CGFloat bp_safeAreaInsetsTop(void) {
    return bp_safeAreaInsets().top;
}


CGFloat bp_safeAreaInsetsLeft(void) {
    return bp_safeAreaInsets().left;
}


CGFloat bp_safeAreaInsetsBottom(void) {
    return bp_safeAreaInsets().bottom;
}


CGFloat bp_safeAreaInsetsRight(void) {
    return bp_safeAreaInsets().right;
}


UIEdgeInsets bp_screenPaddingInsets(void) {
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


CGFloat bp_screenAdaptiveFloat(CGFloat floatValue) {
    return bp_screenAdaptiveFloatWithPadding(floatValue, 0.0f);
}


CGFloat bp_screenAdaptiveFloatWithPadding(CGFloat floatValue, CGFloat padding) {
    CGFloat currentScreenWidth = MIN(bp_screenWidth(), bp_screenHeight()) - padding;
    CGFloat standardScreenWidth = 375.0f - padding;
    return floorf(floatValue / standardScreenWidth * currentScreenWidth);
}


CGPoint bp_screenAdaptivePoint(CGPoint pointValue) {
    return CGPointMake(bp_screenAdaptiveFloat(pointValue.x), bp_screenAdaptiveFloat(pointValue.y));
}


CGSize bp_screenAdaptiveSize(CGSize sizeValue) {
    return CGSizeMake(bp_screenAdaptiveFloat(sizeValue.width), bp_screenAdaptiveFloat(sizeValue.height));
}


CGRect bp_screenAdaptiveRect(CGRect rectValue) {
    return CGRectMake(bp_screenAdaptiveFloat(rectValue.origin.x), bp_screenAdaptiveFloat(rectValue.origin.y), bp_screenAdaptiveFloat(rectValue.size.width), bp_screenAdaptiveFloat(rectValue.size.height));
}


CGFloat bp_screenVerticalAdaptiveFloatWithPadding(CGFloat floatValue, CGFloat padding) {
    CGFloat currentScreenHeight = MAX(bp_screenWidth(), bp_screenHeight()) - padding;
    CGFloat standardScreenHeight = 667.0f - padding;
    return floorf(floatValue / standardScreenHeight * currentScreenHeight);
}

UIWindow * _Nullable bp_keyWindow(void) {
    if (@available(iOS 13.0, *)) {
        for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
            if (scene.activationState != UISceneActivationStateForegroundActive) {
                continue;
            }
            if (![scene isKindOfClass:UIWindowScene.class]) {
                continue;
            }
            for (UIWindow *window in ((UIWindowScene *)scene).windows) {
                if (window.isKeyWindow) {
                    return window;
                }
            }
        }
    }
    
    if ([[UIApplication sharedApplication].delegate respondsToSelector:@selector(window)]) {
        return [[UIApplication sharedApplication].delegate window];
    }
    
    for (UIWindow *window in [UIApplication sharedApplication].windows) {
        if (window.isKeyWindow) {
            return window;
        }
    }
    
    return nil;
}


UIViewController * _Nullable bp_topViewController(void) {
    return bp_topViewControllerOfWindow(bp_keyWindow());
}

UIViewController * _Nullable bp_topViewControllerOfWindow(UIWindow *_Nullable window) {
    if (window == nil) {
        return nil;
    }
    UIViewController *result = window.rootViewController;
    
    while (result != nil) {
        if (result.presentedViewController != nil && !result.presentedViewController.isBeingDismissed) {
            result = result.presentedViewController;
            continue;
        }
        if ([result isKindOfClass:UITabBarController.class]) {
            UITabBarController *tabBarController = (UITabBarController *)result;
            UIViewController *selectedViewController = tabBarController.selectedViewController;
            if (selectedViewController == nil) {
                break;
            }
            result = selectedViewController;
            continue;
        }
        if ([result isKindOfClass:UINavigationController.class]) {
            UINavigationController *navigationController = (UINavigationController *)result;
            UIViewController *topViewController = navigationController.topViewController;
            if (topViewController == nil) {
                break;
            }
            result = topViewController;
            continue;
        }
        break;
    }
    
    return result;
}

@end
