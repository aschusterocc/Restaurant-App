//
//  BurgerData.m
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BurgerData.h"

@implementation BurgerData

@synthesize bunType;
@synthesize meatCooked;



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


-(void)setMeatCooked:(NSString *)meatCookedString
{
    meatCooked = meatCookedString;
}

-(void)setBunType:(NSString *)bunTypeString
{
    bunType = bunTypeString;
}




@end
