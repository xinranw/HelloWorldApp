//
//  XIWViewController.h
//  HelloWorldApp
//
//  Created by User on 9/6/13.
//  Copyright (c) 2013 Xinran Wabg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XIWTapCounter.h"

@interface XIWViewController : UIViewController
{
    //outlets
    IBOutlet UILabel *helloWorldLabel;
    IBOutlet UILabel *tapCounterLabel;
}

//button handler
- (IBAction)buttonWasTapped:(id)sender;

@end
