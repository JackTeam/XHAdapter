//
//  ViewController.m
//  XHXcode5IOS6UI
//
//  Created by 曾 宪华 on 14-1-3.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"测试";
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 44)];
    lable.textColor = [UIColor whiteColor];
    lable.backgroundColor = [UIColor blueColor];
    lable.text = @"这是测试";
    [self.view addSubview:lable];
    
    
    CGRect viewFrmae = self.view.frame;
    NSLog(@"%@", NSStringFromCGRect(viewFrmae));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
