//
//  GravitySpewerViewController.m
//  GravitySpewer
//
//  Created by James Thrasher on 2/15/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "GravitySpewerViewController.h"
#import "GravitySpewer.h"

@implementation GravitySpewerViewController

@synthesize startStopSpewingButton;
@synthesize ipField;
@synthesize portField;

- (IBAction)startStopSpewing {
    [ipField resignFirstResponder];
    [portField resignFirstResponder];
    if ([[GravitySpewer instance] spewing]) {
        [[GravitySpewer instance] stop];
        startStopSpewingButton.titleLabel.text = @"Start";
    }
    else {
        [[GravitySpewer instance] start];
        startStopSpewingButton.titleLabel.text = @"Stop";
    }
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
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


- (void)dealloc {
    [super dealloc];
}

@end
