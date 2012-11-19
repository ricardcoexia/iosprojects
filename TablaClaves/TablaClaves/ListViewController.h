//
//  ListViewController.h
//  TablaClaves
//
//  Created by Ricard on 19/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ListViewController : UITableViewController <DetailDelegate>

@property (nonatomic, strong) NSMutableArray *cells;
@property (nonatomic, assign) int selectedIndex;

@end
