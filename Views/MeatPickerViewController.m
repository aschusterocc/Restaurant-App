//
//  MeatPickerViewController.m
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MeatPickerViewController.h"
#import "AppDelegate.h"
#import "BurgerData.h"

@interface MeatPickerViewController ()

@end

@implementation MeatPickerViewController


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



//Initiate a shared instance of BurgerData and assign a value to "meatCooked" based on what button the user touches.
-(IBAction)meatButtonPressed:(UIButton *)sender
{
    NSString *meatCookedString;
    meatCookedString = sender.currentTitle;
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    [sharedBurgerData setMeatCooked:meatCookedString];
}

@end
