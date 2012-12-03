//
//  ViewController.m
//  TableShit
//
//  Created by Ricard on 26/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"
#import "DetailPageViewController.h"

@interface ViewController ()

@property(nonatomic, strong) IBOutlet UITableView *tableView;


@end

@implementation ViewController{

    NSMutableArray *tableData;
    NSMutableArray *lovesData;
     NSMutableArray *sizesData;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   tableData = [NSArray arrayWithObjects:@"Veronica", @"Tifani", @"Michelle", @"Amber", @"Jessica", nil];
    
   lovesData = [NSArray arrayWithObjects:@"Sucking Cocks", @"Fucking Hard", @"Playing Nurse", @"Anal", @"Dirty Fingers", nil];
    
    sizesData = [NSArray arrayWithObjects:@"80", @"85", @"90", @"100", @"120", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.thumbnailImageView.image = [UIImage imageNamed:@"hot_tits.png"];
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    
    cell.loves.text = [lovesData objectAtIndex:indexPath.row];
    
    cell.titSize.text = [sizesData objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 121;
}


/*

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    [self performSegueWithIdentifier:@"showDetailPage" sender:indexPath];
          
}

*/
/*

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

   
    NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];
    DetailPageViewController *detailViewController = [segue destinationViewController];
    detailViewController.play = [ViewController objectInListAtIndex:selectedRowIndex.row];


}
*/

@end
