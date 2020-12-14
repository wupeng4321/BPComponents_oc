//
//  ViewController.m
//  BPComponents_ocDemo
//
//  Created by wupeng on 2020/12/14.
//

#import "ViewController.h"
#import <BPComponents_oc/BPComponents_oc.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arr = @[@1, @2];
    NSNumber *a = arr[1];
    NSLog(@"%@", a);
}


@end
