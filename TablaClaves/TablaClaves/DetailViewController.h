//
//  DetailViewController.h
//  TablaClaves
//
//  Created by Ricard on 19/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailDelegate  <NSObject>;


@end

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *cellName;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, weak) id <DetailDelegate> delegate;

- (IBAction)returnButton:(id)sender;

@end
