//
//  SecondViewController.m
//  LikeMediator
//
//  Created by wyj on 2017/9/19.
//  Copyright © 2017年 wyj. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic ,copy) NSString *textString;
@end

@implementation SecondViewController

-(id)initWithText:(NSString *)string;
{
    self = [super init];
    if(self)
    {
        _textString = string;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"SecondViewController";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"third" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(thirdTouch:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    label.text = _textString;
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
}

-(void)thirdTouch:(UIButton *)button
{
    UIViewController *vc = [[CTMediator sharedInstance] third_viewController:[UIImage imageNamed:@"aaa"]];
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
