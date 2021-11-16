//
//  AppDelegate.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/16.
//

#import "AppDelegate.h"
#import "CYTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame: kScreenSize];
    
    UITabBarController *tabBarController = [[CYTabBarViewController alloc] init];
    
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
