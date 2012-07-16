//
//  ConfirmationViewController.h
//  Views
//
//  Created by Adam Schuster on 7/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfirmationViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property IBOutlet UITableView *ingridientsTable;

@property (nonatomic, retain) NSMutableArray *contentsList;

@property (nonatomic, retain) IBOutlet UILabel *bunLabel;
@property (nonatomic, retain) IBOutlet UILabel *meatLabel;
@property (nonatomic, retain) IBOutlet UILabel *cheeseLabel;


-(IBAction)confirmButtonpressed:(id)sender;

@end
