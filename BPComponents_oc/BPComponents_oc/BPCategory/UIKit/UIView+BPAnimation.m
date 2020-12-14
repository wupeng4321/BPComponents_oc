//
//  UIView+BPAnimation.m
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "UIView+BPAnimation.h"

static NSString *bp_rotateAnimationKey = @"bp_rotateAnimationKey";

@implementation UIView (BPAnimation)

- (void)bp_rotateWithDuration:(CGFloat)duration {
    [self bp_rotateWithDuration:duration clockwisable:YES];
}

- (void)bp_rotateWithDuration:(CGFloat)duration clockwisable:(BOOL)clockwisable {
    CAAnimation *animation = [self.layer animationForKey:bp_rotateAnimationKey];
    if (animation) {
        return;
    }
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotationAnimation.fromValue = @(0.0);
    rotationAnimation.toValue = clockwisable ? @(M_PI * 2.0) : @(-M_PI * 2.0);
    rotationAnimation.duration = duration;
    rotationAnimation.repeatCount = CGFLOAT_MAX;
    rotationAnimation.removedOnCompletion = NO;
    [self.layer addAnimation:rotationAnimation forKey:bp_rotateAnimationKey];
}

- (void)bp_clearRotation {
    CAAnimation *animation = [self.layer animationForKey:bp_rotateAnimationKey];
    if (animation) {
        [self.layer removeAnimationForKey:bp_rotateAnimationKey];
    }
}

@end
