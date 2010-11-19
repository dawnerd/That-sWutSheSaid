//
//  twssAppDelegate.h
//  twss
//
//  Created by Troy Whiteley on 4/17/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class twssViewController;

@interface twssAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    twssViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet twssViewController *viewController;

@end

