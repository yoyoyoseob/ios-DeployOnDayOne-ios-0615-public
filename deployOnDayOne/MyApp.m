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

-(void)execute {

    // Begin writing your code here. This method will kick off automatically.

}
// Do not modify this method
-(NSString *)requestKeyboardInput {
    -(NSString *)requestKeyboardInput {
        char string[4096]; //Technically there should be some safety on this to avoid an error if you write too much.
        fgets(string, sizeof(string), stdin);
        NSString *result = [NSString stringWithUTF8String:string];
        return [result stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    }
}

@end
