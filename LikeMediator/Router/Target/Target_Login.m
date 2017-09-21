//
//  Target.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "Target_First.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation Target_First

- (UIViewController *)action_firstviewController:(NSDictionary *)params
{
    FirstViewController *viewController = [[FirstViewController alloc] init];
    return viewController;
}

@end
