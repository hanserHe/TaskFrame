//
//  PopViewBaseTask.h
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PopViewTaskDelegate <NSObject>

- (void)didFinished;

@end

@interface PopViewBaseTask : NSObject

@property (nonatomic, weak) id<PopViewTaskDelegate> delegate;

+ (instancetype)initWithDelegate:(id<PopViewTaskDelegate>)delegate;

+ (NSString *)classNameOfPopView;

- (void)request;

@end
