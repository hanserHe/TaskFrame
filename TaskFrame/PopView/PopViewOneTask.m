//
//  PopViewOneTask.m
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import "PopViewOneTask.h"

@interface PopViewOneTask()

@end

@implementation PopViewOneTask

- (void)request {
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIView *taskView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        taskView.backgroundColor = [UIColor redColor];
        [[self displayWindow] addSubview:taskView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        [taskView addGestureRecognizer:tap];

    });

    
}

+ (NSString *)classNameOfPopView{
    return NSStringFromClass([PopViewOneTask class]);
}

- (UIWindow *)displayWindow{
    __block UIWindow *window = nil;
    [[UIApplication sharedApplication].windows enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIWindow * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[UIWindow class]]) {
            window = obj;
        }
    }];
    return window;
}



- (void)tap {
    if ([self.delegate respondsToSelector:@selector(didFinished)]) {
        [self.delegate didFinished];
    }
}

@end
