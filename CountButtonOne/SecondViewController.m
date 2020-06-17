//
//  SecondViewController.m
//  CountButtonOne
//
//  Created by zhouzhongliang on 2020/5/17.
//  Copyright © 2020 zhouzhongliang. All rights reserved.
//

#import "SecondViewController.h"
#import "CountdownButtonOne.h"

@interface SecondViewController ()

@property (nonatomic, assign) CountdownButtonOne *button;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    CGFloat width = CGRectGetWidth(self.view.frame);
    CGFloat hegith = 20;
    CGFloat buttonWidth = 100;
    CGFloat left = (width - buttonWidth) / 2.0;
    
    CountdownButtonOne *firstButton = [[CountdownButtonOne alloc] initWithFrame:CGRectMake(left, 150, buttonWidth, hegith) title:@"发送验证码" startTime:60 tapEvent:^{
        NSLog(@"tap");
    } callBack:^{
        NSLog(@"complete");
    }];
    
    [self.view addSubview:firstButton];
    _button = firstButton;
    
    CountdownButtonOne *secondButton = [[CountdownButtonOne alloc] initWithFrame:CGRectMake(left - 25, 250, buttonWidth + 60, hegith) backgroundColor:[UIColor blackColor] textColor:[UIColor whiteColor] font:[UIFont systemFontOfSize:14] separatorColor:[UIColor blackColor] cornerRadius:2 leftTime:3 * 3600];
    [self.view addSubview:secondButton];
    
    CountdownButtonOne *thirdButton = [[CountdownButtonOne alloc] initWithFrame:CGRectMake(left - 25, 350, buttonWidth + 50, hegith) backgroundColor:[UIColor blackColor] textColor:[UIColor whiteColor] font:[UIFont systemFontOfSize:14] separatorColor:[UIColor blackColor] cornerRadius:2];
    [self.view addSubview:thirdButton];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [_button stopTimer];
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
