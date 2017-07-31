//
//  PopViewBaseTask.m
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import "PopViewBaseTask.h"

@implementation PopViewBaseTask

+ (instancetype)initWithDelegate:(id<PopViewTaskDelegate>)delegate {
    PopViewBaseTask *task = [[self alloc] init];
    task.delegate = delegate;
    return task;
}

+ (NSString *)classNameOfPopView{
    return @"";
}


- (void)request {};

@end
