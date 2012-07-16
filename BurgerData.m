//
//  BurgerData.m
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BurgerData.h"
#import "ToppingsPickerViewController.h"
#import "OrderItemClass.h"

@implementation BurgerData

@synthesize bunType;
@synthesize meatType;
@synthesize contentsList;
@synthesize cheeseType;
@synthesize itemCount;
@synthesize itemsList;



static BurgerData *sharedInstance = nil;

// Get the shared instance and create it if necessary.
+ (BurgerData *)sharedInstance {
    if (sharedInstance == nil) {
        sharedInstance = [[super allocWithZone:NULL] init];
    }
    
    return sharedInstance;
}

// We can still have a regular init method, that will get called the first time the Singleton is used.
- (id)init
{
    self = [super init];
    
    if (self) {
        // Work your initialising magic here as you normally would
    }
    
    return self;
}



// Equally, we don't want to generate multiple copies of the singleton.
- (id)copyWithZone:(NSZone *)zone {
    return self;
}


-(void)setMeatType:(NSString *)meatTypeString
{
    meatType = meatTypeString;
}

-(void)setBunType:(NSString *)bunTypeString
{
    bunType = bunTypeString;
}

-(void)setCheeseType:(NSString *)cheeseTypeString
{
    cheeseType = cheeseTypeString;
}

-(void)storeItem
{
    if (!itemCount)
    {
        itemCount = 0;
    }
    
    if (itemCount == 0)
    {
        OrderItemClass  *item1 =  [OrderItemClass new];
        item1.meatType = self.meatType;
        item1.bunType = self.bunType;
        item1.cheeseType = self.cheeseType;
        item1.toppingsList = [self.contentsList copy];
        
        [itemsList insertObject:item1 atIndex:0];
        
    }
    if (itemCount == 1)
    {
        OrderItemClass  *item2 =  [OrderItemClass new];
        item2.meatType = self.meatType;
        item2.bunType = self.bunType;
        item2.cheeseType = self.cheeseType;
        item2.toppingsList = [self.contentsList copy];
        
        [itemsList insertObject:item2 atIndex:1];
        
    }
    if (itemCount == 2)
    {
        OrderItemClass  *item3 =  [OrderItemClass new];
        item3.meatType = self.meatType;
        item3.bunType = self.bunType;
        item3.cheeseType = self.cheeseType;
        item3.toppingsList = [self.contentsList copy];
        
        [itemsList insertObject:item3 atIndex:2];
        
    }


}



@end
