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
@property (strong, nonatomic) NSMutableArray *listOfAnswers;
@property (strong, nonatomic) NSMutableArray *questionsArray;

-(NSString*)requestKeyboardInput;
-(void)getUser;
-(void)menu;
-(void)readAnswers;

-(void)execute;

@end
