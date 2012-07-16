//
//  ConfirmationViewController.m
//  Views
//
//  Created by Adam Schuster on 7/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ConfirmationViewController.h"
#import "BurgerData.h"

@interface ConfirmationViewController ()

@end

@implementation ConfirmationViewController

@synthesize ingridientsTable;
@synthesize contentsList;
@synthesize bunLabel, meatLabel, cheeseLabel;

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
     BurgerData* sharedBurgerData = [BurgerData sharedInstance];
     contentsList = [sharedBurgerData.contentsList copy];
    bunLabel.text = [NSString stringWithFormat: @"%@ Bun", sharedBurgerData.bunType];
    cheeseLabel.text = [NSString stringWithFormat: @"%@ Cheese", sharedBurgerData.cheeseType];
    meatLabel.text = [NSString stringWithFormat: @"Meat cooked %@", sharedBurgerData.meatType];
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



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    
    cell.textLabel.text = [contentsList objectAtIndex:[indexPath row]];
    NSLog(@"Cell is %@", [contentsList objectAtIndex:indexPath.row]);
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    NSInteger rows = [[self contentsList] count];
    return rows;
    
}


-(IBAction)confirmButtonpressed:(id)sender
{

    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    [sharedBurgerData storeItem];
    sharedBurgerData.itemCount = sharedBurgerData.itemCount + 1;
    [self performSegueWithIdentifier: @"toOrderScreen" sender: self];
    





}

@end
