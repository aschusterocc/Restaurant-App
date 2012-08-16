//
//  Controller.h
//  Views
//
//  Created by Adam Schuster on 8/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Controller : NSObject {
    NSString *personName;
    NSMutableArray *phoneNumbers;
}

@property (copy, nonatomic) NSString *personName;
@property (retain, nonatomic) NSMutableArray *phoneNumbers;

@end
