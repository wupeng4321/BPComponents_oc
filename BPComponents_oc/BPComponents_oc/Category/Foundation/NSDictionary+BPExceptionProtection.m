//
//  NSDictionary+BPExceptionProtection.m
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "NSDictionary+BPExceptionProtection.h"
#import <objc/runtime.h>


@implementation NSDictionary (BPExceptionProtection)

+ (void)load {
    [super load];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class dictionaryMClass = objc_getClass("__NSDictionaryM");
        SEL originalSelectorDictionaryM = @selector(setObject:forKey:);
        SEL swizzledSelectorDictionaryM = @selector(bp_safeDictionaryMSetObject:forKey:);
        method_exchangeImplementations(class_getInstanceMethod(dictionaryMClass, originalSelectorDictionaryM), class_getInstanceMethod(dictionaryMClass, swizzledSelectorDictionaryM));
        SEL originalSetObjectForKeyedSubscriptSelectorDictionaryM = @selector(setObject:forKeyedSubscript:);
        SEL swizzledSetObjectForKeyedSubscriptSelectorDictionaryM = @selector(bp_safeDictionaryMSetObject:forKeyedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(dictionaryMClass, originalSetObjectForKeyedSubscriptSelectorDictionaryM), class_getInstanceMethod(dictionaryMClass, swizzledSetObjectForKeyedSubscriptSelectorDictionaryM));
        SEL originalInstanceInitSelectorDictionaryM = @selector(initWithObjectsAndKeys:);
        SEL swizzledInstanceInitSelectorDictionaryM = @selector(bp_initWithObjectsAndKeysSafeDicionary:);
        method_exchangeImplementations(class_getInstanceMethod(dictionaryMClass, originalInstanceInitSelectorDictionaryM), class_getInstanceMethod(dictionaryMClass, swizzledInstanceInitSelectorDictionaryM));
        SEL originalClassInitSelectorDictionaryM = @selector(dictionaryWithObjectsAndKeys:);
        SEL swizzledClassInitSelectorDictionaryM = @selector(bp_dictionaryWithObjectsAndKeysSafeDicdionary:);
        method_exchangeImplementations(class_getClassMethod(dictionaryMClass, originalClassInitSelectorDictionaryM), class_getClassMethod(dictionaryMClass, swizzledClassInitSelectorDictionaryM));
        
        
        Class placeholderDictionaryClass = objc_getClass("__NSPlaceholderDictionary");
        SEL originalSelectorPlaceholderDictionary = @selector(setObject:forKey:);
        SEL swizzledSelectorPlaceholderDictionary = @selector(bp_safePlaceholderDictionarySetObject:forKey:);
        method_exchangeImplementations(class_getInstanceMethod(placeholderDictionaryClass, originalSelectorPlaceholderDictionary), class_getInstanceMethod(placeholderDictionaryClass, swizzledSelectorPlaceholderDictionary));
        SEL originalSetObjectForKeyedSubscriptSelectorPlaceholderDictionary = @selector(setObject:forKeyedSubscript:);
        SEL swizzledSetObjectForKeyedSubscriptSelectorPlaceholderDictionary = @selector(bp_safePlaceholderDictionarySetObject:forKeyedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(placeholderDictionaryClass, originalSetObjectForKeyedSubscriptSelectorPlaceholderDictionary), class_getInstanceMethod(placeholderDictionaryClass, swizzledSetObjectForKeyedSubscriptSelectorPlaceholderDictionary));
        SEL originalInstanceInitSelectorPlaceholderDictionary = @selector(initWithObjectsAndKeys:);
        SEL swizzledInstanceInitSelectorPlaceholderDictionary = @selector(bp_initWithObjectsAndKeysSafeDicionary:);
        method_exchangeImplementations(class_getInstanceMethod(placeholderDictionaryClass, originalInstanceInitSelectorPlaceholderDictionary), class_getInstanceMethod(placeholderDictionaryClass, swizzledInstanceInitSelectorPlaceholderDictionary));
        SEL originalClassInitSelectorPlaceholderDictionary = @selector(dictionaryWithObjectsAndKeys:);
        SEL swizzledClassInitSelectorPlaceholderDictionary = @selector(bp_dictionaryWithObjectsAndKeysSafeDicdionary:);
        method_exchangeImplementations(class_getClassMethod(placeholderDictionaryClass, originalClassInitSelectorPlaceholderDictionary), class_getClassMethod(placeholderDictionaryClass, swizzledClassInitSelectorPlaceholderDictionary));
        
        Class dictionaryIClass = objc_getClass("__NSDictionaryI");
        SEL originalInstanceInitSelectorDictionaryI = @selector(initWithObjectsAndKeys:);
        SEL swizzledInstanceInitSelectorDictionaryI = @selector(bp_initWithObjectsAndKeysSafeDicionary:);
        method_exchangeImplementations(class_getInstanceMethod(dictionaryIClass, originalInstanceInitSelectorDictionaryI), class_getInstanceMethod(dictionaryIClass, swizzledInstanceInitSelectorDictionaryI));
        SEL originalClassInitSelectorDictionaryI = @selector(dictionaryWithObjectsAndKeys:);
        SEL swizzledClassInitSelectorDictionaryI = @selector(bp_dictionaryWithObjectsAndKeysSafeDicdionary:);
        method_exchangeImplementations(class_getClassMethod(dictionaryIClass, originalClassInitSelectorDictionaryI), class_getClassMethod(dictionaryIClass, swizzledClassInitSelectorDictionaryI));
    });
}

