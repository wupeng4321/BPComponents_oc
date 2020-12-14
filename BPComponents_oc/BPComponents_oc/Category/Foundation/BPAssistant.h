//
//  BPAssistant.h
//  BPComponents
//
//  Created by wupeng on 2020/10/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BPAssistant : NSObject

extern BOOL bp_isEmptyString(NSString * _Nullable string);
extern BOOL bp_isEmptyArray(NSArray * _Nullable array);
extern BOOL bp_isEmptyDictionary(NSDictionary * _Nullable dictionary);
extern BOOL bp_isSelectorOfProtocol(SEL selector, Protocol *protocol);
extern BOOL bp_isSelectorOfClass(SEL selector, Class klass);

@end

NS_ASSUME_NONNULL_END
