//
//  XIWViewController.m
//  HelloWorldApp
//
//  Created by User on 9/6/13.
//  Copyright (c) 2013 Xinran Wabg. All rights reserved.
//

#import "XIWViewController.h"

@interface XIWViewController ()
//private properties and methods
@property (nonatomic, strong) XIWTapCounter *tapCounterModel;

- (void)updateTapCounterLabel;
@end

@implementation XIWViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    helloWorldLabel.hidden = YES;
    
    //instantiate the model
    _tapCounterModel = [[XIWTapCounter alloc] init]; //equivalent to " = new Object();"
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateTapCounterLabel
{
    NSString *displayString = [NSString stringWithFormat:@"Tap Counter: %d", [_tapCounterModel.numberOfTaps integerValue]];
    tapCounterLabel.text = displayString;
}

- (IBAction)buttonWasTapped:(id)sender
{
    //handle button tap
    helloWorldLabel.hidden = NO;
    [_tapCounterModel incrementTapCount];
    [self updateTapCounterLabel];
    
    if ([_tapCounterModel.numberOfTaps integerValue] == 10){
        //create and display an alert
        UIAlertView *chillAlert = [[UIAlertView alloc] initWithTitle:@"Chill, bro."
                                                             message:@"Nothing else is going to happen, stop tapping the button!"
                                                            delegate:self
                                                   cancelButtonTitle:@"Ok, I got it"
                                                   otherButtonTitles:nil, nil];
        [chillAlert show];
    }
}

@end
