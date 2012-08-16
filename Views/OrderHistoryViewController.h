//
//  OrderHistoryViewController.h
//  Views
//
//  Created by Adam Schuster on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderHistoryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property IBOutlet UIScrollView *itemsView;

@property (nonatomic, retain) IBOutlet UILabel *bunLabel;
@property (nonatomic, retain) IBOutlet UILabel *cheeseLabel;
@property (nonatomic, retain) IBOutlet UILabel *meatLabel;

@property IBOutlet UITableView *ingridientsTable;


-(IBAction)orderButtontapped:(UIButton *)sender;


@end
