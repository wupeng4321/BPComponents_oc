//
//  BPUINavigationController.m
//  BPComponentsDemo
//
//  Created by Apple on 2017/5/4.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "BPUINavigationController.h"

@interface BPUINavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation BPUINavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    id target = self.interactivePopGestureRecognizer.delegate;
    SEL handler = NSSelectorFromString(@"handleNavigationTransition:");
    UIView *targetView = self.interactivePopGestureRecognizer.view;
    
    UIPanGestureRecognizer *fullScreenGes = [[UIPanGestureRecognizer alloc] initWithTarget:target action:handler];
    fullScreenGes.delegate = self;
    [targetView addGestureRecognizer:fullScreenGes];
    
    self.interactivePopGestureRecognizer.enabled = NO;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    
    return self.childViewControllers.count != 1;
}

@end
