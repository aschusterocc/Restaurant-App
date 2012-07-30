//
//  OrderViewController.h
//  Views
//
//  Created by Adam Schuster on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderViewController : UIViewController <UIScrollViewDelegate>

@property IBOutlet UIScrollView *itemsView;

@property IBOutlet UIButton *itemOne;
@property IBOutlet UIButton *itemTwo;
@property IBOutlet UIButton *itemThree;

-(IBAction)itemOneTapped:(id)sender;
-(IBAction)itemTwoTapped:(id)sender;
-(IBAction)itemThreeTapped:(id)sender;

@end
