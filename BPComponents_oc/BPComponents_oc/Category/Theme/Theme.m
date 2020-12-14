//
//  Theme.m
//  BPComponents
//
//  Created by wupeng on 2020/5/2.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "Theme.h"

///此类用于抛砖引玉,和业务相关的主题(主要指颜色)可以自己继承重写或者自己添加,特殊字体自行添加
///颜色命名规则  kColor+颜色+深浅+(功能)+状态(dis)
///颜色 theme white black red green blue orange yellow
///深浅 无,light,dark,dim, part
///功能 text background separator detail price
///状态 无(代表enable) dis(disable)

//主题色
#define kColorTheme                       0x15b374 //主题色 如导航 按钮颜色
#define kColorThemeLight                  0x5ccc9f //模块编号颜色
#define kColorThemeText                   0x0e8c5a //用于辅助文字信息 (如导航栏选中文字 消息对话框连接文字等)
#define kColorThemeTextLight              kColorTheme //用于重要数据消息(如Tab切选中 功能连接 重点数据)
#define kColorThemeLightDis               0xade5cf //用于修改不可用button的字体颜色

//常用灰色
#define kColorBlack                       0x000000
#define kColorGrayDark                    0x333333 //用于一级文字信息(如商品名称 功能列表入口)
//#define kColorGray                        0x666666 //用于二级文字信息(如数据名称 品牌列表标题)
#define kColorGrayLight                   0x787878 //用于说明文字信息(如输入提示 列表时间信息)
#define kColorGrayDim                     0x999999 //用于辅助文字信息(如异常文字提示 置灰样式)
#define kColorGrayDarkLight               0xcccccc //用于修改不可用Label的字体颜色
#define kColorSeparatorLine               0xe0e0e0 //模块通栏分割线
#define kColorSeparatorLineLight          0xe6e6e6 //辅助分割线
#define kColorGrayPale                    0xf0f0f0 //用于淡灰色的背景颜色
#define kColorBackground                  0xf5f5f5 //背景色
#define kColorGrayPartLight               0xf7f7f7 //用于斑马线淡灰色背景
#define kColorWhite                       0xffffff


//#define kColorOrange                      0xff6600 //图表 提示颜色
#define kColorPink                        0xffc8a5 //完成率图标颜色
#define kColorProgress                    0xf7ac0a //任务栏进度颜色
#define kColorOrangePrice                 kColorOrange //用于价格数据消息 (如数据金额显示 提示文字信息 会员状态)
//#define kColorRed                         0xff4c4c //用于价格 异常报错消息 (如商品价格 退出文字 删除按钮)
#define kColorYellowLight                 0xfff7cc //用于通知的背景颜色
#define kColorRedLight                    0xffe3e6 //用于浅红色的背景颜色一般用于error页面
#define kColorPartLightPink               0xfde0cc //用于日历选择区域背景色展示
#define kColorGreenLight                  0x97e7b7 //用于不可用按钮的颜色
#define kColorProcessTint                 0xFAC8A5 //圆形进度条前景色
#define kColorProcessBackground           0xEBF4F0 //圆形进度条背景景色

#define kColorText                        kColorGrayDark
#define kColorTextDetail                  kColorGrayDim


/// system color
#define kColorBlack                         0x000000
#define kColorDarkGray                      0x555555 /// 0.333 white
#define kColorLightGray                     0xaaaaaa /// 0.667 white
#define kColorWhite                         0xffffff /// 1.0 white
#define kColorGray                          0x7f7f7f /// 0.5 white
#define kColorRed                           0xff0000 /// 1.0, 0.0, 0.0 RGB
#define kColorGreen                         0x00ff00 /// 0.0, 1.0, 0.0 RGB
#define kColorBlue                          0x0000ff /// 0.0, 0.0, 1.0 RGB
#define kColorCyan                          0x00ffff /// 0.0, 1.0, 1.0 RGB
#define kColorYellow                        0xffff00 /// 1.0, 1.0, 0.0 RGB
#define kColorMagenta                       0xff00ff /// 1.0, 0.0, 1.0 RGB
#define kColorOrange                        0xff7f00 /// 1.0, 0.5, 0.0 RGB
#define kColorPurple                        0x7f007f /// 0.5, 0.0, 0.5 RGB
#define kColorBrown                         0x996633 /// 0.6, 0.4, 0.2 RGB


@implementation Theme

+ (UIColor *)colorTheme              {return self.colorWithHexInteger(kColorTheme);}
+ (UIColor *)colorThemeText          {return self.colorWithHexInteger(kColorThemeText);}
+ (UIColor *)colorThemeLight         {return self.colorWithHexInteger(kColorThemeLight);}
+ (UIColor *)colorThemeTextLight     {return self.colorWithHexInteger(kColorThemeTextLight);}
+ (UIColor *)colorThemeLightDis      {return self.colorWithHexInteger(kColorThemeLightDis);}

