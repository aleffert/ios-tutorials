//
//  AppDelegate.m
//  KittenDownloader
//
//  Created by Akiva Leffert on 3/16/15.
//  Copyright (c) 2015 Akiva Leffert. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ViewController* viewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
    
    // Override point for customization after application launch.
    return YES;
}

@end
