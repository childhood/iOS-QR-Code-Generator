//
//  QRGenAppDelegate.m
//  QRGen
//
//  Created by Patrick Hogan on 7/26/11.
//  Copyright 2011 Kuapay LLC. All rights reserved.
//

#import "QRGenAppDelegate.h"

#import "QRGenViewController.h"

@implementation QRGenAppDelegate


@synthesize window, viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
 self.window.rootViewController = self.viewController;
 [self.window makeKeyAndVisible];
 
 return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)dealloc
{
 [window release];
 [viewController release];
 [super dealloc];
}

@end
