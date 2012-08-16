//
//  FinalScreen.m
//  Views
//
//  Created by Adam Schuster on 7/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FinalScreen.h"
#import "BurgerData.h"

@interface FinalScreen ()

@end

@implementation FinalScreen

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


- (IBAction)startOver:(id)sender
{
   // BurgerData* sharedBurgerData = [BurgerData sharedInstance];
   // sharedBurgerData.itemCount = 0;
    
}
@end
