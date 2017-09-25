//
//  CTMediator+CV.h
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (CV)

- (UIViewController *)first_viewController;
- (UIViewController *)second_viewController:(NSString *)string;
- (UIViewController *)third_viewController:(UIImage *)image;

@end
