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
@property (nonatomic, retain) IBOutlet UILabel *bunLabel;
@property (nonatomic, retain) IBOutlet UILabel *cheeseLabel;
@property (nonatomic, retain) IBOutlet UILabel *meatLabel;

@property (nonatomic, retain) NSMutableArray *contentsList;


@property IBOutlet UITableView *ingridientsTable;

@property IBOutlet UIView *toppingsView;
@property IBOutlet UIView *bunView;
@property IBOutlet UIView *meatView;
@property IBOutlet UIView *cheeseView;

@property BOOL bunChosen;
@property BOOL cheeseChosen;
@property BOOL meatChosen;



-(IBAction)addIngridient:(UIButton *)sender;
-(IBAction)segmentUpdated:(id)sender;
-(IBAction)addToOrderPressed:(id)sender;

-(IBAction)bunButtonPressed:(id)sender;
-(IBAction)meatButtonPressed:(id)sender;
-(IBAction)cheeseButtonPressed:(id)sender;
-(IBAction)toppingsButtonPressed:(id)sender;


-(IBAction)bunTypePicked:(UIButton*)sender;
-(IBAction)meatTypePicked:(id)sender;
-(IBAction)cheeseTypePicked:(id)sender;


 



@end
