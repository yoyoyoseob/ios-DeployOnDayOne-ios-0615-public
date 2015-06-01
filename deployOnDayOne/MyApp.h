//
//  MyApp.h
//  deployOnDayOne
//
//  Created by Zachary Drossman on 1/28/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyApp : NSObject

@property (strong, nonatomic) NSMutableArray *listOfUsers;
@property (strong, nonatomic) NSString *userResponse;
@property (strong, nonatomic) NSString *currentUser;

-(NSString*)requestKeyboardInput;
-(void)getUser;
-(void)logInOrSignUp;

-(void)execute;

@end
