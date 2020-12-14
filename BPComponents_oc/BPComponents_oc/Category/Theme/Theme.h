//
//  Theme.h
//  BPComponents
//
//  Created by wupeng on 2020/5/2.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Theme : NSObject

///传入16进制色值（如0x1234fe），返回color
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithHexInteger)(NSInteger hexInteger);

///传入16进制色值色值（如0x1234fe）和alpha(0~1)，返回color
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithHexIntegerAndAlpha)(NSInteger hexInteger, CGFloat alpha);

///传入16进制色值（如@"0x1234fe"），返回color
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithHexString)(NSString *hexString);

///** 传入16进制色值（如@"0x1234fe"），返回color
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithHexStringAndAlpha)(NSString *hexString, CGFloat alpha);

///传入一个UIColor(包含UIColor的子类UIDeviceRGBCollor) 和 alpha,返回对应的UIColor
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithUIColorAndAlpha)(UIColor *color, CGFloat alpha);

//r/g/b范围0~255
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithRGB)(NSInteger r, NSInteger g, NSInteger b);

//r/g/b范围0~255 a范围0~1
@property (nonatomic, strong, class, readonly) UIColor *(^colorWithRGBA)(NSInteger r, NSInteger g, NSInteger b, CGFloat a);

/****************************************
 ********************主题色***************
 ****************************************/
///主题色 如导航 按钮颜色 0x15b374
@property (nonatomic, strong, class, readonly) UIColor *colorTheme;
///用于辅助文字信息 (如导航栏选中文字 消息对话框连接文字等) 0x0e8c5a
@property (nonatomic, strong, class, readonly) UIColor *colorThemeText;
///模块编号颜色 0x5ccc9f
@property (nonatomic, strong, class, readonly) UIColor *colorThemeLight;
///用于重要数据消息(如Tab切选中 功能连接 重点数据) 0x15b374
@property (nonatomic, strong, class, readonly) UIColor *colorThemeTextLight;
///用于辅助按钮不可用字体颜色 0xade5cf
@property (nonatomic, strong, class, readonly) UIColor *colorThemeLightDis;


/***************************************
********************常用灰色**************
****************************************/
///黑色
@property (nonatomic, strong, class, readonly) UIColor *colorBlack;
///用于一级文字信息(如商品名称 功能列表入口) 0x333333
@property (nonatomic, strong, class, readonly) UIColor *colorGrayDark;
///用于二级文字信息(如数据名称 品牌列表标题) 0x666666
@property (nonatomic, strong, class, readonly) UIColor *colorGray;
///用于说明文字信息(如输入提示 列表时间信息) 0x787878
@property (nonatomic, strong, class, readonly) UIColor *colorGrayLight;
///用于辅助文字信息(如异常文字提示 置灰样式) 0x999999
@property (nonatomic, strong, class, readonly) UIColor *colorGrayDim;
///用于一级文字信息(如商品名称 功能列表入口) 0x333333
@property (nonatomic, strong, class, readonly) UIColor *colorText;
///用于辅助文字信息(如异常文字提示 置灰样式) 0x999999
@property (nonatomic, strong, class, readonly) UIColor *colorTextDetail;
///0xf7f7f7 用于斑马线淡灰色背景
@property (nonatomic, strong, class, readonly) UIColor *colorGrayPartLight;
///用于淡灰色的背景颜色 0xf0f0f0
@property (nonatomic, strong, class, readonly) UIColor *colorGrayPale;
///背景色 0xf5f5f5
@property (nonatomic, strong, class, readonly) UIColor *colorBackground;
///模块通栏分割线 0xe0e0e0
@property (nonatomic, strong, class, readonly) UIColor *colorSeparatorLine;
///辅助分割线 0xe6e6e6
@property (nonatomic, strong, class, readonly) UIColor *colorSeparatorLineLight;
///用于辅助Label不可用字体颜色 0xcccccc
@property (nonatomic, strong, class, readonly) UIColor *colorGrayDarkLight;
///白色
@property (nonatomic, strong, class, readonly) UIColor *colorWhite;


