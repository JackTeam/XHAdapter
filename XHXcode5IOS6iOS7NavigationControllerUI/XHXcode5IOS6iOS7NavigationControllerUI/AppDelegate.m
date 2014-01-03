//
//  AppDelegate.m
//  XHXcode5IOS6iOS7NavigationControllerUI
//
//  Created by 曾 宪华 on 14-1-3.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "XHCustomNavigationController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[XHCustomNavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    
    [self.window makeKeyAndVisible];
    
    // 适配方案2：如果我想保留iOS7的半透明毛玻璃的效果，是在导航控制器下的
    // 1、毕竟新的特性肯定会有人喜欢，所以不能排除，于是保留它
    // 2、在ViewController的ViewDidload方法中加入:
    /*
     if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
     self.edgesForExtendedLayout = UIRectEdgeNone;
     }
     */
    // 3、如果你使用了导航控制器，那你就需要继承UINavigationController，然后重载那两个方法，（prefersStatusBarHidden、 preferredStatusBarStyle）
    return YES;
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
