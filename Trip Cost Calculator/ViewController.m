//
//  ViewController.m
//  Trip Cost Calculator
//
//  Created by Nick on 2/10/14.
//  Copyright (c) 2014 n/a. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculate:(id)sender {
    //check that all the fields are filled up properly
    if ([self.pricePerGallon.text doubleValue] == 0 || [self.mpg.text doubleValue] == 0 || [self.distance.text doubleValue] == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Not all fields are filled"
                                                        message:nil delegate:nil
                                              cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
        return;
    }
    
    //create NSNumberFormatter to be able to show currency
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [numberFormatter setMaximumFractionDigits:2];
    
    //Calculate total cost of trip
    NSNumber *total = [NSNumber numberWithDouble:(([self.distance.text doubleValue] / [self.mpg.text doubleValue]) * [self.pricePerGallon.text doubleValue])];
    
    //Set the total cost label
    self.totalCost.text = [numberFormatter stringFromNumber:total];
    
    //Dismiss the keyboard
    [self.view endEditing:YES];
}
@end
