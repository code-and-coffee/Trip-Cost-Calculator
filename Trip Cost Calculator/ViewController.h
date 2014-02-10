//
//  ViewController.h
//  Trip Cost Calculator
//
//  Created by Nick on 2/10/14.
//  Copyright (c) 2014 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *pricePerGallon;
@property (weak, nonatomic) IBOutlet UITextField *mpg;
@property (weak, nonatomic) IBOutlet UITextField *distance;
@property (weak, nonatomic) IBOutlet UILabel *totalCost;

- (IBAction)calculate:(id)sender;
@end
