//
//  DetailPageViewController.m
//  TableShit
//
//  Created by Ricard on 26/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import "DetailPageViewController.h"
#import "ViewController.h"

@interface DetailPageViewController ()
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end



@implementation DetailPageViewController

@synthesize tableView;
@synthesize textLabel;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showDetailPage"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ViewController *destViewController = segue.destinationViewController;
        //destViewController.textLabel = [tableData objectAtIndex:indexPath.row];
    }
}


@end


