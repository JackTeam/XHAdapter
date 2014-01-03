//
//  XHCustomNavigationController.m
//  XHXcode5IOS6iOS7NavigationControllerUI
//
//  Created by 曾 宪华 on 14-1-3.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "XHCustomNavigationController.h"

@interface XHCustomNavigationController ()

@end

@implementation XHCustomNavigationController

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0
- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
#endif

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
