//
//  UIView+BPLayout.m
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "UIView+BPLayout.h"
#import <objc/runtime.h>
#import <BPComponents_oc/BPUIAssistant.h>


@implementation UIView (BPLayout)

- (void)bp_removeAllSubviews {
    [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj removeFromSuperview];
    }];
}


- (void)bp_addSubviews:(NSArray *)sb {
    if ([sb count] == 0) {
        return;
    }
    
    [sb enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [self addSubview:obj];
    }];
}


- (void)bp_addAlwaysFitSubview:(UIView *)subview {
    [self bp_addAlwaysFitSubview:subview withEdgeInsets:UIEdgeInsetsZero];
}


- (void)bp_addAlwaysFitSubview:(UIView *)subview withEdgeInsets:(UIEdgeInsets)edgeInsets {
    subview.frame = CGRectMake(self.bounds.origin.x + edgeInsets.left,
                               self.bounds.origin.y + edgeInsets.top,
                               self.bounds.size.width - edgeInsets.left - edgeInsets.right,
                               self.bounds.size.height - edgeInsets.top - edgeInsets.bottom);
    if (NSClassFromString(@"NSLayoutConstraint")) {
        [subview setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:subview];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:subview
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1.0f
                                                          constant:edgeInsets.left]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:subview
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1.0f
                                                          constant:(edgeInsets.right * -1.0f)]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:subview
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0f
                                                          constant:edgeInsets.top]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:subview
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1.0f
                                                          constant:(edgeInsets.bottom * -1.0f)]];
    }
    else {
        subview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:subview];
    }
}


- (void)bp_bringToFront {
    [self.superview bringSubviewToFront:self];
}


- (void)bp_sendToBack {
    [self.superview sendSubviewToBack:self];
}


- (CGFloat)bp_x {
    return self.frame.origin.x;
}


- (void)setBp_x:(CGFloat)bp_x {
    CGRect frame = self.frame;
    frame.origin.x = bp_x;
    self.frame = frame;
}


- (CGFloat)bp_y {
    return self.frame.origin.y;
}


- (void)setBp_y:(CGFloat)bp_y {
    CGRect frame = self.frame;
    frame.origin.y = bp_y;
    self.frame = frame;
}


- (CGFloat)bp_width {
    return self.frame.size.width;
}


- (void)setBp_width:(CGFloat)bp_width {
    CGRect frame = self.frame;
    frame.size.width = bp_width;
    self.frame = frame;
}


- (CGFloat)bp_height {
    return self.frame.size.height;
}


- (void)setBp_height:(CGFloat)bp_height {
    CGRect frame = self.frame;
    frame.size.height = bp_height;
    self.frame = frame;
}


- (CGPoint)bp_origin {
    return self.frame.origin;
}


- (void)setBp_origin:(CGPoint)bp_origin {
    CGRect frame = self.frame;
    frame.origin = bp_origin;
    self.frame = frame;
}


- (CGSize)bp_size {
    return self.frame.size;
}


- (void)setBp_size:(CGSize)bp_size {
    CGRect frame = self.frame;
    frame.size = bp_size;
    self.frame = frame;
}


- (void)bp_setMaxX:(CGFloat)maxX {
    CGRect frame = self.frame;
    frame.size.width = maxX - frame.origin.x;
    self.frame = frame;
}


- (void)bp_setMaxY:(CGFloat)maxY {
    CGRect frame = self.frame;
    frame.size.height = maxY - frame.origin.y;
    self.frame = frame;
}


- (void)bp_moveToOffsetX:(CGFloat)offsetX {
    CGRect frame = self.frame;
    frame.origin.x += offsetX;
    self.frame = frame;
}


- (void)bp_moveToOffsetY:(CGFloat)offsetY {
    CGRect frame = self.frame;
    frame.origin.y += offsetY;
    self.frame = frame;
}


- (void)bp_moveToCenterOfSuperview {
    self.center = CGPointMake(CGRectGetMidX(self.superview.bounds), CGRectGetMidY(self.superview.bounds));
}


- (CGFloat)bp_top {
    return self.frame.origin.y;
}


- (void)setBp_top:(CGFloat)bp_top {
    CGRect frame = self.frame;
    frame.origin.y = bp_top;
    self.frame = frame;
}


- (CGFloat)bp_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBp_bottom:(CGFloat)bp_bottom {
    CGRect frame = self.frame;
    frame.origin.y = bp_bottom - frame.size.height;
    self.frame = frame;

}

- (void)bp_moveToBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)bp_left {
    return self.frame.origin.x;
}

- (void)setBp_left:(CGFloat)bp_left {
    CGRect frame = self.frame;
    frame.origin.x = bp_left;
    self.frame = frame;
}

- (CGFloat)bp_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setBp_right:(CGFloat)bp_right {
    CGRect frame = self.frame;
    frame.origin.x = bp_right - frame.size.width;
    self.frame = frame;
}




- (void)bp_moveToRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}


- (CGFloat)bp_centerX {
    return self.center.x;
}


- (void)setBp_centerX:(CGFloat)bp_centerX {
    self.center = CGPointMake(bp_centerX, self.center.y);
}


- (CGFloat)bp_centerY {
    return self.center.y;
}

- (void)setBp_centerY:(CGFloat)bp_centerY {
    self.center = CGPointMake(self.center.x, bp_centerY);
}

