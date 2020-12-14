//
//  CALayer+BP.m
//  BPComponents
//
//  Created by wupeng on 2020/6/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "CALayer+BP.h"


@implementation CALayer (BP)

#pragma mark - getter

- (CGFloat)bp_x {
    return self.frame.origin.x;
}

- (CGFloat)bp_y {
    return self.frame.origin.y;
}

- (CGFloat)bp_width {
    return self.frame.size.width;
}

- (CGFloat)bp_height {
    return self.frame.size.height;
}

- (CGPoint)bp_origin {
    return self.frame.origin;
}

- (CGSize)bp_size {
    return self.frame.size;
}

- (CGFloat)bp_top {
    return self.frame.origin.y;
}

- (CGFloat)bp_left {
    return self.frame.origin.x;
}

- (CGFloat)bp_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)bp_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGPoint)bp_center {
    CGFloat center_x = self.frame.origin.x + self.frame.size.width * 0.5f;
    CGFloat center_y = self.frame.origin.y + self.frame.size.height * 0.5f;
    return CGPointMake(center_x,center_y);
}

- (CGFloat)bp_centerX {
    return self.bp_center.x;
}

- (CGFloat)bp_centerY {
    return self.bp_center.y;
}

#pragma mark - setter

- (void)setBp_x:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setBp_y:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setBp_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setBp_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setBp_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (void)setBp_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setBp_top:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (void)setBp_left:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (void)setBp_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)setBp_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}


#pragma mark - methods

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

- (void)bp_moveToBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)bp_moveToRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (void)setBp_center:(CGPoint)center {
    CGRect frame = self.frame;
    frame.origin.x = center.x - frame.size.width * 0.5f;
    frame.origin.y = center.y - frame.size.height * 0.5f;
    self.frame = frame;
}

- (void)setBp_centerX:(CGFloat)centerX {
    self.bp_center = CGPointMake(centerX, self.bp_center.y);
}

- (void)setBp_centerY:(CGFloat)centerY {
    self.bp_center = CGPointMake(self.bp_center.x, centerY);
}

- (void)bp_moveXOffset:(CGFloat)xOffset {
    CGRect frame = self.frame;
    frame.origin.x += xOffset;
    self.frame = frame;
}

- (void)bp_moveYOffset:(CGFloat)yOffset {
    CGRect frame = self.frame;
    frame.origin.y += yOffset;
    self.frame = frame;
}

- (void)bp_moveToCenterOfSuperlayer {
    self.bp_center = CGPointMake(CGRectGetMidX(self.superlayer.bounds), CGRectGetMidY(self.superlayer.bounds));
}

@end
