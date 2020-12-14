//
//  ViewController.m
//  BPComponents_ocDemo
//
//  Created by wupeng on 2020/12/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = UILabel.new;
    label.frame = CGRectMake(0, 0, 100, 100);
    label.backgroundColor = UIColor.redColor;
    [self.view addSubview:label];
}


@end
