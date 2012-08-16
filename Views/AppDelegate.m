//
//  AppDelegate.m
//  Views
//
//  Created by Adam Schuster on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "BurgerData.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Override point for customization after application launch.
    
    
    BurgerData* sharedburgerdata = [BurgerData sharedInstance];
    
    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                              NSUserDomainMask, YES) objectAtIndex:0];
    NSString *plistPath = [rootPath stringByAppendingPathComponent:@"data.archive"];
    
    if (plistPath){
    NSMutableArray *archivedArray = [NSKeyedUnarchiver unarchiveObjectWithFile: plistPath];
    [sharedburgerdata.orderArchive removeAllObjects];
    [sharedburgerdata.orderArchive addObjectsFromArray:archivedArray];
    }


    
    /*
    NSString *errorDesc = nil;
    NSPropertyListFormat format;
    NSString *plistPath;

    if (![[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        NSLog(@"This Fired");
        plistPath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
    }
    NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:plistPath];
    NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization
                                          propertyListFromData:plistXML
                                          mutabilityOption:NSPropertyListMutableContainersAndLeaves
                                          format:&format
                                          errorDescription:&errorDesc];
    NSLog(@"%@", temp);
    if (!temp) {
        NSLog(@"Error reading plist: %@, format: %d", errorDesc, format);
    }
    sharedburgerdata.orderArchive = [NSMutableArray arrayWithArray:[temp objectForKey:@"Orders"]];
     */
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
    
     
     

    
    //NSDictionary *plistDict = [NSDictionary dictionaryWithObjects:
    //                           [NSArray arrayWithObjects: sharedBurgerData.orderArchive, nil]
    //                                                      forKeys:[NSArray arrayWithObjects: @"Orders", nil]];

    //NSLog(@"%@", plistDict);
   // NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:plistDict
   //                                                               format:NSPropertyListXMLFormat_v1_0
   //                                                    errorDescription:&error];
    
   // NSData *plistData = [NSPropertyListSerialization dataWithPropertyList:plistDict format:NSPropertyListXMLFormat_v1_0 options:0 error:&error];
    
    //NSData *savedData = [NSKeyedArchiver archivedDataWithRootObject:sharedBurgerData.orderArchive];
    //[savedData writeToFile:plistPath atomically:YES];

    /*
    if(plistData) {
        [plistData writeToFile:plistPath atomically:YES];
        NSLog(@"plistData exists");
     }
     */
    
    

    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application


{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
   
}


@end