+ (UIColor *)colorGrayDark           {return self.colorWithHexInteger(kColorGrayDark);}
+ (UIColor *)colorGrayLight          {return self.colorWithHexInteger(kColorGrayLight);}
+ (UIColor *)colorGrayDim            {return self.colorWithHexInteger(kColorGrayDim);}
+ (UIColor *)colorText               {return self.colorWithHexInteger(kColorText);}
+ (UIColor *)colorTextDetail         {return self.colorWithHexInteger(kColorTextDetail);}
+ (UIColor *)colorGrayPartLight      {return self.colorWithHexInteger(kColorGrayPartLight);}
+ (UIColor *)colorGrayPale           {return self.colorWithHexInteger(kColorGrayPale);}
+ (UIColor *)colorBackground         {return self.colorWithHexInteger(kColorBackground);}
+ (UIColor *)colorSeparatorLine      {return self.colorWithHexInteger(kColorSeparatorLine);}
+ (UIColor *)colorSeparatorLineLight {return self.colorWithHexInteger(kColorSeparatorLineLight);}
+ (UIColor *)colorGrayDarkLight      {return self.colorWithHexInteger(kColorGrayDarkLight);}


+ (UIColor *)colorPink               {return self.colorWithHexInteger(kColorPink);}
+ (UIColor *)colorProgress           {return self.colorWithHexInteger(kColorProgress);}
+ (UIColor *)colorOrangePrice        {return self.colorWithHexInteger(kColorOrangePrice);}
+ (UIColor *)colorYellowLight        {return self.colorWithHexInteger(kColorYellowLight);}
+ (UIColor *)colorRedLight           {return self.colorWithHexInteger(kColorRedLight);}
+ (UIColor *)colorPinkPartLight      {return self.colorWithHexInteger(kColorPartLightPink);}
+ (UIColor *)colorGreenLight         {return self.colorWithHexInteger(kColorGreenLight);}
+ (UIColor *)colorProcessTint        {return self.colorWithHexInteger(kColorProcessTint);}
+ (UIColor *)colorProcessBackground  {return self.colorWithHexInteger(kColorProcessBackground);}


/// system color
+ (UIColor *)colorBlack              {return self.colorWithHexInteger(0x000000);}
+ (UIColor *)colorDarkGray           {return self.colorWithHexInteger(0x555555);}
+ (UIColor *)colorLightGray          {return self.colorWithHexInteger(0xaaaaaa);}
+ (UIColor *)colorWhite              {return self.colorWithHexInteger(0xffffff);}
+ (UIColor *)colorGray               {return self.colorWithHexInteger(0x7f7f7f);}
+ (UIColor *)colorRed                {return self.colorWithHexInteger(0xff0000);}
+ (UIColor *)colorGreen              {return self.colorWithHexInteger(0x00ff00);}
+ (UIColor *)colorBlue               {return self.colorWithHexInteger(0x0000ff);}
+ (UIColor *)colorCyan               {return self.colorWithHexInteger(0x00ffff);}
+ (UIColor *)colorYellow             {return self.colorWithHexInteger(0xffff00);}
+ (UIColor *)colorMagenta            {return self.colorWithHexInteger(0xff00ff);}
+ (UIColor *)colorOrange             {return self.colorWithHexInteger(0xff7f00);}
+ (UIColor *)colorPurple             {return self.colorWithHexInteger(0x7f007f);}
+ (UIColor *)colorBrown              {return self.colorWithHexInteger(0x996633);}
+ (UIColor *)colorClear              {return self.colorWithHexIntegerAndAlpha(0x000000, 0);}


