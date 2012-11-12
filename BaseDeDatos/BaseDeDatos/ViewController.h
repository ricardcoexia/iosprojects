//
//  ViewController.h
//  BaseDeDatos
//
//  Created by juanfran on 12/11/12.
//  Copyright (c) 2012 juanfran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITabBarControllerDelegate,UITableViewDataSource>{
    UITableView *tableview;
    NSArray *rows;
}

@property (nonatomic,retain) IBOutlet UITableView *tableview;
@property (nonatomic,retain) NSArray *rows;

@end
