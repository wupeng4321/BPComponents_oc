//
//  BPUtilMacro_h.h
//  BPComponents_oc
//
//  Created by wupeng on 15/11/18.
//

#ifndef BPUtilMacro_h
#define BPUtilMacro_h

/*************************************--Utills--************************************************/

#define WS(weakSelf)                __weak __typeof(&*self)weakSelf = self;

#define BPLocalString(x)        NSLocalizedString(x, nil)


#ifdef DEBUG
    #define BPDevLog(xx, ...)       NSLog(@"%s(%d):\n\t* " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
    #define BPDevLog(xx, ...)       ((void)0)
#endif

#define kStrHasValue(str)           (str && [str isKindOfClass:[NSString class]] && [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length > 0)

#define kReplaceWithEmptySpaceIfNull(str) kStrHasValue(str) ? str : @""

/************************************--Color Tool--***********************************************/
#define Color(r, g, b)              [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define ColorA(r, g, b ,a)          [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#define UIColorFromRGB(rgbValue)    [UIColor \
                                        colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                                        green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                                        blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromAlphaRGB(rgbValue,a) \
                                    [UIColor \
                                        colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                                        green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                                        blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

/*************************************--Screen Size and Device Version--**************************/

#define NLSystemVersionGreaterTanOrEqualTo(version) \
                                        ([[[UIDevice currentDevice] systemVersion] floatValue] >= version)

#define IOS8                            NLSystemVersionGreaterTanOrEqualTo(8.0)
#define IOS9                            NLSystemVersionGreaterTanOrEqualTo(9.0)
#define IOS10                           NLSystemVersionGreaterTanOrEqualTo(10.0)
#define IOS11                           NLSystemVersionGreaterTanOrEqualTo(11.0)
#define IOS12                           NLSystemVersionGreaterTanOrEqualTo(12.0)
#define IOS13                           NLSystemVersionGreaterTanOrEqualTo(13.0)
#define IOS14                           NLSystemVersionGreaterTanOrEqualTo(14.0)



#define BPKeyWindow                     [UIApplication sharedApplication].keyWindow

#define bp_appVersion                     [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#import <AdSupport/AdSupport.h>

#define bp_appAdIdentifier                [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString]


#endif /* BPUtilMacro_h */