- (void)bp_safeDictionaryMSetObject:(id)anObject forKey:(id)aKey {
    if (nil == anObject) {
        NSLog(@"__NSDictionaryM can't set object which is nil for key:%@", aKey);
        return;
    }
    
    if (nil == aKey) {
        NSLog(@"__NSDictionaryM can't set object for nil");
        return;
    }
    
    [self bp_safeDictionaryMSetObject:anObject forKey:aKey];
}

- (void)bp_safeDictionaryMSetObject:(id)anObject forKeyedSubscript:(id)aKey {
    if (nil == anObject) {
        NSLog(@"__NSDictionaryM can't set object which is nil for key:%@", aKey);
        return;
    }
    
    if (nil == aKey) {
        NSLog(@"__NSDictionaryM can't set object for nil");
        return;
    }
    
    [self bp_safeDictionaryMSetObject:anObject forKeyedSubscript:aKey];
}

- (void)bp_safePlaceholderDictionarySetObject:(id)anObject forKey:(id)aKey {
    if (nil == anObject) {
        NSLog(@"__NSPlaceholderDictionary can't set object which is nil for key:%@", aKey);
        return;
    }
    
    if (nil == aKey) {
        NSLog(@"__NSPlaceholderDictionary can't set object for nil");
        return;
    }
    
    [self bp_safePlaceholderDictionarySetObject:anObject forKey:aKey];
}

- (void)bp_safePlaceholderDictionarySetObject:(id)anObject forKeyedSubscript:(id)aKey {
    if (nil == anObject) {
        NSLog(@"__NSPlaceholderDictionary can't set object which is nil for key:%@", aKey);
        return;
    }
    
    if (nil == aKey) {
        NSLog(@"__NSPlaceholderDictionary can't set object for nil");
        return;
    }
    
    [self bp_safePlaceholderDictionarySetObject:anObject forKeyedSubscript:aKey];
}

- (instancetype)bp_initWithObjectsAndKeysSafeDicionary:(id)firstObj,... {
    NSMutableArray *validArgs = [NSMutableArray array];
    if (nil == firstObj) {
        return [self bp_initWithObjectsAndKeysSafeDicionary:nil];
    }
    
    [validArgs addObject:firstObj];
    
    va_list list;
    va_start(list, firstObj);
    
    while ( YES ) {
        id obj = va_arg(list, id);
        if (nil == obj) {
            break;
        }
        [validArgs addObject:obj];
    }
    
    NSMutableDictionary *dic = @{}.mutableCopy;
    if (0 == validArgs.count % 2) {
        for (int index = 0; index <= validArgs.count - 1; index += 2) {
            [dic setObject:validArgs[index] forKey:validArgs[index+1]];
        }
    } else {
        NSLog(@"%@ can't instance init with any object for nil-key", NSStringFromClass([self class]));
        for (int index = 0; index < (validArgs.count - 1); index += 2) {
            [dic setObject:validArgs[index] forKey:validArgs[index+1]];
        }
    }
    
    return [self initWithDictionary:dic];
}

+ (instancetype)bp_dictionaryWithObjectsAndKeysSafeDicdionary:(id)firstObj, ... {
    NSMutableArray *validArgs = [NSMutableArray array];
    if (nil == firstObj) {
        return [self bp_dictionaryWithObjectsAndKeysSafeDicdionary:nil];
    }
    
    [validArgs addObject:firstObj];
    
    va_list list;
    va_start(list, firstObj);
    
    while ( YES ) {
        id obj = va_arg(list, id);
        if (nil == obj) {
            break;
        }
        [validArgs addObject:obj];
    }
    
    NSMutableDictionary *dic = @{}.mutableCopy;
    if (0 == validArgs.count%2) {
        for (int index = 0; index <= validArgs.count - 1; index += 2) {
            [dic setObject:validArgs[index] forKey:validArgs[index+1]];
        }
    } else {
        NSLog(@"%@ can't class init with any object for nil-key", NSStringFromClass([self class]));
        for (int index = 0; index < (validArgs.count-1); index += 2) {
            [dic setObject:validArgs[index] forKey:validArgs[index+1]];
        }
    }
    
    return [self dictionaryWithDictionary:dic];
}

@end
