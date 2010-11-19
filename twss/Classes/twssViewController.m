//
//  twssViewController.m
//  twss
//
//  Created by Troy Whiteley on 4/17/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#include <stdlib.h>
#import "twssViewController.h"
#import "contributeForm.h"
#import "JSON.h"

#define kMinimumGestureLength	25
#define kMaximumVariance		5

@implementation twssViewController

- (IBAction)openContribute:(id)sender {
	contributeForm* modal = [[[contributeForm alloc] initWithNibName:nil bundle:nil] autorelease];
	modal.modalPresentationStyle = UIModalPresentationPageSheet;
	[self presentModalViewController:modal animated:YES];
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.view.backgroundColor = [[[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"twss_bg.png"]] autorelease];
//	jokeArray = [NSArray arrayWithObjects:
//				 @"It’s Tiny Downstairs",
//				 @"Don’t spray that box",
//				 @"That’s bigger than the one I have at home",
//				 @"I’m so jealous",
//				 @"Oh Wow!",
//				 @"I can eat this thing in two bites",
//				 @"I could use a delayed load",
//				 @"I know how to work a Wii!",
//				 @"I hate how they just pull out without warning, and expect you to roll over for them",
//				 @"It was big, black, and scary",
//				 @"I don’t even need to chew to swallow it all",
//				 @"Oh geez I almost choked on this",
//				 @"Now make sure you use your fingers to hold the juice in",
//				 @"Go ahead and start pumping, I think I already turned it on",
//				 @"Doing this upside down is hard",
//				 @"Stop it, it’s too short, it won’t go in all the way",
//				 @"He keeps poking me with his trombone!",
//				 @"The longer it’s in your mouth, the better it is",
//				 @"Why are you so easy and I’m so hard?",
//				 @"That’s not as salty as I thought it’d be",
//				 @"Just push it in and wiggle it around a bit",
//				 @"Awww there’s a bunch of white stuff on my mouth",
//				 @"Dammit, I can’t see it",
//				 @"Get in the hole!",
//				 @"Don’t take it out!",
//				 @"If it won’t go in, bang it harder",
//				 @"I can’t believe how much it’s grown!",
//				 @"He just told me to sit on it and spin",
//				 @"Don’t ram it in!",
//				 @"I need to go faster",
//				 @"Whoa, too fast!",
//				 @"Take it easy",
//				 @"Push harder",
//				 @"Who wants to lick the batter",
//				 @"You’ve got like four or five jammed in there!",
//				 @"I can help you if you want",
//				 @"My hand is too small to hold that",
//				 @"Wow, that’s a really big spear!",
//				 @"It hurts a little but it’s not too bad",
//				 @"Wow you’re sweaty",
//				 @"Never send a man to do a machines job",
//				 @"You told me you were going to be done ten minutes ago!",
//				 @"I’m coming!",
//				 @"Don’t you ever relax?",
//				 @"I was told it was bigger than this",
//				 @"Give me a minute to polish this off",
//				 @"Does it come in other sizes?",
//				 @"Are you always that stiff?",
//				 @"I can’t fit my hand around it",
//				 @"Will it bite?",
//				 @"Too salty",
//				 @"That really filled me up",
//				 @"What does it taste like?",
//				 @"Can I touch it?",
//				 @"It’s okay if there’s more than one",
//				 @"Is it in yet?",
//				 @"That was fast",
//				 @"I like your carpet",
//				 @"I’m going on a trip to the South",
//				 @"I can go all night",
//				 @"You’re pushing the wrong button",
//				 @"They taste so good in my mouth",
//				 @"It was easy to get in, but impossible to rise up",
//				 @"You’re hardly my first",
//				 @"Come again?",
//				 @"And you were directly under her the entire time?",
//				 @"I say things like that to lighten the tension when things start to get hard",
//				 @"… and up comes the toolbar",
//				 @"You should put your mouth on that",
//				 @"That job looks hard",
//				 @"Can you make that straighter?",
//				 @"I need two men on this!",
//				 @"Why is this so hard?",
//				 @"My back door is wide open",
//				 @"Please, don’t blow this party off",
//				 @"What’s it like, being down under?",
//				 @"I want you to think about it long and hard",
//				 @"I want to give you something",
//				 @"I can’t stay on top of you 24/7",
//				 @"At least we put this matter to bed",
//				 @"You already did me",
//				 @"Does the skin look red and swollen?",
//				 @"Why did you get it so big?",
//				 @"Do you really think you can go all day long?",
//				 @"My mother is coming",
//				 @"Where’s the pearl necklace?",
//				 @"No thanks, I’m good",
//				 @"That’s it?",
//				 @"You should put butter on it",
//				 @"Eww! It’s all floppy and gross!",
//				 @"That’s ok, we can suck together!",
//				 @"I’m going to suck really badly tomorrow",
//				 @"Where’s the rest of it?",
//				 @"Do you know how hard I had to work to keep this thing up?",
//				 @"I couldn’t hit it, it was too short",
//				 @"Ok, you got to put it in that hole",
//				 @"Even after all that moaning and whining, you still took it on",
//				 @"From this angle it always looks like its going in",
//				 @"I don’t want to go down all the way, because I’m afraid I’ll get stuck",
//				 @"Once I finish up with him, I’ll get started on you",
//				 @"keep it up guys",
//				 @"Get off my ass!",
//				 @"I’ve never had one of those before",
//				 @"I paid them for this little thing?",
//				 @"I finished before you",
//				 @"Faster!",
//				 @"Do it harder and faster",
//				 @"I’ll tell you when to start, and when to stop",
//				 @"That’s really hard",
//				 @"Stop beating that thing!",
//				 @"Do you workout?",
//				 @"This is huge",
//				 @"Please stop banging on that",
//				 @"Stop blowing my horn!",
//				 @"I’ll give you fifty cents to pick it up and lick it",
//				 @"Can I have my money back?",
//				 @"You point that thing at me one more time, I’ll break it in half",
//				 @"Fire in the Hole!",
//				 @"These things are big and clunky!",
//				 @"I’m just watching him bounce like a bunny",
//				 @"I can't force you to go down, but I can entice you",
//				 @"Get it out!",
//				 @"I really pumped that one out!",
//				 @"I’m on top of this",
//				 @"You're Still at this?",
//				 @"I'll take two",
//				 @"That's bigger than I thought",
//				 @"I'm out of gas",
//				 @"Talk about a tight fit",
//				 @"I'm too tired for that",
//				 @"You sound like my father",
//				 @"Meow",
//				 @"No thanks, I'm good",
//				 @"Slow, like a turtle",
//				 nil];
	jokeArray = [[NSMutableArray alloc] init];
	[self getJokes];
	NSLog(@"Loaded %d jokes", [jokeArray count]);
	[self changeJokeText];
    [super viewDidLoad];
}

-(void)getJokes {
	NSLog(@"Getting");
	NSString *urlString = @"http://thatswutshesaid.com/feed.json.php";
	NSURL *url = [NSURL URLWithString:urlString];
	
	NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
	[connection release];
	[request release];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data 
{
	NSLog(@"Connection");
	NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	
	jokeArray = (NSMutableArray *)[jsonString JSONValue];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    //return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
	if(interfaceOrientation == UIInterfaceOrientationLandscapeRight || interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
		return YES;
	} else {
		return NO;
	}
	//return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


-(void)changeJokeText {
	int randIdx = arc4random() % [jokeArray count];
	NSLog(@"Random");
	NSString* joke = [jokeArray objectAtIndex:randIdx];
	jokeText.text = joke;
	[jokeArray retain];
}


-(BOOL)canBecomeFirstResponder {
    return YES;
}

-(void)viewDidAppear:(BOOL)animated {
	
    [self becomeFirstResponder];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	if (event.type == UIEventSubtypeMotionShake) {
		[self changeJokeText];
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[self changeJokeText];
	
}



- (void)dealloc {
	[jokeArray dealloc];
    [super dealloc];
}

@end
