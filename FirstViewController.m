//
//  FirstViewController.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"FirstViewController";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"second" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(secondTouch:) forControlEvents:UIControlEventTouchUpInside];

}

-(void)secondTouch:(UIButton *)button
{
    UIViewController *vc = [[CTMediator sharedInstance] second_viewController:@"1234"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
