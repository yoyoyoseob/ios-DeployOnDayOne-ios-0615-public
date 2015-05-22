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
    // Begin writing your code here. This method will kick off automatically.


}


// This method will read a line of text from the console and return it as an NSString instance.
// You shouldn't have any need to modify (or really understand) this method.
-(NSString *)requestKeyboardInput
{
    char stringBuffer[4096] = { 0 };  // Technically there should be some safety on this to avoid a crash if you write too much.
    scanf("%[^\n]%*c", stringBuffer);
    return [NSString stringWithUTF8String:stringBuffer];
}

@end
