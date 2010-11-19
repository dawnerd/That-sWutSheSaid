//
//  twssViewController.h
//  twss
//
//  Created by Troy Whiteley on 4/17/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface twssViewController : UIViewController {
	IBOutlet UILabel* jokeText;
	NSMutableArray* jokeArray;
}

- (IBAction)openContribute:(id)sender;

-(void)getJokes;
-(void)changeJokeText;
-(BOOL)canBecomeFirstResponder;
-(void)viewDidAppear:(BOOL)animated;
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event;

@end

