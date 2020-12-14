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

extern CGFloat bp_screen_scale(void);

extern CGFloat bp_screen_width(void);

extern CGFloat bp_screen_height(void);

extern CGFloat bp_screen_width_in_portrait(void);

extern CGFloat bp_screen_height_in_portrait(void);

extern CGFloat bp_screen_width_in_landscape(void);

extern CGFloat bp_screen_height_in_landscape(void);

extern CGFloat bp_screen_center_x(void);

extern CGFloat bp_pixel(void);

extern CGFloat bp_status_bar_height(void);

extern CGFloat bp_navigation_bar_height(void);

extern CGFloat bp_status_bar_and_navigation_bar_height(void);

extern UIEdgeInsets bp_safe_area_insets(void);
extern CGFloat bp_safe_area_insets_top(void);
extern CGFloat bp_safe_area_insets_left(void);
extern CGFloat bp_safe_area_insets_bottom(void);
extern CGFloat bp_safe_area_insets_right(void);

extern UIEdgeInsets bp_screen_padding_insets(void);

extern CGFloat bp_screen_adaptive_float(CGFloat floatValue);

extern CGFloat bp_screen_adaptive_float_with_padding(CGFloat floatValue, CGFloat padding);

extern CGPoint bp_screen_adaptive_point(CGPoint pointValue);

extern CGSize bp_screen_adaptive_size(CGSize sizeValue);

extern CGRect bp_screen_adaptive_rect(CGRect rectValue);

extern CGFloat bp_screen_vertical_adaptive_float_with_padding(CGFloat floatValue, CGFloat padding);

@end

NS_ASSUME_NONNULL_END
