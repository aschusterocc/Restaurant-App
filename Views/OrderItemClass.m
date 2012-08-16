//
//  OrderItemClass.m
//  Views
//
//  Created by Adam Schuster on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OrderItemClass.h"



@implementation OrderItemClass

@synthesize bunType, cheeseType, meatType;
@synthesize toppingsList;
@synthesize orderLabel;







- (void) encodeWithCoder:(NSCoder *)encoder {
    
    [encoder encodeObject:bunType forKey:@"bunType"];
    [encoder encodeObject:cheeseType forKey:@"cheeseType"];
    [encoder encodeObject:meatType forKey:@"meatType"];
    [encoder encodeObject:toppingsList forKey:@"toppingsList"];
    [encoder encodeObject:orderLabel forKey:@"orderLabel"];

}

- (id)initWithCoder:(NSCoder *)decoder {
    
    if (self = [super init]){
        [self setBunType:[decoder decodeObjectForKey:@"bunType"]];
        [self setCheeseType:[decoder decodeObjectForKey:@"cheeseType"]];
        [self setMeatType:[decoder decodeObjectForKey:@"meatType"]];
        [self setToppingsList:[decoder decodeObjectForKey:@"toppingsList"]];
        [self setOrderLabel:[decoder decodeObjectForKey:@"orderLabel"]];
    }
    
    return self;
}

@end
