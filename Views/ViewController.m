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
    sharedBurgerData.orderLabel = [NSString stringWithFormat:[sender currentTitle]];
    sharedBurgerData.meatType = nil;
    sharedBurgerData.bunType = nil;
    sharedBurgerData.cheeseType = nil;
    [sharedBurgerData.contentsList removeAllObjects];
    sharedBurgerData.editMode = NO;
}

-(IBAction)premadeOnePressed:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    sharedBurgerData.orderLabel = [NSString stringWithFormat:[sender currentTitle]];
    sharedBurgerData.meatType = @"Medium Well";
    sharedBurgerData.bunType = @"White";
    sharedBurgerData.cheeseType = @"Cheddar";
    sharedBurgerData.contentsList = [NSMutableArray arrayWithObjects:@"Ketchup", @"Mustard", @"Pickle", @"Onion", @"Tomatoe", @"Lettuce", @"Bacon", nil];
    sharedBurgerData.editMode = NO;
    [self performSegueWithIdentifier:(@"toppingsViewSegue") sender:self];
}

-(IBAction)premadeTwoPressed:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    sharedBurgerData.orderLabel = [NSString stringWithFormat:[sender currentTitle]];
    sharedBurgerData.meatType = @"Medium Well";
    sharedBurgerData.bunType = @"White";
    sharedBurgerData.cheeseType = @"American";
    sharedBurgerData.contentsList = [NSMutableArray arrayWithObjects:@"BBQ Sauce", @"Mayonnaise", @"Crispy Onion Straws", @"Tomatoe", @"Lettuce", nil];
    sharedBurgerData.editMode = NO;
    [self performSegueWithIdentifier:(@"toppingsViewSegue") sender:self];

}

-(IBAction)premadeThreePressed:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    sharedBurgerData.orderLabel = [NSString stringWithFormat:[sender currentTitle]];
    sharedBurgerData.meatType = @"Medium Well";
    sharedBurgerData.bunType = @"Brioche";
    sharedBurgerData.cheeseType = @"Blue";
    sharedBurgerData.contentsList = [NSMutableArray arrayWithObjects:@"A1 Sauce", @"Mayonnaise", @"Pickle", @"Mustard", @"Lettuce", @"Jalapeno", @"Pineapple", @"Onion Ring", nil];
    sharedBurgerData.editMode = NO;
    [self performSegueWithIdentifier:(@"toppingsViewSegue") sender:self];

}

-(IBAction)premadeFourPressed:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    sharedBurgerData.orderLabel = [NSString stringWithFormat:[sender currentTitle]];
    sharedBurgerData.meatType = @"Medium Well";
    sharedBurgerData.bunType = @"Jalapeno";
    sharedBurgerData.cheeseType = @"Swiss";
    sharedBurgerData.contentsList = [NSMutableArray arrayWithObjects:@"Onion", @"Tomatoe", @"Lettuce", @"Jalapeno", @"Guacamole", @"Relish", nil];
    sharedBurgerData.editMode = NO;
    [self performSegueWithIdentifier:(@"toppingsViewSegue") sender:self];

}

-(IBAction)dailySpecialPressed:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    sharedBurgerData.orderLabel = [NSString stringWithFormat:[sender currentTitle]];
    sharedBurgerData.meatType = @"Medium Well";
    sharedBurgerData.bunType = @"White";
    sharedBurgerData.cheeseType = @"Cheddar";
    sharedBurgerData.contentsList = [NSMutableArray arrayWithObjects:@"Fried Egg", @"Mustard", @"Mayonnaise", @"Mushroom", @"Onion", @"Tomatoe", @"Lettuce", nil];
    sharedBurgerData.editMode = NO;
    [self performSegueWithIdentifier:(@"toppingsViewSegue") sender:self];
}
@end
