//
//  XIWTapCounter.m
//  HelloWorldApp
//
//  Created by User on 9/6/13.
//  Copyright (c) 2013 Xinran Wabg. All rights reserved.
//

#import "XIWTapCounter.h"

@implementation XIWTapCounter

- (id)init
{
    //any kind of custom initializations
    _numberOfTaps = 0;
    return self;
}

- (void)incrementTapCount
{
    //grab and increment the tap count
    int tempTapCount = [_numberOfTaps integerValue];
    tempTapCount++;
    
    //set the current tap count
    _numberOfTaps = [NSNumber numberWithInteger:tempTapCount];
}

@end
