//
//  UIView+BPAnimation.h
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (BPAnimation)

/// 旋转动画
/// @param duration duration
- (void)bp_rotateWithDuration:(CGFloat)duration;

/// 旋转动画
/// @param duration duration
/// @param clockwisable 是否是顺时针
- (void)bp_rotateWithDuration:(CGFloat)duration clockwisable:(BOOL)clockwisable;

/// 清除旋转动画
- (void)bp_clearRotation;

@end

NS_ASSUME_NONNULL_END
