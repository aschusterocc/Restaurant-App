//
//  ToppingsPickerViewController.h
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>








@interface ToppingsPickerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, retain) IBOutlet UISegmentedControl *ingridientControl;
@property (nonatomic, retain) IBOutlet UILabel *ingridientLabel;
@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, retain) IBOutlet UIButton *button3;
@property (nonatomic, retain) IBOutlet UIButton *button4;
@property (nonatomic, retain) IBOutlet UIButton *button5;
@property (nonatomic, retain) IBOutlet UIButton *button6;

@property (nonatomic, retain) NSMutableArray *contentsList;

@property IBOutlet UIButton *meatTypeButton;
@property IBOutlet UIButton *bunTypeButton;
@property IBOutlet UIScrollView *ingridientsScrollView;
@property IBOutlet UITableView *ingridientsTable;


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

-(IBAction)addIngridient:(UIButton *)sender;

-(IBAction)segmentUpdated:(id)sender;

-(NSMutableArray *)contentsList;


@end
