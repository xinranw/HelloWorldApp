//
//  XIWTapCounter.h
//  HelloWorldApp
//
//  Created by User on 9/6/13.
//  Copyright (c) 2013 Xinran Wabg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XIWTapCounter : NSObject

@property (nonatomic, strong) NSNumber *numberOfTaps;

//increments the tap count by 1
- (void)incrementTapCount;

@end
