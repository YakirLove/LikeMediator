//
//  ViewController.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+CV.h"

@interface ViewController ()
- (IBAction)firstTouch:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)firstTouch:(UIButton *)sender;
{
    UIViewController *vc = [[CTMediator sharedInstance] first_viewController];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
