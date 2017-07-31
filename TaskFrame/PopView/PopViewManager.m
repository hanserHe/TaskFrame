//
//  PopViewManager.m
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import "PopViewManager.h"
#import "PopViewOneTask.h"
#import "PopViewTowTask.h"


@interface PopViewManager()<PopViewTaskDelegate>


@property (nonatomic, strong, readwrite) NSMutableArray *task;

@end


@implementation PopViewManager

+ (instancetype)sharedManager {
    static PopViewManager *sharedInstance = nil;
    static dispatch_once_t pred;

    dispatch_once(&pred, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


- (void)viewControllerViewDidLoad {
    [self addTask:[PopViewOneTask class]];
}

- (void)addTask:(Class)clazz {
    if ([clazz respondsToSelector:@selector(classNameOfPopView)] && [clazz respondsToSelector:@selector(initWithDelegate:)]) {
        NSArray *names = [self classNamesOfTasks];
        if (![names containsObject:[clazz classNameOfPopView]]) {
            id task = [clazz initWithDelegate:self];
            [self.task addObject:task];
            if ([task respondsToSelector:@selector(request)]) {
                [(PopViewBaseTask *)task request];
            }
            
        }
    }
}

- (NSArray *)classNamesOfTasks {
    NSMutableArray *names = @{}.mutableCopy;
    [self.task enumerateObjectsUsingBlock:^(PopViewBaseTask *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [names addObject:[[obj class] classNameOfPopView]];
    }];
    return names;
}

- (NSMutableArray *)task {
    if (_task) {
        return _task;
    }
    _task = [[NSMutableArray alloc] init];
    return _task;
}

@end
