//
//  ViewController.m
//  XHXcode5IOS6iOS7UI
//
//  Created by 曾 宪华 on 14-1-3.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0
- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
#endif

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"测试";
    
    
    // 这里是解决适配方案2里面的问题,如果你不信，那你就注释了，然后再运行看看label去哪里了？
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
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
