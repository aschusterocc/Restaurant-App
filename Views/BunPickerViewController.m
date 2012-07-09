//
//  BunPickerViewController.m
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BunPickerViewController.h"
#import "BurgerData.h"

@interface BunPickerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *TestLabel;

@end

@implementation BunPickerViewController
@synthesize TestLabel;


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




//Initiate a shared instance of BurgerData and assign a value to "bunType" based on what button the user touches.
-(IBAction)bunButtonPressed:(UIButton *)sender
{
    
    NSString *bunTypeString;
    bunTypeString = sender.currentTitle;
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    [sharedBurgerData setBunType:bunTypeString];
}

@end
