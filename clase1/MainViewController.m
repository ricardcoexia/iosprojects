//
//  MainViewController.m
//  clase1
//
//  Created by juanfran on 19/11/12.
//  Copyright (c) 2012 juanfran. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize displayLabel;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
-(IBAction)pushButton:(id)sender{

    UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                         message:@"You can't leave the textbox empty!"
                                                        delegate:nil
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
    [errorAlert show];

}*/

-(IBAction)pushButtonSuma:(id)sender{
    
}
-(IBAction)pushButtonResta:(id)sender{
    
}
-(IBAction)pushButtonReset:(id)sender{
    
}


@end
