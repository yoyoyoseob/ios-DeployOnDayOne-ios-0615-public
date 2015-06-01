//
//  MyApp.m
//  deployOnDayOne
//
//  Created by Zachary Drossman on 1/28/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "MyApp.h"


@interface MyApp()

@end


@implementation MyApp

-(void)execute
{
    NSLog(@"Hey, what's your name?");
    [self getUser];
    
//    NSLog(@"Hey, %@", self.currentUser);
    
    
//    NSLog(@"Press 1 for login, press 2 for signup, press 3 for logout");
//    [self logInOrSignUp];
//    NSLog(@"Your response was %@", self.userResponse);
//    
//    if ([self.userResponse isEqualToString:@"1"]){
//        NSLog(@"you pressed 1");
//    }
//    else if ([self.userResponse isEqualToString:@"2"]){
//        NSLog(@"you pressed 2");
//    }
//    else if ([self.userResponse isEqualToString:@"3"]){
//        NSLog(@"you didn't press anything");
//    }

    
    
}


// This method will read a line of text from the console and return it as an NSString instance.
// You shouldn't have any need to modify (or really understand) this method.
-(NSString *)requestKeyboardInput
{
    char stringBuffer[4096] = { 0 };  // Technically there should be some safety on this to avoid a crash if you write too much.
    scanf("%[^\n]%*c", stringBuffer);
    return [NSString stringWithUTF8String:stringBuffer];
}

-(void)getUser
{
    self.listOfUsers = [[NSMutableArray alloc] init];
    BOOL nameMatch = NO;
    self.currentUser = [self requestKeyboardInput];
    for (NSString *users in self.listOfUsers){
        if ([self.currentUser isEqualToString:users]){
            NSLog(@"Welcome back!");
            nameMatch = YES;
        }
    }
    if (nameMatch == NO){
        ([self.listOfUsers addObject:self.currentUser]);
        NSLog(@"Welcome to our app %@", self.currentUser);
    }
}

-(void)logInOrSignUp
{
    self.userResponse = [self requestKeyboardInput];
}

@end
