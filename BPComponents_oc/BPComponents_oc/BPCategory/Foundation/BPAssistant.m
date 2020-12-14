//
//  BPAssistant.m
//  BPComponents
//
//  Created by wupeng on 2020/10/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "BPAssistant.h"
#import <objc/runtime.h>

@implementation BPAssistant


BOOL bp_isEmptyString(NSString * _Nullable string) {
    
    return  !([string isKindOfClass:[NSString class]]) && (string.length != 0);

}

BOOL bp_isEmptyArray(NSArray * _Nullable array) {
    
     return !([array isKindOfClass:[NSArray class]]) && (array.count != 0);
    
}

BOOL bp_isEmptyDictionary(NSDictionary * _Nullable dictionary) {
   
    return !([dictionary isKindOfClass:[NSDictionary class]]) && (dictionary.count != 0);
    
}

BOOL bp_isSelectorOfProtocol(SEL selector, Protocol *protocol) {
    unsigned int outCount = 0;
    struct objc_method_description *descriptions = protocol_copyMethodDescriptionList(protocol, NO, YES, &outCount);
    for (unsigned int i = 0; i < outCount; i++) {
        if (sel_isEqual(descriptions[i].name, selector)) {
            free(descriptions);
            return YES;
        }
    }
    
    free(descriptions);
    return NO;

}

BOOL bp_isSelectorOfClass(SEL selector, Class klass) {
    unsigned int outCount = 0;
    Method *methods = class_copyMethodList(klass, &outCount);
    for (unsigned int i = 0; i < outCount; i++) {
        Method method = methods[i];
        struct objc_method_description *methodDescription = method_getDescription(method);
        if (sel_isEqual(methodDescription->name, selector)) {
            free(methods);
            return YES;
        }
    }

    free(methods);
    return NO;

}

@end
