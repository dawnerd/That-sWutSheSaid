//
//  twssAppDelegate.m
//  twss
//
//  Created by Troy Whiteley on 4/17/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "twssAppDelegate.h"
#import "twssViewController.h"

@implementation twssAppDelegate

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
