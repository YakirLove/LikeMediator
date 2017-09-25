//
//  ThirdViewController.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

-(id)initWithImage:(UIImage *)image;
{
    self = [super init];
    if(self)
    {
        [self addImageView:image];
    }
    return self;
}

-(void)addImageView:(UIImage *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(100, 200, 100, 200);
    [self.view addSubview:imageView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ThirdViewController";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"first" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(FirstTouch:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)FirstTouch:(UIButton *)button
{
    UIViewController *controller = [[CTMediator sharedInstance] first_viewController];
    [self.navigationController pushViewController:controller animated:YES];
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
