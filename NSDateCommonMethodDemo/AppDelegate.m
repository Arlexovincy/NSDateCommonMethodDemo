//
//  AppDelegate.m
//  NSDateCommonMethodDemo
//
//  Created by Foocaa on 14-3-21.
//  Copyright (c) 2014年 Foocaa. All rights reserved.
//

#import "AppDelegate.h"
#import "NSDate+CommonMethod.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyy-MM-dd HH:mm:ss"];
    
    NSDate *myDate = [[NSDate alloc] init];
    BOOL isIn12Hour = [myDate checkBetweenBeginTime:[formatter dateFromString:@"2014-3-5 15:22:15"] andEndTime:[formatter dateFromString:@"2014-3-5 07:00:00"] inSeconds:12*60*60];
    
    if (isIn12Hour) {
        
        NSLog(@"In 12 Hour");
        
    }else{
        
        NSLog(@"Not in 12 Hour");
    }
    
    UIDatePicker *picker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.window.frame) - 216, 320, 216)];
    picker.datePickerMode = UIDatePickerModeDateAndTime;
    [picker addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
    [self.window addSubview:picker];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dateChange:(UIDatePicker*)picker
{
    NSDate *myDate = [[NSDate alloc] init];
    
    NSLog(@"%@",[myDate timeAgoWithDate:picker.date]);
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
