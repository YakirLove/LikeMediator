//
//  Target.h
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Target_Login : NSObject

/**
 *  打开firstviewcontroller
 *
 *  @param params 无参数
 *
 *  @return firstviewcontroller
 */
- (UIViewController *)action_firstviewController:(NSDictionary *)params;


- (UIViewController *)action_secondviewController:(NSDictionary *)params;



- (UIViewController *)action_thirdviewController:(NSDictionary *)params;
@end
