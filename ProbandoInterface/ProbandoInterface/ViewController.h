//
//  ViewController.h
//  ProbandoInterface
//
//  Created by Ricard on 19/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

 
   /*   IBOutlet UIPageControl *pageControl;
    NSMutableArray *viewControllers;
*/
}
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)slider:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *stepperLabel;
- (IBAction)stepper:(id)sender;


- (IBAction)changePage:(id)sender;
@property IBOutlet UIScrollView *scrollView;

@end
