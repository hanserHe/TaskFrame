//
//  ViewController.m
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import "ViewController.h"
#import "PopViewManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [[PopViewManager sharedManager] viewControllerViewDidLoad];

    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [[PopViewManager sharedManager] viewControllerViewDidLoad];
////        UIView *hahaha = [[UIView alloc] init];
////        hahaha.frame = CGRectMake(0, 100, 100, 100);
////        hahaha.backgroundColor = [UIColor greenColor];
////        [[UIApplication sharedApplication].keyWindow addSubview:hahaha];
//    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
