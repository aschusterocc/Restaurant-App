//
//  ToppingsPickerViewController.m
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ToppingsPickerViewController.h"
#import "BurgerData.h"
#import <QuartzCore/QuartzCore.h>

@interface ToppingsPickerViewController ()

@end

@implementation ToppingsPickerViewController

@synthesize button1 = _button1, button2 = _button2, button3 = _button3, button4 = _button4, button5 = _button5, button6 = _button6;
@synthesize ingridientControl = _ingridientControl;
@synthesize ingridientLabel;
@synthesize ingridientsTable;
@synthesize contentsList;
@synthesize toppingsView, bunView, cheeseView, meatView;
@synthesize cheeseLabel, meatLabel, bunLabel;
@synthesize bunChosen, meatChosen, cheeseChosen;


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
    
    //Set various graphical properties
    
    [toppingsView setHidden:YES];
    [cheeseView setHidden:YES];
    [meatView setHidden:YES];
    [bunView setHidden:NO];
    
    
    bunLabel.layer.borderColor = [UIColor blackColor].CGColor;
    bunLabel.layer.borderWidth = 3.0;
    
    cheeseLabel.layer.borderColor = [UIColor blackColor].CGColor;
    cheeseLabel.layer.borderWidth = 3.0;
    
    meatLabel.layer.borderColor = [UIColor blackColor].CGColor;
    meatLabel.layer.borderWidth = 3.0;
    
    bunView.layer.borderColor = [UIColor blackColor].CGColor;
    bunView.layer.borderWidth = 3.0;
    
    meatView.layer.borderColor = [UIColor blackColor].CGColor;
    meatView.layer.borderWidth = 3.0;
    
    cheeseView.layer.borderColor = [UIColor blackColor].CGColor;
    cheeseView.layer.borderWidth = 3.0;
    
    toppingsView.layer.borderColor = [UIColor blackColor].CGColor;
    toppingsView.layer.borderWidth = 3.0;
    
    //Import the contentsList array from our burgerdata singleton to store the toppings
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    if ([self.contentsList count])
    {
        [self.contentsList removeAllObjects];
    }
    [self.contentsList addObjectsFromArray:sharedBurgerData.contentsList];
    
    if (sharedBurgerData.bunType.length > 0)
    {
        bunChosen = YES;
        bunLabel.text = [NSString stringWithFormat: @"%@ Bun", sharedBurgerData.bunType];
    }
    
    if (sharedBurgerData.meatType.length > 0)
    {
        meatChosen = YES;
        meatLabel.text = [NSString stringWithFormat: @"%@ Bun", sharedBurgerData.meatType];
    }
    
    if (sharedBurgerData.cheeseType.length > 0)
    {
        cheeseChosen = YES;
        cheeseLabel.text = [NSString stringWithFormat: @"%@ Bun", sharedBurgerData.cheeseType];
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

- (NSMutableArray *)contentsList
{
    if (contentsList == nil)
    {
        contentsList = [NSMutableArray new];
    }
    return contentsList;
}


-(IBAction)bunButtonPressed:(id)sender
{
    [toppingsView setHidden:YES];
    [bunView setHidden:NO];
    [cheeseView setHidden:YES];
    [meatView setHidden:YES];
}

-(IBAction)toppingsButtonPressed:(id)sender
{
    [toppingsView setHidden:NO];
    [bunView setHidden:YES];
    [cheeseView setHidden:YES];
    [meatView setHidden:YES];
}

-(IBAction)cheeseButtonPressed:(id)sender
{
    [toppingsView setHidden:YES];
    [bunView setHidden:YES];
    [cheeseView setHidden:NO];
    [meatView setHidden:YES];
}

-(IBAction)meatButtonPressed:(id)sender
{
    [toppingsView setHidden:YES];
    [bunView setHidden:YES];
    [cheeseView setHidden:YES];
    [meatView setHidden:NO];
}

-(IBAction)bunTypePicked:(UIButton*)sender
{
    bunChosen = YES;
    bunLabel.text = [NSString stringWithFormat: @"%@ Bun", sender.currentTitle];
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    [sharedBurgerData setBunType:sender.currentTitle];
}

-(IBAction)meatTypePicked:(UIButton*)sender
{
    meatChosen = YES;
    meatLabel.text = [NSString stringWithFormat: @"Meat Cooked %@", sender.currentTitle];
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    [sharedBurgerData setMeatType:sender.currentTitle];
}

-(IBAction)cheeseTypePicked:(UIButton*)sender
{
    cheeseChosen = YES;
    cheeseLabel.text = [NSString stringWithFormat: @"%@ Cheese", sender.currentTitle];
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    [sharedBurgerData setCheeseType:sender.currentTitle];
}

//Change the text of the ingridient buttons based on which tab is active in the segmentcontrol.
-(IBAction)segmentUpdated:(id)sender
{
    if  (_ingridientControl.selectedSegmentIndex == 0)
    {
        
        [_button1 setTitle:@"Ketchup" forState:UIControlStateNormal];
        [_button2 setTitle:@"Mustard" forState:UIControlStateNormal];
        [_button3 setTitle:@"Relish" forState:UIControlStateNormal];
        [_button4 setTitle:@"Mayonnaise" forState:UIControlStateNormal];
        [_button5 setTitle:@"BBQ Sauce" forState:UIControlStateNormal];
        [_button6 setTitle:@"A1 Sauce" forState:UIControlStateNormal];
        
        
    }
    else if (_ingridientControl.selectedSegmentIndex == 1)
    {
       
        
        [_button1 setTitle:@"Tomato" forState:UIControlStateNormal];
        [_button2 setTitle:@"Onion" forState:UIControlStateNormal];
        [_button3 setTitle:@"Pickle" forState:UIControlStateNormal];
        [_button4 setTitle:@"Jalapeno" forState:UIControlStateNormal];
        [_button5 setTitle:@"Pineapple" forState:UIControlStateNormal];
        [_button6 setTitle:@"Lettuce" forState:UIControlStateNormal];
        
    }
    else if (_ingridientControl.selectedSegmentIndex == 2)
    {
    
        
        [_button1 setTitle:@"Bacon" forState:UIControlStateNormal];
        [_button2 setTitle:@"Guacamole" forState:UIControlStateNormal];
        [_button3 setTitle:@"Fried Egg" forState:UIControlStateNormal];
        [_button4 setTitle:@"Mushroom" forState:UIControlStateNormal];
        [_button5 setTitle:@"Crispy Onion Straws" forState:UIControlStateNormal];
        [_button6 setTitle:@"Onion Ring" forState:UIControlStateNormal];
        
    }
    
}


//Push the title of the ingridient button that was pressed into an array.
-(IBAction)addIngridient:(UIButton *)button
{
    NSString *extraContent = [button currentTitle];
    [self.contentsList addObject:extraContent];
    [self.ingridientsTable reloadData];
    
    
    /*
    NSInteger section = 0;
    NSInteger row = 0;
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:section];
    
    
    NSString *extraContent = [button currentTitle];
    [[self contentsList] addObject:extraContent];
    
    NSArray *indexPathsToInsert = [NSArray arrayWithObject:indexPath];
    
    [[self ingridientsTable] insertRowsAtIndexPaths:indexPathsToInsert withRowAnimation:UITableViewRowAnimationRight];
    */

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSString *rowContent = [[self contentsList] objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:rowContent];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    NSInteger rows = [[self contentsList] count];
    return rows;
    
}


-(IBAction)addToOrderPressed:(id)sender
{
    if (bunChosen == !YES)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You're not done yet!" message:@"Please select a type of bun for your burger." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        // optional - add more buttons:
        [alert show];
    }
    else if (meatChosen == !YES)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You're not done yet!" message:@"Please select how you would like your burger cooked" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        // optional - add more buttons:
        [alert show];
    }
    else if (cheeseChosen == !YES)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You're not done yet!" message:@"Please select a type of cheese for your burger." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        // optional - add more buttons:
        [alert show];
    }
    
    else {
    
    
        NSLog(@"%@", contentsList);
        BurgerData* sharedBurgerData = [BurgerData sharedInstance];
        if (!sharedBurgerData.contentsList)
        {
            sharedBurgerData.contentsList = [NSMutableArray new];
        }
        if (sharedBurgerData.contentsList.count > 0)
        {
            [sharedBurgerData.contentsList removeAllObjects];
        }
        [sharedBurgerData.contentsList addObjectsFromArray:self.contentsList];
        NSLog (@"%@", sharedBurgerData.contentsList);
        
        [self performSegueWithIdentifier: @"goToConfirmation" sender: self];
    }
}
    



@end
