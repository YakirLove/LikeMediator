//
//  CTMediator+CV.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "CTMediator+CV.h"

@implementation CTMediator (CV)

- (UIViewController *)first_viewController
{
    return [self performTarget:@"Login" action:@"firstviewController" params:nil shouldCacheTarget:NO];
}

- (UIViewController *)second_viewController:(NSString *)string
{
    return [self performTarget:@"Login" action:@"secondviewController" params:@{@"text":string} shouldCacheTarget:NO];
}

- (UIViewController *)third_viewController:(UIImage *)image
{
    return [self performTarget:@"Login" action:@"thirdviewController" params:@{@"image":image} shouldCacheTarget:NO];
}

@end
