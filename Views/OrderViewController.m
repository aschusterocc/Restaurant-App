//
//  OrderViewController.m
//  Views
//
//  Created by Adam Schuster on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OrderViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "BurgerData.h"
#import "OrderItemClass.h"

@interface OrderViewController ()

@end

@implementation OrderViewController

@synthesize itemsView;
@synthesize itemOne, itemTwo, itemThree;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    itemsView.layer.borderWidth = 2;
    itemsView.layer.borderColor = [UIColor blackColor].CGColor;
    
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    if (sharedBurgerData.itemCount == 1)
    {
        [itemOne setHidden:NO];
    }
    if (sharedBurgerData.itemCount == 2)
    {
        [itemOne setHidden:NO];
        [itemTwo setHidden:NO];
    }
    if (sharedBurgerData.itemCount == 3)
    {
        [itemOne setHidden:NO];
        [itemTwo setHidden:NO];
        [itemThree setHidden:NO];
    }
    
    
    
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

-(IBAction)itemOneTapped:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    OrderItemClass *newItem = [sharedBurgerData.itemsList objectAtIndex:0];
    sharedBurgerData.contentsList = newItem.toppingsList;
    sharedBurgerData.cheeseType = newItem.cheeseType;
    sharedBurgerData.bunType = newItem.bunType;
    sharedBurgerData.meatType = newItem.meatType;
    [self performSegueWithIdentifier: @"editItem" sender: self];
}

@end
