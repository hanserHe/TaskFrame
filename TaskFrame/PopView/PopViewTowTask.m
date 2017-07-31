//
//  PopViewTowTask.m
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import "PopViewTowTask.h"

@interface PopViewTowTask()

@end

@implementation PopViewTowTask

- (void)request {
    UIView *taskView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    taskView.backgroundColor = [UIColor redColor];
    [[UIApplication sharedApplication].keyWindow addSubview:taskView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [taskView addGestureRecognizer:tap];

}

+ (NSString *)classNameOfPopView{
    return NSStringFromClass([PopViewTowTask class]);
}

- (void)tap {
    if ([self.delegate respondsToSelector:@selector(didFinished)]) {
        [self.delegate didFinished];
    }
}


@end