- (NSDictionary *)bp_userInfo {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setBp_userInfo:(NSDictionary *)bp_userInfo {
    objc_setAssociatedObject(self, @selector(bp_userInfo), bp_userInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)bp_attachToLeftSideOfView:(UIView *)otherView byDistance:(CGFloat)distance {
    [self bp_moveToRight:otherView.bp_left - distance];
}


- (void)bp_attachToRightSideOfView:(UIView *)otherView byDistance:(CGFloat)distance {
    [self setBp_left:otherView.bp_right + distance];
}


- (void)bp_attachToBottomSideOfView:(UIView *)otherView byDistance:(CGFloat)distance {
    [self setBp_top:otherView.bp_bottom + distance];
}


- (CGPoint)bp_convertPoint:(CGPoint)point toViewOrWindow:(UIView *)view {
    if (!view) {
        if ([self isKindOfClass:[UIWindow class]]) {
            return [((UIWindow *)self) convertPoint:point toWindow:nil];
        } else {
            return [self convertPoint:point toView:nil];
        }
    }
    
    UIWindow *from = [self isKindOfClass:[UIWindow class]] ? (id)self : self.window;
    UIWindow *to = [view isKindOfClass:[UIWindow class]] ? (id)view : view.window;
    if ((!from || !to) || (from == to)) return [self convertPoint:point toView:view];
    point = [self convertPoint:point toView:from];
    point = [to convertPoint:point fromWindow:from];
    point = [view convertPoint:point fromView:to];
    return point;
}


- (CGPoint)bp_convertPoint:(CGPoint)point fromViewOrWindow:(UIView *)view {
    if (!view) {
        if ([self isKindOfClass:[UIWindow class]]) {
            return [((UIWindow *)self) convertPoint:point fromWindow:nil];
        } else {
            return [self convertPoint:point fromView:nil];
        }
    }
    
    UIWindow *from = [view isKindOfClass:[UIWindow class]] ? (id)view : view.window;
    UIWindow *to = [self isKindOfClass:[UIWindow class]] ? (id)self : self.window;
    if ((!from || !to) || (from == to)) return [self convertPoint:point fromView:view];
    point = [from convertPoint:point fromView:view];
    point = [to convertPoint:point fromWindow:from];
    point = [self convertPoint:point fromView:to];
    return point;
}


- (CGRect)bp_convertRect:(CGRect)rect toViewOrWindow:(UIView *)view {
    if (!view) {
        if ([self isKindOfClass:[UIWindow class]]) {
            return [((UIWindow *)self) convertRect:rect toWindow:nil];
        } else {
            return [self convertRect:rect toView:nil];
        }
    }
    
    UIWindow *from = [self isKindOfClass:[UIWindow class]] ? (id)self : self.window;
    UIWindow *to = [view isKindOfClass:[UIWindow class]] ? (id)view : view.window;
    if (!from || !to) return [self convertRect:rect toView:view];
    if (from == to) return [self convertRect:rect toView:view];
    rect = [self convertRect:rect toView:from];
    rect = [to convertRect:rect fromWindow:from];
    rect = [view convertRect:rect fromView:to];
    return rect;
}


- (CGRect)bp_convertRect:(CGRect)rect fromViewOrWindow:(UIView *)view {
    if (!view) {
        if ([self isKindOfClass:[UIWindow class]]) {
            return [((UIWindow *)self) convertRect:rect fromWindow:nil];
        } else {
            return [self convertRect:rect fromView:nil];
        }
    }
    
    UIWindow *from = [view isKindOfClass:[UIWindow class]] ? (id)view : view.window;
    UIWindow *to = [self isKindOfClass:[UIWindow class]] ? (id)self : self.window;
    if ((!from || !to) || (from == to)) return [self convertRect:rect fromView:view];
    rect = [from convertRect:rect fromView:view];
    rect = [to convertRect:rect fromWindow:from];
    rect = [self convertRect:rect fromView:to];
    return rect;
}


- (UIImage *)bp_snapshotWithScale:(CGFloat)scale {
    CGSize size = self.bounds.size;
    UIGraphicsBeginImageContextWithOptions(size, YES, scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}


- (void)bp_makeRoundedRectangleShape {
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat length = MIN(width, height);
    self.layer.cornerRadius = length * 0.5f;
    self.clipsToBounds = YES;
}


- (void)bp_setBorderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius {
    if (borderColor != nil) {
        self.layer.borderColor = borderColor.CGColor;
        self.layer.borderWidth = bp_pixel();
    }
    self.layer.cornerRadius = cornerRadius;
}


- (void)bp_addTopLeftRoundingCornerWithLength:(CGFloat)length {
    [self bp_addRoundingCorners:UIRectCornerTopLeft withRadii:length];
}


- (void)bp_addRoundingCorners:(UIRectCorner)corners withRadii:(CGFloat)radii {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(radii, radii)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (UIViewController *)bp_firstViewController {
    return (UIViewController*)[self bp_responder:[UIViewController class]];
}

- (UIViewController *)bp_responder:(Class)class {
    // 遍历响应者链,返回第一个找到视图控制器
    UIResponder *responder = self;
    while ((responder = [responder nextResponder])){
        if ([responder isKindOfClass: class]){
            return (UIViewController *)responder;
        }
    }
    return nil;
}

@end
