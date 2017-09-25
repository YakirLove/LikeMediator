//
//  Target.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "Target_Login.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation Target_Login

- (UIViewController *)action_firstviewController:(NSDictionary *)params
{
    FirstViewController *viewController = [[FirstViewController alloc] init];
    return viewController;
}

- (UIViewController *)action_secondviewController:(NSDictionary *)params
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithText:params[@"text"]];
    return viewController;
}

- (UIViewController *)action_thirdviewController:(NSDictionary *)params
{
    ThirdViewController *viewController = [[ThirdViewController alloc] initWithImage:params[@"image"]];
    return viewController;
}

@end
