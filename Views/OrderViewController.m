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
    /*
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
    */
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    
    int itemCounter = 0;
    int currentCoordinates = 80;
    for (int i = 0; i<sharedBurgerData.itemCount; i++)
    {
    OrderItemClass *newItem = [sharedBurgerData.itemsList objectAtIndex:itemCounter];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, currentCoordinates, 280, 90);
    [button setTitle:[NSString stringWithFormat:@"%@ ",newItem.orderLabel] forState:UIControlStateNormal];
    [itemsView addSubview:button];
    [button setTag:itemCounter];
    [button addTarget:self action:@selector(itemOneTapped:) forControlEvents:UIControlEventTouchUpInside];
    currentCoordinates = currentCoordinates + 100;
    itemCounter++;
    }
    int contentSize = currentCoordinates + 50;
    itemsView.contentSize = CGSizeMake(300, contentSize);
    
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
    OrderItemClass *newItem = [sharedBurgerData.itemsList objectAtIndex:[sender tag]];
    [sharedBurgerData.contentsList removeAllObjects];
    [sharedBurgerData.contentsList addObjectsFromArray:(newItem.toppingsList)];
    sharedBurgerData.cheeseType = [NSString stringWithFormat:@"%@", newItem.cheeseType];
    sharedBurgerData.bunType = [NSString stringWithFormat:@"%@", newItem.bunType];
    sharedBurgerData.meatType = [NSString stringWithFormat:@"%@", newItem.meatType];
    sharedBurgerData.editMode = YES;
    [self performSegueWithIdentifier: @"editItem" sender: self];
    
    
}

-(IBAction)itemTwoTapped:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    OrderItemClass *newItem = [sharedBurgerData.itemsList objectAtIndex:1];
    sharedBurgerData.contentsList = newItem.toppingsList;
    sharedBurgerData.cheeseType = newItem.cheeseType;
    sharedBurgerData.bunType = newItem.bunType;
    sharedBurgerData.meatType = newItem.meatType;
    [self performSegueWithIdentifier: @"editItem" sender: self];
}

-(IBAction)itemThreeTapped:(id)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    OrderItemClass *newItem = [sharedBurgerData.itemsList objectAtIndex:2];
    sharedBurgerData.contentsList = newItem.toppingsList;
    sharedBurgerData.cheeseType = newItem.cheeseType;
    sharedBurgerData.bunType = newItem.bunType;
    sharedBurgerData.meatType = newItem.meatType;
    [self performSegueWithIdentifier: @"editItem" sender: self];
}

@end
