//
//  ViewController.m
//  Views
//
//  Created by Adam Schuster on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BurgerData.h"

@interface ViewController ()

@end

@implementation ViewController

/*
@synthesize ingridientLabel = _ingridientLabel;
@synthesize ingridientControl = _ingridientControl;
@synthesize button1 = _button1, button2 = _button2, button3 = _button3, button4 = _button4, button5 = _button5, button6 = _button6;

*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
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

/*
-(IBAction)segmentUpdated:(id)sender
{
    if  (_ingridientControl.selectedSegmentIndex == 0)
    {
        _ingridientLabel.text = @"Condiments";
        [_button1 setTitle:@"Ketchup" forState:UIControlStateNormal];
        [_button2 setTitle:@"Mustard" forState:UIControlStateNormal];
        [_button3 setTitle:@"Relish" forState:UIControlStateNormal];
        [_button4 setTitle:@"Mayonnaise" forState:UIControlStateNormal];
        [_button5 setTitle:@"BBQ Sauce" forState:UIControlStateNormal];
        [_button6 setTitle:@"A1 Sauce" forState:UIControlStateNormal];
         
        
    }
    else if (_ingridientControl.selectedSegmentIndex == 1)
    {
        _ingridientLabel.text = @"Toppings";
        
        [_button1 setTitle:@"Tomato" forState:UIControlStateNormal];
        [_button2 setTitle:@"Onion" forState:UIControlStateNormal];
        [_button3 setTitle:@"Pickle" forState:UIControlStateNormal];
        [_button4 setTitle:@"Jalapeno" forState:UIControlStateNormal];
        [_button5 setTitle:@"Pineapple" forState:UIControlStateNormal];
        [_button6 setTitle:@"Lettuce" forState:UIControlStateNormal];
         
    }
    else if (_ingridientControl.selectedSegmentIndex == 2)
    {
        _ingridientLabel.text = @"Premium";
        
        [_button1 setTitle:@"Bacon" forState:UIControlStateNormal];
        [_button2 setTitle:@"Guacamole" forState:UIControlStateNormal];
        [_button3 setTitle:@"Fried Egg" forState:UIControlStateNormal];
        [_button4 setTitle:@"Mushroom" forState:UIControlStateNormal];
        [_button5 setTitle:@"Crispy Onion Straws" forState:UIControlStateNormal];
        [_button6 setTitle:@"Onion Ring" forState:UIControlStateNormal];
        
    }
    
}

-(IBAction)bunButtonPressed:(UIButton *)sender
{
    
    BurgerData *newburger = [[BurgerData alloc] init];
    newburger.bunType = [NSString stringWithFormat:@"%@",[sender currentTitle]];
    NSLog(@"Button pressed = %@", newburger.bunType);
}

 */
@end
