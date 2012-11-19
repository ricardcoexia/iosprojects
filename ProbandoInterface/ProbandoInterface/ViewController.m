//
//  ViewController.m
//  ProbandoInterface
//
//  Created by Ricard on 19/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize label;
@synthesize stepperLabel;
@synthesize scrollView;

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

- (IBAction)slider:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    NSString *newText = [[NSString alloc] initWithFormat:@"%1.2f",
                         slider.value];
    label.text = newText;
   
}

- (IBAction)stepper:(id)sender {
    
    UIStepper *stepper = (UIStepper *)sender;
    
    NSString *newText = [[NSString alloc] initWithFormat:@"%1.0f", stepper.value ];
                         
    stepperLabel.text = newText;
}

- (IBAction)changePage:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Alert Title here"
                                                   message: @"Alert Message here"
                                                  delegate: self
                                         cancelButtonTitle:@"Cancel"
                                         otherButtonTitles:@"OK",nil];
    
    
    [alert show];

}
@end
