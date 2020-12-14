//
//  NSArray+BPExceptionProtection.m
//  BPComponents
//
//  Created by wupeng on 2020/4/28.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "NSArray+BPExceptionProtection.h"
#import <objc/runtime.h>


@implementation NSArray (BPExceptionProtection)

+ (void)load {
    [super load];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class arrayIClass = objc_getClass("__NSArrayI");
        SEL originalSelectorArrayI = @selector(objectAtIndex:);
        SEL swizzledSelectorArrayI = @selector(bp_safeArrayObjectAtIndex:);
        method_exchangeImplementations(class_getInstanceMethod(arrayIClass, originalSelectorArrayI), class_getInstanceMethod(arrayIClass, swizzledSelectorArrayI));
        SEL originalObjectAtIndexedSubscriptSelectorArrayI = @selector(objectAtIndexedSubscript:);
        SEL swizzledObjectAtIndexedSubscriptSelectorArrayI = @selector(bp_safeArrayObjectAtIndexedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(arrayIClass, originalObjectAtIndexedSubscriptSelectorArrayI), class_getInstanceMethod(arrayIClass, swizzledObjectAtIndexedSubscriptSelectorArrayI));
        
        Class array0Class = objc_getClass("__NSArray0");
        SEL originalSelectorArray0 = @selector(objectAtIndex:);
        SEL swizzledSelectorArray0 = @selector(bp_safeArray0ObjectAtIndex:);
        method_exchangeImplementations(class_getInstanceMethod(array0Class, originalSelectorArray0), class_getInstanceMethod(array0Class, swizzledSelectorArray0));
        SEL originalObjectAtIndexedSubscriptSelectorArray0 = @selector(objectAtIndexedSubscript:);
        SEL swizzledObjectAtIndexedSubscriptSelectorArray0 = @selector(bp_safeArray0ObjectAtIndexedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(array0Class, originalObjectAtIndexedSubscriptSelectorArray0), class_getInstanceMethod(array0Class, swizzledObjectAtIndexedSubscriptSelectorArray0));
        
        Class singleObjectArrayIClass = objc_getClass("__NSSingleObjectArrayI");
        SEL originalSelectorSingleObjectArrayI= @selector(objectAtIndex:);
        SEL swizzledSelectorSingleObjectArrayI = @selector(bp_safeSingleObjectArrayIObjectAtIndex:);
        method_exchangeImplementations(class_getInstanceMethod(singleObjectArrayIClass, originalSelectorSingleObjectArrayI), class_getInstanceMethod(singleObjectArrayIClass, swizzledSelectorSingleObjectArrayI));
        SEL originalObjectAtIndexedSubscriptSelectorSingleObjectArrayI= @selector(objectAtIndexedSubscript:);
        SEL swizzledObjectAtIndexedSubscriptSelectorSingleObjectArrayI = @selector(bp_safeSingleObjectArrayIObjectAtIndexedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(singleObjectArrayIClass, originalObjectAtIndexedSubscriptSelectorSingleObjectArrayI), class_getInstanceMethod(singleObjectArrayIClass, swizzledObjectAtIndexedSubscriptSelectorSingleObjectArrayI));
        
        Class arrayMClass = objc_getClass("__NSArrayM");
        SEL originalObjectAtIndexSelectorArrayM = @selector(objectAtIndex:);
        SEL swizzledObjectAtIndexSelectorArrayM = @selector(bp_safeArrayMObjectAtIndex:);
        method_exchangeImplementations(class_getInstanceMethod(arrayMClass, originalObjectAtIndexSelectorArrayM), class_getInstanceMethod(arrayMClass, swizzledObjectAtIndexSelectorArrayM));
        SEL originalObjectAtIndexedSubscriptSelectorArrayM = @selector(objectAtIndexedSubscript:);
        SEL swizzledObjectAtIndexedSubscriptSelectorArrayM = @selector(bp_safeArrayMobjectAtIndexedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(arrayMClass, originalObjectAtIndexedSubscriptSelectorArrayM), class_getInstanceMethod(arrayMClass, swizzledObjectAtIndexedSubscriptSelectorArrayM));
        SEL originalRemoveObjectAtIndexSelectorArrayM = @selector(removeObjectAtIndex:);
        SEL swizzledRemoveObjectAtIndexSelectorArrayM = @selector(bp_safeArrayMRemoveObjectAtIndex:);
        method_exchangeImplementations(class_getInstanceMethod(arrayMClass, originalRemoveObjectAtIndexSelectorArrayM), class_getInstanceMethod(arrayMClass, swizzledRemoveObjectAtIndexSelectorArrayM));
        SEL originalReplaceObjectAtIndexSelectorArrayM = @selector(replaceObjectAtIndex:withObject:);
        SEL swizzledReplaceObjectAtIndexSelectorArrayM = @selector(bp_safeArrayMReplaceObjectAtIndex:withObject:);
        method_exchangeImplementations(class_getInstanceMethod(arrayMClass, originalReplaceObjectAtIndexSelectorArrayM), class_getInstanceMethod(arrayMClass, swizzledReplaceObjectAtIndexSelectorArrayM));
        SEL originalSetObjectAtIndexSelectorArrayM = @selector(setObject:atIndexedSubscript:);
        SEL swizzledSetObjectAtIndexSelectorArrayM = @selector(bp_safeArrayMSetObject:atIndexedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(arrayMClass, originalSetObjectAtIndexSelectorArrayM), class_getInstanceMethod(arrayMClass, swizzledSetObjectAtIndexSelectorArrayM));
        
        Class placeHolderArrayClass = objc_getClass("_NSPlaceHolderArray");
        SEL originalSelectorArrayPlaceHolder = @selector(objectAtIndex:);
        SEL swizzledSelectorArrayPlaceHolder = @selector(bp_safePlaceHolderArrayObjectAtIndex:);
        method_exchangeImplementations(class_getInstanceMethod(placeHolderArrayClass, originalSelectorArrayPlaceHolder), class_getInstanceMethod(placeHolderArrayClass, swizzledSelectorArrayPlaceHolder));
        SEL originalObjectAtIndexedSubscriptSelectorArrayPlaceHolder = @selector(objectAtIndexedSubscript:);
        SEL swizzledObjectAtIndexedSubscriptSelectorArrayPlaceHolder = @selector(bp_safePlaceHolderArrayObjectAtIndexedSubscript:);
        method_exchangeImplementations(class_getInstanceMethod(placeHolderArrayClass, originalObjectAtIndexedSubscriptSelectorArrayPlaceHolder), class_getInstanceMethod(placeHolderArrayClass, swizzledObjectAtIndexedSubscriptSelectorArrayPlaceHolder));
    });
}

