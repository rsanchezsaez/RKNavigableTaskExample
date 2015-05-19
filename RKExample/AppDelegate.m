//
//  AppDelegate.m
//  RKExample
//
//  Created by Ricardo Sánchez-Sáez on 24/04/2015.
//  Copyright (c) 2015 Ricardo Sánchez-Sáez. All rights reserved.
//


#import "AppDelegate.h"

#import "MainViewController.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [MainViewController new];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
