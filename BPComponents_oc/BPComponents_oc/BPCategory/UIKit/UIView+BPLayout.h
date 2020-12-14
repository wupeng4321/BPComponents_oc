//
//  UIView+BPLayout.h
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (BPLayout)

/// 移除所有子view
- (void)bp_removeAllSubviews;

/// 添加一个数组的view
/// @param subViews subViews数组
- (void)bp_addSubviews:(NSArray *)subViews;

/// 将subview加入到当前view，并填充当前view
/// @param subview subView
- (void)bp_addAlwaysFitSubview:(UIView *)subview;

/// 将subview加入到当前view，并填充当前view
/// @param subview subview
/// @param edgeInsets 边界偏移
- (void)bp_addAlwaysFitSubview:(UIView *)subview withEdgeInsets:(UIEdgeInsets)edgeInsets;

/// 将当前view从父view带到最前面
- (void)bp_bringToFront;

/// 将当前view从父view带到最后面
- (void)bp_sendToBack;

/// frame.origin.x
@property (nonatomic) CGFloat bp_x;

/// frame.origin.y
@property (nonatomic) CGFloat bp_y;

/// frame.size.width
@property (nonatomic) CGFloat bp_width;

/// frame.size.height
@property (nonatomic) CGFloat bp_height;

/// frame.origin
@property (nonatomic) CGPoint bp_origin;

/// frame.size
@property (nonatomic) CGSize bp_size;

/**
 frame.origin.x + frame.size.width
 */
- (void)bp_setMaxX:(CGFloat)maxX;

/// frame.origin.y + frame.size.height
/// @param maxY maxY
- (void)bp_setMaxY:(CGFloat)maxY;

/// frame.origin.x + xOffset
/// @param offsetX offsetX
- (void)bp_moveToOffsetX:(CGFloat)offsetX;

/// frame.origin.y + yOffset
/// @param offsetY offsetY
- (void)bp_moveToOffsetY:(CGFloat)offsetY;

/// 移到父view的中间
- (void)bp_moveToCenterOfSuperview;

/// frame.origin.y
@property (nonatomic) CGFloat bp_top;

/// frame.origin.x
@property (nonatomic) CGFloat bp_left;

/// frame.origin.y + frame.sizhe.height
@property (nonatomic) CGFloat bp_bottom;

/// frame.origin.x + frame.sizhe.width
@property (nonatomic) CGFloat bp_right;

/// 移到父view的底部
/// @param bottom bottom
- (void)bp_moveToBottom:(CGFloat)bottom;

/// 移到父view的右侧
/// @param right 当前view的x的值
- (void)bp_moveToRight:(CGFloat)right;

/// centerX
@property (nonatomic) CGFloat bp_centerX;

/// centerY
@property (nonatomic) CGFloat bp_centerY;

/// 用于view链路上数据共享
@property (nonatomic, strong) NSDictionary *bp_userInfo;

/// 移到otherView的左边
/// @param otherView 另一个view
/// @param distance 距离
- (void)bp_attachToLeftSideOfView:(UIView *)otherView byDistance:(CGFloat)distance;

/// 移到otherView的右边
/// @param otherView 另一个view
/// @param distance 距离
- (void)bp_attachToRightSideOfView:(UIView *)otherView byDistance:(CGFloat)distance;

/**
 移到otherView的下面
 
 @param otherView 另一个view
 @param distance 距离
 */
- (void)bp_attachToBottomSideOfView:(UIView *)otherView byDistance:(CGFloat)distance;

/**
 当前view上的point转换到view的point
 */
- (CGPoint)bp_convertPoint:(CGPoint)point toViewOrWindow:(nullable UIView *)view;

/**
 view上的point转换到当前view的point
 */
- (CGPoint)bp_convertPoint:(CGPoint)point fromViewOrWindow:(nullable UIView *)view;

/**
 当前view上的rect转换到view的rect
 */
- (CGRect)bp_convertRect:(CGRect)rect toViewOrWindow:(nullable UIView *)view;

/**
 view上的rect转换到当前view的rect
 */
- (CGRect)bp_convertRect:(CGRect)rect fromViewOrWindow:(nullable UIView *)view;


/// 截屏
/// @param scale scale
- (UIImage *)bp_snapshotWithScale:(CGFloat)scale;

/// 圆角
- (void)bp_makeRoundedRectangleShape;

/// 设置边框颜色与圆角
/// @param borderColor 边框颜色
/// @param cornerRadius 圆角
- (void)bp_setBorderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;

/// 增加圆角
/// @param length length


/// 增加圆角
/// @param corners corners
/// @param radii radii
- (void)bp_addRoundingCorners:(UIRectCorner)corners withRadii:(CGFloat)radii;


/// 查找自己所在viewController
- (UIViewController *)bp_firstViewController;

///查找自己响应链上的view或viewController
- (UIResponder *)bp_responder:(Class)class;

@end

NS_ASSUME_NONNULL_END
