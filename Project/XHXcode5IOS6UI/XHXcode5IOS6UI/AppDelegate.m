//
//  AppDelegate.m
//  XHXcode5IOS6UI
//
//  Created by 曾 宪华 on 14-1-3.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    
    [self.window makeKeyAndVisible];
    
    // 适配方案1：如果你想在iOS7的SDK运行效果和iOS6的效果一样，做法如下
    // 1、利用系统的方法设置导航条的背景图片
    // 2、利用系统的方法设置导航条的字体颜色、字体大小、字体
    // 3、设置完后，运行就可以看到熟悉的iOS6的UI界面了，所有编码习惯都回到iOS6啦！谢谢！
    // 4、实例，在ViewController里面有个label，origin.y为0的，然后是完全没有误差的显示出来，运行看看吧
    [self _setupNavigationBar];
    
    return YES;
}

- (void)_setupNavigationBar {
    UIImage *portraitNavigationImage = [[UIImage imageNamed:@"nav-bar.png"] resizableImageWithCapInsets:UIEdgeInsetsZero];
    UIImage *landscapeNavigationImage = [[UIImage imageNamed:@"nav-bar-landscape.png"] resizableImageWithCapInsets:UIEdgeInsetsZero];
    
    [[UINavigationBar appearance] setBackgroundImage:portraitNavigationImage forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setBackgroundImage:landscapeNavigationImage forBarMetrics:UIBarMetricsLandscapePhone];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor],UITextAttributeTextColor,
                                                          
                                                          [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8],UITextAttributeTextShadowColor,
                                                          
                                                          [NSValue valueWithUIOffset:UIOffsetMake(0, 0)],UITextAttributeTextShadowOffset,
                                                          
                                                          [UIFont fontWithName:@"Roboto-Light" size:21],UITextAttributeFont,
                                                          nil]];
}

							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
