//
//  ViewController.m
//  Views
//
//  Created by Adam Schuster on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BurgerData.h"

@interface ViewController ()

@end

@implementation ViewController

/*
@synthesize ingridientLabel = _ingridientLabel;
@synthesize ingridientControl = _ingridientControl;
@synthesize button1 = _button1, button2 = _button2, button3 = _button3, button4 = _button4, button5 = _button5, button6 = _button6;

*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

-(IBAction)customBurgerPressed:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    sharedBurgerData.meatType = nil;
    sharedBurgerData.bunType = nil;
    sharedBurgerData.cheeseType = nil;
    [sharedBurgerData.contentsList removeAllObjects];
}
@end
