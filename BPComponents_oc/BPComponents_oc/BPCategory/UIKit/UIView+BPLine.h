//
//  UIView+BPLine.h
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (BPLine)

@property (nonatomic, strong) UIColor *topLineColor;

@property (nonatomic, strong) UIColor *bottomLineColor;
///
@property (nonatomic, strong) UIColor *defaultLineColor;

- (UIView *)addTopLineFull;
- (UIView *)addTopLineLeft:(CGFloat)left;
- (UIView *)addTopLineRight:(CGFloat)right;
- (UIView *)addTopLineLeftAndRight:(CGFloat)padding;
- (UIView *)addTopLineLeft:(CGFloat)left
                     right:(CGFloat)right;

- (UIView *)addBottomLineFull;
- (UIView *)addBottomLineLeft:(CGFloat)left;
- (UIView *)addBottomLineRight:(CGFloat)right;
- (UIView *)addBottomLineLeftAndRight:(CGFloat)padding;
- (UIView *)addBottomLineLeft:(CGFloat)left
                        right:(CGFloat)right;

- (UIView *)addTopSeparatorLine;
- (UIView *)addTopSeparatorLineWithPadding:(CGFloat)padding;

- (UIView *)addBottomSeparatorLine;
- (UIView *)addBottomSeparatorLineWithPadding:(CGFloat)padding;

- (void)hiddenTopLine;
- (void)hiddenBottomLine;

@end

NS_ASSUME_NONNULL_END
