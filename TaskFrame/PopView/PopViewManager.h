//
//  PopViewManager.h
//  TaskFrame
//
//  Created by Hanser on 27/07/2017.
//  Copyright © 2017 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PopViewManager : NSObject

+ (instancetype)sharedManager;

- (void)viewControllerViewDidLoad;

@end
