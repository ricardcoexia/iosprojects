//
//  MainViewController.h
//  clase1
//
//  Created by juanfran on 19/11/12.
//  Copyright (c) 2012 juanfran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *displayLabel;

-(IBAction)pushButtonSuma:(id)sender;
-(IBAction)pushButtonResta:(id)sender;
-(IBAction)pushButtonReset:(id)sender;

@end