+ (UIFont *)font01 {return [self fontWithSize:1];}
+ (UIFont *)font02 {return [self fontWithSize:2];}
+ (UIFont *)font03 {return [self fontWithSize:3];}
+ (UIFont *)font04 {return [self fontWithSize:4];}
+ (UIFont *)font05 {return [self fontWithSize:5];}
+ (UIFont *)font06 {return [self fontWithSize:6];}
+ (UIFont *)font07 {return [self fontWithSize:7];}
+ (UIFont *)font08 {return [self fontWithSize:8];}
+ (UIFont *)font09 {return [self fontWithSize:9];}
+ (UIFont *)font10 {return [self fontWithSize:10];}
+ (UIFont *)font11 {return [self fontWithSize:11];}
+ (UIFont *)font12 {return [self fontWithSize:12];}
+ (UIFont *)font13 {return [self fontWithSize:13];}
+ (UIFont *)font14 {return [self fontWithSize:14];}
+ (UIFont *)font15 {return [self fontWithSize:15];}
+ (UIFont *)font16 {return [self fontWithSize:16];}
+ (UIFont *)font17 {return [self fontWithSize:17];}
+ (UIFont *)font18 {return [self fontWithSize:18];}
+ (UIFont *)font19 {return [self fontWithSize:19];}
+ (UIFont *)font20 {return [self fontWithSize:20];}
+ (UIFont *)font21 {return [self fontWithSize:21];}
+ (UIFont *)font22 {return [self fontWithSize:22];}
+ (UIFont *)font23 {return [self fontWithSize:23];}
+ (UIFont *)font24 {return [self fontWithSize:24];}
+ (UIFont *)font25 {return [self fontWithSize:25];}
+ (UIFont *)font26 {return [self fontWithSize:26];}
+ (UIFont *)font27 {return [self fontWithSize:27];}
+ (UIFont *)font28 {return [self fontWithSize:28];}
+ (UIFont *)font29 {return [self fontWithSize:29];}
+ (UIFont *)font30 {return [self fontWithSize:30];}
+ (UIFont *)font31 {return [self fontWithSize:31];}
+ (UIFont *)font32 {return [self fontWithSize:32];}
+ (UIFont *)font33 {return [self fontWithSize:33];}
+ (UIFont *)font34 {return [self fontWithSize:34];}
+ (UIFont *)font35 {return [self fontWithSize:35];}
+ (UIFont *)font36 {return [self fontWithSize:36];}
+ (UIFont *)font37 {return [self fontWithSize:37];}
+ (UIFont *)font38 {return [self fontWithSize:38];}
+ (UIFont *)font39 {return [self fontWithSize:39];}
+ (UIFont *)font40 {return [self fontWithSize:40];}


+ (UIFont *)boldFont01 {return [self boldFontWithSize:1];}
+ (UIFont *)boldFont02 {return [self boldFontWithSize:2];}
+ (UIFont *)boldFont03 {return [self boldFontWithSize:3];}
+ (UIFont *)boldFont04 {return [self boldFontWithSize:4];}
+ (UIFont *)boldFont05 {return [self boldFontWithSize:5];}
+ (UIFont *)boldFont06 {return [self boldFontWithSize:6];}
+ (UIFont *)boldFont07 {return [self boldFontWithSize:7];}
+ (UIFont *)boldFont08 {return [self boldFontWithSize:8];}
+ (UIFont *)boldFont09 {return [self boldFontWithSize:9];}
+ (UIFont *)boldFont10 {return [self boldFontWithSize:10];}
+ (UIFont *)boldFont11 {return [self boldFontWithSize:11];}
+ (UIFont *)boldFont12 {return [self boldFontWithSize:12];}
+ (UIFont *)boldFont13 {return [self boldFontWithSize:13];}
+ (UIFont *)boldFont14 {return [self boldFontWithSize:14];}
+ (UIFont *)boldFont15 {return [self boldFontWithSize:15];}
+ (UIFont *)boldFont16 {return [self boldFontWithSize:16];}
+ (UIFont *)boldFont17 {return [self boldFontWithSize:17];}
+ (UIFont *)boldFont18 {return [self boldFontWithSize:18];}
+ (UIFont *)boldFont19 {return [self boldFontWithSize:19];}
+ (UIFont *)boldFont20 {return [self boldFontWithSize:20];}
+ (UIFont *)boldFont21 {return [self boldFontWithSize:21];}
+ (UIFont *)boldFont22 {return [self boldFontWithSize:22];}
+ (UIFont *)boldFont23 {return [self boldFontWithSize:23];}
+ (UIFont *)boldFont24 {return [self boldFontWithSize:24];}
+ (UIFont *)boldFont25 {return [self boldFontWithSize:25];}
+ (UIFont *)boldFont26 {return [self boldFontWithSize:26];}
+ (UIFont *)boldFont27 {return [self boldFontWithSize:27];}
+ (UIFont *)boldFont28 {return [self boldFontWithSize:28];}
+ (UIFont *)boldFont29 {return [self boldFontWithSize:29];}
+ (UIFont *)boldFont30 {return [self boldFontWithSize:30];}
+ (UIFont *)boldFont31 {return [self boldFontWithSize:31];}
+ (UIFont *)boldFont32 {return [self boldFontWithSize:32];}
+ (UIFont *)boldFont33 {return [self boldFontWithSize:33];}
+ (UIFont *)boldFont34 {return [self boldFontWithSize:34];}
+ (UIFont *)boldFont35 {return [self boldFontWithSize:35];}
+ (UIFont *)boldFont36 {return [self boldFontWithSize:36];}
+ (UIFont *)boldFont37 {return [self boldFontWithSize:37];}
+ (UIFont *)boldFont38 {return [self boldFontWithSize:38];}
+ (UIFont *)boldFont39 {return [self boldFontWithSize:39];}
+ (UIFont *)boldFont40 {return [self boldFontWithSize:40];}