/***************************************
********************其它颜色**************
****************************************/
///图表 提示颜色 0xff6600
@property (nonatomic, strong, class, readonly) UIColor *colorOrange;
///完成率图标颜色 0xffc8a5
@property (nonatomic, strong, class, readonly) UIColor *colorPink;
///任务栏进度颜色 0xf7ac0a
@property (nonatomic, strong, class, readonly) UIColor *colorProgress;
///用于价格数据消息 (如数据金额显示 提示文字信息 会员状态) 0xff6600
@property (nonatomic, strong, class, readonly) UIColor *colorOrangePrice;
///用于价格 异常报错消息 (如商品价格 退出文字 删除按钮) 0xff4c4c
@property (nonatomic, strong, class, readonly) UIColor *colorRed;
///用于通知的背景颜色 0x0xfff7cc
@property (nonatomic, strong, class, readonly) UIColor *colorYellowLight;
///0xffe3e6用于浅红色的背景颜色一般用于error页面
@property (nonatomic, strong, class, readonly) UIColor *colorRedLight;
///0xfde0cc 用于日历选择区域背景色展示
@property (nonatomic, strong, class, readonly) UIColor *colorPinkPartLight;
///0x97e7b7 //用于不可用按钮的颜色
@property (nonatomic, strong, class, readonly) UIColor *colorGreenLight;
///0xFAC8A5 圆形进度条前景色
@property (nonatomic, strong, class, readonly) UIColor *colorProcessTint;
///0xEBF4F0 圆形进度条背景景色
@property (nonatomic, strong, class, readonly) UIColor *colorProcessBackground;


/***************************************
********************各类字体**************
****************************************/
@property (nonatomic, strong, class, readonly) UIFont *(^font)(CGFloat size);
@property (nonatomic, strong, class, readonly) UIFont *(^boldFont)(CGFloat size);

@property (nonatomic, strong, class, readonly) UIFont *font01;
@property (nonatomic, strong, class, readonly) UIFont *font02;
@property (nonatomic, strong, class, readonly) UIFont *font03;
@property (nonatomic, strong, class, readonly) UIFont *font04;
@property (nonatomic, strong, class, readonly) UIFont *font05;
@property (nonatomic, strong, class, readonly) UIFont *font06;
@property (nonatomic, strong, class, readonly) UIFont *font07;
@property (nonatomic, strong, class, readonly) UIFont *font08;
@property (nonatomic, strong, class, readonly) UIFont *font09;
@property (nonatomic, strong, class, readonly) UIFont *font10;
@property (nonatomic, strong, class, readonly) UIFont *font11;
@property (nonatomic, strong, class, readonly) UIFont *font12;
@property (nonatomic, strong, class, readonly) UIFont *font13;
@property (nonatomic, strong, class, readonly) UIFont *font14;
@property (nonatomic, strong, class, readonly) UIFont *font15;
@property (nonatomic, strong, class, readonly) UIFont *font16;
@property (nonatomic, strong, class, readonly) UIFont *font17;
@property (nonatomic, strong, class, readonly) UIFont *font18;
@property (nonatomic, strong, class, readonly) UIFont *font19;
@property (nonatomic, strong, class, readonly) UIFont *font20;
@property (nonatomic, strong, class, readonly) UIFont *font21;
@property (nonatomic, strong, class, readonly) UIFont *font22;
@property (nonatomic, strong, class, readonly) UIFont *font23;
@property (nonatomic, strong, class, readonly) UIFont *font24;
@property (nonatomic, strong, class, readonly) UIFont *font25;
@property (nonatomic, strong, class, readonly) UIFont *font26;
@property (nonatomic, strong, class, readonly) UIFont *font27;
@property (nonatomic, strong, class, readonly) UIFont *font28;
@property (nonatomic, strong, class, readonly) UIFont *font29;
@property (nonatomic, strong, class, readonly) UIFont *font30;
@property (nonatomic, strong, class, readonly) UIFont *font31;
@property (nonatomic, strong, class, readonly) UIFont *font32;
@property (nonatomic, strong, class, readonly) UIFont *font33;
@property (nonatomic, strong, class, readonly) UIFont *font34;
@property (nonatomic, strong, class, readonly) UIFont *font35;
@property (nonatomic, strong, class, readonly) UIFont *font36;
@property (nonatomic, strong, class, readonly) UIFont *font37;
@property (nonatomic, strong, class, readonly) UIFont *font38;
@property (nonatomic, strong, class, readonly) UIFont *font39;
@property (nonatomic, strong, class, readonly) UIFont *font40;

