//
//  CALayer+BP.h
//  BPComponents
//
//  Created by wupeng on 2020/6/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (BP)

@property (nonatomic, assign) CGFloat bp_x;
@property (nonatomic, assign) CGFloat bp_y;
@property (nonatomic, assign) CGFloat bp_width;
@property (nonatomic, assign) CGFloat bp_height;

@property (nonatomic, assign) CGPoint bp_origin;
@property (nonatomic, assign) CGSize  bp_size;

@property (nonatomic, assign) CGFloat bp_top;
@property (nonatomic, assign) CGFloat bp_left;
@property (nonatomic, assign) CGFloat bp_bottom;
@property (nonatomic, assign) CGFloat bp_right;

@property (nonatomic, assign) CGPoint bp_center;
@property (nonatomic, assign) CGFloat bp_centerX;
@property (nonatomic, assign) CGFloat bp_centerY;

- (void)bp_setMaxX:(CGFloat)maxX;
- (void)bp_setMaxY:(CGFloat)maxY;

- (void)bp_moveXOffset:(CGFloat)xOffset;
- (void)bp_moveYOffset:(CGFloat)yOffset;

- (void)bp_moveToCenterOfSuperlayer;

- (void)bp_moveToBottom:(CGFloat)bottom;
- (void)bp_moveToRight:(CGFloat)right;

@end

NS_ASSUME_NONNULL_END
