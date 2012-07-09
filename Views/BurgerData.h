//
//  BurgerData.h
//  Views
//
//  Created by Adam Schuster on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BurgerData : NSObject{

}

+ (id)sharedInstance;

@property (nonatomic, strong) NSString *bunType;
@property (nonatomic, strong) NSString *meatCooked;

-(void)setMeatCooked:(NSString *)meatCookedString;
-(void)setBunType:(NSString *)bunTypeString;





@end
