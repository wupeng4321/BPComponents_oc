//
//  BPUIAssistant.h
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BPUIAssistant : NSObject

extern CGFloat bp_screenScale(void);

extern CGFloat bp_screenWidth(void);

extern CGFloat bp_screenHeight(void);

extern CGFloat bp_screenWidthInPortrait(void);

extern CGFloat bp_screenHeightInPortrait(void);

extern CGFloat bp_screenWidthInLandscape(void);

extern CGFloat bp_screenHeightInLandscape(void);

extern CGFloat bp_screenCenterX(void);

extern CGFloat bp_pixel(void);

extern CGFloat bp_statusBarHeight(void);

extern CGFloat bp_navigationBarHeight(void);

extern CGFloat bp_statusBarAndNavigationBarHeight(void);

extern UIEdgeInsets bp_safeAreaInsets(void);
extern CGFloat bp_safeAreaInsetsTop(void);
extern CGFloat bp_safeAreaInsetsLeft(void);
extern CGFloat bp_safeAreaInsetsBottom(void);
extern CGFloat bp_safeAreaInsetsRight(void);

extern UIEdgeInsets bp_screenPaddingInsets(void);

extern CGFloat bp_screenAdaptiveFloat(CGFloat floatValue);

extern CGFloat bp_screenAdaptiveFloatWithPadding(CGFloat floatValue, CGFloat padding);

extern CGPoint bp_screenAdaptivePoint(CGPoint pointValue);

extern CGSize bp_screenAdaptiveSize(CGSize sizeValue);

extern CGRect bp_screenAdaptiveRect(CGRect rectValue);

extern CGFloat bp_screenVerticalAdaptiveFloatWithPadding(CGFloat floatValue, CGFloat padding);

@end

NS_ASSUME_NONNULL_END