- (id)bp_safeArrayObjectAtIndex:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayI index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeArrayObjectAtIndex:index];
}

- (id)bp_safeArrayObjectAtIndexedSubscript:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayI index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeArrayObjectAtIndexedSubscript:index];
}

- (id)bp_safeArray0ObjectAtIndex:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArray0 index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeArray0ObjectAtIndex:index];
}

- (id)bp_safeArray0ObjectAtIndexedSubscript:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArray0 index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeArray0ObjectAtIndexedSubscript:index];
}

- (id)bp_safeSingleObjectArrayIObjectAtIndex:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSSingleObjectArrayI index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeSingleObjectArrayIObjectAtIndex:index];
}

- (id)bp_safeSingleObjectArrayIObjectAtIndexedSubscript:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSSingleObjectArrayI index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeSingleObjectArrayIObjectAtIndexedSubscript:index];
}

- (id)bp_safeArrayMObjectAtIndex:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayM index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeArrayMObjectAtIndex:index];
}

- (id)bp_safeArrayMobjectAtIndexedSubscript:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayM index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safeArrayMobjectAtIndexedSubscript:index];
}

- (void)bp_safeArrayMRemoveObjectAtIndex:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayM index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
    }else {
        [self bp_safeArrayMRemoveObjectAtIndex:index];
    }
}

- (void)bp_safeArrayMReplaceObjectAtIndex:(NSInteger)index withObject:(id)object {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayM index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
    } else if (nil == object){
        NSLog(@"__NSArrayM replaceObjectAtIndex:withObject: object can't be nil.");
    } else {
        [self bp_safeArrayMReplaceObjectAtIndex:index withObject:object];
    }
}

- (void)bp_safeArrayMSetObject:(id)obj atIndexedSubscript:(NSInteger)index {
    if (nil == obj) {
        NSLog(@"[__NSArrayM setObject:atIndexedSubscript:]: object cannot be nil");
        return;
    } else if ((index >= self.count) || (index < 0)) {
        NSLog(@"[__NSArrayM setObject:atIndexedSubscript:]: __NSArrayM index %lu beyond bounds for %lu!", (unsigned long)index, (unsigned long)self.count);
        return;
    } else {
        [self bp_safeArrayMSetObject:obj atIndexedSubscript:index];
    }
}

- (id)bp_safePlaceHolderArrayObjectAtIndex:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayPlaceHoder index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safePlaceHolderArrayObjectAtIndex:index];
}

- (id)bp_safePlaceHolderArrayObjectAtIndexedSubscript:(NSInteger)index {
    if( (index >= self.count) || (index < 0)) {
        NSLog(@"__NSArrayPlaceHoder index %lu beyound bound %lu!", (unsigned long)index, (unsigned long)self.count);
        return nil;
    }
    
    return [self bp_safePlaceHolderArrayObjectAtIndexedSubscript:index];
}

@end
