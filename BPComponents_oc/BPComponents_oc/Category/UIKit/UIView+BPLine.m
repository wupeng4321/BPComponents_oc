//
//  UIView+BPLine.m
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "UIView+BPLine.h"
//#import "SNTheme.h"
#import <objc/runtime.h>
#import <Masonry/Masonry.h>

static char topLineKey;
static char bottomLineKey;

static char topLineColorKey;
static char bottomLineColorKey;
static char defaultLineColorKey;


@implementation UIView (BPLine)

- (UIView *)addTopLineFull {
    return [self addTopLineLeft:0 right:0];
}

- (UIView *)addTopLineLeft:(CGFloat)left {
    return [self addTopLineLeft:left right:0];
}

- (UIView *)addTopLineRight:(CGFloat)right {
    return [self addBottomLineLeft:0 right:right];
}

- (UIView *)addTopLineLeftAndRight:(CGFloat)padding {
    return [self addTopLineLeft:padding right:padding];
}

- (UIView *)addTopLineLeft:(CGFloat)left right:(CGFloat)right {
    UIView *line = objc_getAssociatedObject(self, &topLineKey);
    if (line == nil) {
        line = [self defaultLine];
        objc_setAssociatedObject(self, &topLineKey, line, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    if (self.topLineColor != nil) {
        line.backgroundColor = self.topLineColor;
    }
    line.hidden = NO;
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(left);
        make.right.offset(right);
        make.top.offset(0);
        make.height.mas_equalTo(0.5f);
    }];
    return line;
}

- (UIView *)addBottomLineFull {
    return [self addBottomLineLeft:0 right:0];
}

- (UIView *)addBottomLineLeft:(CGFloat)left {
    return [self addBottomLineLeft:left right:0];
}

- (UIView *)addBottomLineRight:(CGFloat)right {
    return [self addBottomLineLeft:0 right:right];
}

- (UIView *)addBottomLineLeftAndRight:(CGFloat)padding {
    return [self addBottomLineLeft:padding right:padding];
}

- (UIView *)addBottomLineLeft:(CGFloat)left right:(CGFloat)right {
    UIView *line = objc_getAssociatedObject(self, &bottomLineKey);
    if (line == nil) {
        line = [self defaultLine];
        objc_setAssociatedObject(self, &bottomLineKey, line, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    if (self.bottomLineColor != nil) {
        line.backgroundColor = self.bottomLineColor;
    }
    line.hidden = NO;
    [self addSubview:line];
    [line mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(left);
        make.right.offset(right);
        make.bottom.offset(0);
        make.height.mas_equalTo(0.5f);
    }];
    return line;
}

- (UIView *)defaultLine; {
    UIView *line = [[UIView alloc] initWithFrame:CGRectZero];
    UIColor *defaultLineColor = self.defaultLineColor;
    if (!self.defaultLineColor) {
        if (@available(iOS 13.0, *)) {
            defaultLineColor = UIColor.separatorColor;
        } else {
            
        }
    }
    line.backgroundColor = defaultLineColor;
    return line;
}

- (void)hiddenTopLine {
    UIView *line = objc_getAssociatedObject(self, &topLineKey);
    line.hidden = YES;
}

- (void)hiddenBottomLine {
    UIView *line = objc_getAssociatedObject(self, &bottomLineKey);
    line.hidden = YES;
}


#pragma mark - setter & getter
- (void)setTopLineColor:(UIColor *)topLineColor {
    objc_setAssociatedObject(self, &topLineColorKey, topLineColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setBottomLineColor:(UIColor *)bottomLineColor {
    objc_setAssociatedObject(self, &bottomLineColorKey, bottomLineColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setDefaultLineColor:(UIColor *)defaultLineColor {
    objc_setAssociatedObject(self, &defaultLineColorKey, defaultLineColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)topLineColor {
    return objc_getAssociatedObject(self, &topLineColorKey);
}

- (UIColor *)bottomLineColor {
    return objc_getAssociatedObject(self, &bottomLineColorKey);
}

- (UIColor *)defaultLineColor {
    return objc_getAssociatedObject(self, &defaultLineColorKey);
}

- (UIView *)addTopSeparatorLine {
    return [self addTopLineFull];
}

- (UIView *)addTopSeparatorLineWithPadding:(CGFloat)padding {
    return [self addTopLineLeftAndRight:padding];
}

- (UIView *)addBottomSeparatorLine {
    return [self addBottomLineFull];
}

- (UIView *)addBottomSeparatorLineWithPadding:(CGFloat)padding {
    return [self addBottomLineLeftAndRight:padding];
}

@end
