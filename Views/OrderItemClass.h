//
//  OrderItemClass.h
//  Views
//
//  Created by Adam Schuster on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderItemClass : NSObject{
    NSMutableArray *toppingList;

}

@property (nonatomic, retain) NSString *bunType;
@property (nonatomic, retain) NSString *meatType;
@property (nonatomic, retain) NSString *cheeseType;
@property (nonatomic, retain) NSMutableArray *toppingsList;
@property (nonatomic, retain) NSString *orderLabel;

@end
