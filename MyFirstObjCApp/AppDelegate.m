//
//  AppDelegate.m
//  MyFirstObjCApp
//
//  Created by Gonzalo Exequiel Ibars Ingman on 04/04/2019.
//  Copyright © 2019 Gonzalo Exequiel Ibars Ingman. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *viewController = [[ViewController alloc] init];
    
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController: viewController];
    
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [[self window] setRootViewController: navigationController];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

@end