static inline NSUInteger hexStrToInt(NSString *str) {
    uint32_t result = 0;
    sscanf([str UTF8String], "%X", &result);
    return result;
}

+ (UIColor * _Nonnull (^)(UIColor * _Nonnull, CGFloat))colorWithUIColorAndAlpha {
    return ^(UIColor *color, CGFloat alpha) {
        return [color colorWithAlphaComponent:alpha];
    };
}

+ (UIColor *(^)(NSInteger))colorWithHexInteger {
    return ^(NSInteger hexInteger) {
        return self.colorWithHexIntegerAndAlpha(hexInteger, 1.0);
    };
}

+ (UIColor *(^)(NSInteger, CGFloat))colorWithHexIntegerAndAlpha {
    return ^(NSInteger hexInteger, CGFloat alpha) {
        return [UIColor colorWithRed:(((hexInteger & 0xFF0000) >> 16)) / 255.0
                               green:(((hexInteger & 0x00FF00) >> 8)) / 255.0
                                blue:(((hexInteger & 0x0000FF) >> 0)) / 255.0
                               alpha:alpha];
    };
}

+ (UIColor *(^)(NSString *))colorWithHexString {
    return ^(NSString *hexString) {
        return self.colorWithHexStringAndAlpha(hexString, 1.0);
    };
}

+ (UIColor *(^)(NSString *, CGFloat))colorWithHexStringAndAlpha {
    return ^(NSString *hexString, CGFloat alpha) {
        CGFloat r, g, b, a;
        if (hexStrToRGBA(hexString, &r, &g, &b, &a)) {
            return [UIColor colorWithRed:r green:g blue:b alpha:alpha];
        }
        return (UIColor *)nil;
    };
}

+ (UIColor *(^)(NSInteger, NSInteger, NSInteger))colorWithRGB {
    return ^(NSInteger r, NSInteger g, NSInteger b) {
        return self.colorWithRGBA(r, g, b, 1.0);
    };
}

+ (UIColor *(^)(NSInteger, NSInteger, NSInteger, CGFloat))colorWithRGBA {
    return ^(NSInteger r, NSInteger g, NSInteger b, CGFloat a) {
        return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
    };
}

static BOOL hexStrToRGBA(NSString *str,
                         CGFloat *r, CGFloat *g, CGFloat *b, CGFloat *a) {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    str = [str stringByTrimmingCharactersInSet:set];
    str = [str uppercaseString];
    if ([str hasPrefix:@"#"]) {
        str = [str substringFromIndex:1];
    } else if ([str hasPrefix:@"0X"]) {
        str = [str substringFromIndex:2];
    }
    
    NSUInteger length = [str length];
    //         RGB            RGBA          RRGGBB        RRGGBBAA
    if (length != 3 && length != 4 && length != 6 && length != 8) {
        return NO;
    }
    
    //RGB,RGBA,RRGGBB,RRGGBBAA
    if (length < 5) {
        *r = hexStrToInt([str substringWithRange:NSMakeRange(0, 1)]) / 255.0f;
        *g = hexStrToInt([str substringWithRange:NSMakeRange(1, 1)]) / 255.0f;
        *b = hexStrToInt([str substringWithRange:NSMakeRange(2, 1)]) / 255.0f;
        if (length == 4)  *a = hexStrToInt([str substringWithRange:NSMakeRange(3, 1)]) / 255.0f;
        else *a = 1;
    } else {
        *r = hexStrToInt([str substringWithRange:NSMakeRange(0, 2)]) / 255.0f;
        *g = hexStrToInt([str substringWithRange:NSMakeRange(2, 2)]) / 255.0f;
        *b = hexStrToInt([str substringWithRange:NSMakeRange(4, 2)]) / 255.0f;
        if (length == 8) *a = hexStrToInt([str substringWithRange:NSMakeRange(6, 2)]) / 255.0f;
        else *a = 1;
    }
    return YES;
}

+ (UIFont *(^)(CGFloat))font {
    return ^(CGFloat size) {
        return [self fontWithSize:size];
    };
}

+ (UIFont *)fontWithSize:(CGFloat)size {
    return [UIFont systemFontOfSize:size];
}

+ (UIFont *(^)(CGFloat))boldFont {
    return ^(CGFloat size) {
        return [self boldFontWithSize:size];
    };
}

+ (UIFont *)boldFontWithSize:(CGFloat)size {
    return [UIFont boldSystemFontOfSize:size];
}

@end
