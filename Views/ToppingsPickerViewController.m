//
//  ToppingsPickerViewController.m
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ToppingsPickerViewController.h"
#import "BurgerData.h"

@interface ToppingsPickerViewController ()

@end

@implementation ToppingsPickerViewController

@synthesize button1 = _button1, button2 = _button2, button3 = _button3, button4 = _button4, button5 = _button5, button6 = _button6;
@synthesize ingridientControl = _ingridientControl;
@synthesize ingridientLabel;
@synthesize meatTypeButton;
@synthesize bunTypeButton;
@synthesize ingridientsScrollView;
@synthesize ingridientsTable;
@synthesize contentsList;


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
    [bunTypeButton setTitle: [NSString stringWithFormat:@"Bun Type: %@", sharedBurgerData.bunType] forState:UIControlStateNormal];
    [meatTypeButton setTitle: [NSString stringWithFormat:@"Meat Cooked: %@", sharedBurgerData.meatCooked] forState:UIControlStateNormal];
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
    
    
    NSInteger section = 0;
    NSInteger row = 0;
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:section];
    
    
    NSString *extraContent = [button currentTitle];
    [[self contentsList] insertObject:extraContent atIndex:row];
    
    NSArray *indexPathsToInsert = [NSArray arrayWithObject:indexPath];
    
    [[self ingridientsTable] insertRowsAtIndexPaths:indexPathsToInsert withRowAnimation:UITableViewRowAnimationRight];
    

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



@end