@property (nonatomic, strong, class, readonly) UIFont *boldFont01;
@property (nonatomic, strong, class, readonly) UIFont *boldFont02;
@property (nonatomic, strong, class, readonly) UIFont *boldFont03;
@property (nonatomic, strong, class, readonly) UIFont *boldFont04;
@property (nonatomic, strong, class, readonly) UIFont *boldFont05;
@property (nonatomic, strong, class, readonly) UIFont *boldFont06;
@property (nonatomic, strong, class, readonly) UIFont *boldFont07;
@property (nonatomic, strong, class, readonly) UIFont *boldFont08;
@property (nonatomic, strong, class, readonly) UIFont *boldFont09;
@property (nonatomic, strong, class, readonly) UIFont *boldFont10;
@property (nonatomic, strong, class, readonly) UIFont *boldFont11;
@property (nonatomic, strong, class, readonly) UIFont *boldFont12;
@property (nonatomic, strong, class, readonly) UIFont *boldFont13;
@property (nonatomic, strong, class, readonly) UIFont *boldFont14;
@property (nonatomic, strong, class, readonly) UIFont *boldFont15;
@property (nonatomic, strong, class, readonly) UIFont *boldFont16;
@property (nonatomic, strong, class, readonly) UIFont *boldFont17;
@property (nonatomic, strong, class, readonly) UIFont *boldFont18;
@property (nonatomic, strong, class, readonly) UIFont *boldFont19;
@property (nonatomic, strong, class, readonly) UIFont *boldFont20;
@property (nonatomic, strong, class, readonly) UIFont *boldFont21;
@property (nonatomic, strong, class, readonly) UIFont *boldFont22;
@property (nonatomic, strong, class, readonly) UIFont *boldFont23;
@property (nonatomic, strong, class, readonly) UIFont *boldFont24;
@property (nonatomic, strong, class, readonly) UIFont *boldFont25;
@property (nonatomic, strong, class, readonly) UIFont *boldFont26;
@property (nonatomic, strong, class, readonly) UIFont *boldFont27;
@property (nonatomic, strong, class, readonly) UIFont *boldFont28;
@property (nonatomic, strong, class, readonly) UIFont *boldFont29;
@property (nonatomic, strong, class, readonly) UIFont *boldFont30;
@property (nonatomic, strong, class, readonly) UIFont *boldFont31;
@property (nonatomic, strong, class, readonly) UIFont *boldFont32;
@property (nonatomic, strong, class, readonly) UIFont *boldFont33;
@property (nonatomic, strong, class, readonly) UIFont *boldFont34;
@property (nonatomic, strong, class, readonly) UIFont *boldFont35;
@property (nonatomic, strong, class, readonly) UIFont *boldFont36;
@property (nonatomic, strong, class, readonly) UIFont *boldFont37;
@property (nonatomic, strong, class, readonly) UIFont *boldFont38;
@property (nonatomic, strong, class, readonly) UIFont *boldFont39;
@property (nonatomic, strong, class, readonly) UIFont *boldFont40;

@end

NS_ASSUME_NONNULL_END
