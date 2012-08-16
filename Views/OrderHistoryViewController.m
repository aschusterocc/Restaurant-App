//
//  OrderHistoryViewController.m
//  Views
//
//  Created by Adam Schuster on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OrderHistoryViewController.h"
#import "BurgerData.h"
#import "OrderItemClass.h"
#import <QuartzCore/QuartzCore.h>

@interface OrderHistoryViewController ()

@end

@implementation OrderHistoryViewController

@synthesize itemsView;
@synthesize cheeseLabel, meatLabel, bunLabel;
@synthesize ingridientsTable;

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
    
    [ingridientsTable setHidden:YES];
    
    bunLabel.layer.borderColor = [UIColor blackColor].CGColor;
    bunLabel.layer.borderWidth = 3.0;
    
    cheeseLabel.layer.borderColor = [UIColor blackColor].CGColor;
    cheeseLabel.layer.borderWidth = 3.0;
    
    meatLabel.layer.borderColor = [UIColor blackColor].CGColor;
    meatLabel.layer.borderWidth = 3.0;
    
    
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    int itemCounter = 0;
    int currentCoordinates = 80;
    for (int i = 0; i<[sharedBurgerData.orderArchive count]; i++)
    {
        OrderItemClass *newItem = [sharedBurgerData.orderArchive objectAtIndex:itemCounter];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(10, currentCoordinates, 280, 90);
        [button setTitle:[NSString stringWithFormat:@"%@ ",newItem.orderLabel] forState:UIControlStateNormal];
        [itemsView addSubview:button];
        [button setTag:itemCounter];
        [button addTarget:self action:@selector(orderButtontapped:) forControlEvents:UIControlEventTouchUpInside];
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
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

-(IBAction)orderButtontapped:(UIButton *)sender
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    if (!sharedBurgerData.contentsList){
        sharedBurgerData.contentsList = [NSMutableArray new];
        
    }
    OrderItemClass *newItem = [sharedBurgerData.orderArchive objectAtIndex:[sender tag]];
    [sharedBurgerData.contentsList removeAllObjects];
    [sharedBurgerData.contentsList addObjectsFromArray:(newItem.toppingsList)];
    sharedBurgerData.cheeseType = [NSString stringWithFormat:@"%@", newItem.cheeseType];
    sharedBurgerData.bunType = [NSString stringWithFormat:@"%@", newItem.bunType];
    sharedBurgerData.meatType = [NSString stringWithFormat:@"%@", newItem.meatType];
    
    bunLabel.text = [NSString stringWithFormat: @"%@ Bun", sharedBurgerData.bunType];
    cheeseLabel.text = [NSString stringWithFormat: @"%@ Cheese", sharedBurgerData.cheeseType];
    meatLabel.text = [NSString stringWithFormat: @"Meat Cooked %@", sharedBurgerData.meatType];
    
    [self.ingridientsTable reloadData];
    [ingridientsTable setHidden:NO];

    
    
    

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];
    
    
    NSInteger rows = [sharedBurgerData.contentsList count];
    return rows;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BurgerData* sharedBurgerData = [BurgerData sharedInstance];

    
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSString *rowContent = [sharedBurgerData.contentsList objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:rowContent];
    
    return cell;
}



@end
