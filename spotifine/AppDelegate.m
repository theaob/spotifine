//
//  AppDelegate.m
//  spotifine
//
//  Created by Onur Baykal on 3.12.2014.
//  Copyright (c) 2014 Onur Baykal. All rights reserved.
//

#import "AppDelegate.h"
#import "TestFlight.h"
#import <Spotify/Spotify.h>

static NSString * const kClientId = @"4af8c72e86a44d56a7d0949a24bc1fea";
static NSString * const kCallbackURL = @"spotifine://";
static NSString * const kTokenSwapServiceURL = @"";

@implementation AppDelegate


- (IBAction)loginButton
{
    NSURL * loginURL = [[SPTAuth defaultInstance] loginURLForClientId:kClientId
                                                  declaredRedirectURL:[NSURL URLWithString:kCallbackURL]
                                                               scopes:@[SPTAuthPlaylistReadPrivateScope, SPTAuthStreamingScope, SPTAuthUserLibraryReadScope, SPTAuthUserReadPrivateScope]];
    
    [[UIApplication sharedApplication] openURL:loginURL];
}


#pragma mark Application Functions

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [TestFlight takeOff:@"861326bd-e0d8-4c7b-8688-29c5096616da"];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL) application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    SPTAuthCallback authCallback = ^(NSError * error, SPTSession * session)
    {
        
    };
    
    return NO;
}

@end
