//
//  GravitySpewerAppDelegate.m
//  GravitySpewer
//
//  Created by James Thrasher on 2/15/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "GravitySpewerAppDelegate.h"
#import "GravitySpewerViewController.h"

@implementation GravitySpewerAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
