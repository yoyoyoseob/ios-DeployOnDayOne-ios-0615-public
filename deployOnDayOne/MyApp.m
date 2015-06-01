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
    self.listOfUsers = [[NSMutableArray alloc] init];
    self.allUsers = [[NSMutableDictionary alloc] init];
    
    [self createQAArrays];
    
    [self getUser];
    [self menu];




    
    
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
    NSLog(@"Hey, what's your name?");
    
    BOOL nameMatch = NO;
    self.currentUser = [self requestKeyboardInput];
    for (NSString *users in self.allUsers){
        if ([self.currentUser isEqualToString:users]){
            NSLog(@"Welcome back!");
            nameMatch = YES;
        }
    }
    if (nameMatch == NO){
        NSMutableArray *answers = self.listOfAnswers;
        NSString *user = self.currentUser;
        ([self.allUsers setObject:answers forKey:user]);
        NSLog(@"Welcome to our app %@", self.currentUser);
    }
}

-(void)menu
{
    NSLog(@"What do you want to do?");
    NSLog(@"\r 1. Be Interviewed. \r 2. Add questions.  \r 3. Read answers. \r 4. Exit.");
    NSString *menuResponse = [self requestKeyboardInput];
    
    if ([menuResponse isEqualToString:@"1"]){
        [self askQuestions];
    } else if ([menuResponse isEqualToString:@"2"]){
        [self addQuestions];
    } else if ([menuResponse isEqualToString:@"3"]){
        [self readAnswers];
    }else if ([menuResponse isEqualToString:@"4"]){
        self.listOfAnswers = [[NSMutableArray alloc] initWithObjects:@"", @"", @"", nil];
        NSLog(@"%@", self.allUsers);
        [self getUser];
        [self menu];
    } else {
        NSLog(@"You did it wrong...");
    }
    
    
}

-(void)createQAArrays
{
     self.questionsArray = [[NSMutableArray alloc] initWithObjects:@"Where were you born?", @"Have you ever wanted to be an astronaut?", @"Do you like Korean food?", nil];
    self.listOfAnswers = [[NSMutableArray alloc] initWithObjects:@"", @"", @"", nil];
    
}

-(void)askQuestions
{
    
    for (int i = 0; i < [self.questionsArray count]; i++){
        if ([[self.listOfAnswers objectAtIndex:i] isEqualToString:@""]) {
            NSLog(@"%@", [self.questionsArray objectAtIndex:i]);
            [self.listOfAnswers replaceObjectAtIndex:i withObject:[self requestKeyboardInput]];
             }
    }
    

    NSLog(@"Thanks for answering the questions!");
    [self menu];
}

-(void)addQuestions
{
    NSLog(@"What's yo question?");
    [self.questionsArray addObject:[self requestKeyboardInput]];
    [self.listOfAnswers addObject:@""];
    NSLog(@"Would you like to add another question? /r 1. Yes /r 2. No");
    NSString *answer = [self requestKeyboardInput];
    if ([answer isEqualToString:@"1"]) {
        [self addQuestions];
    } else {
        [self menu];
    }
    
}

-(void)readAnswers
{
    for (int i = 0; i < [self.questionsArray count]; i++){
        NSLog(@"%@", self.questionsArray[i]);
        
        if ([[self.listOfAnswers objectAtIndex:i] isEqualToString:@""]){
            NSLog(@"You didn't answer the question");
        }
        else {
            NSLog(@"%@", self.listOfAnswers[i]);
        }
    }
    [self menu];
}


@end
