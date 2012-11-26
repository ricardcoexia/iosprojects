//
//  SimpleTableCell.h
//  TableShit
//
//  Created by Ricard on 26/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *titSize;
@property (nonatomic, weak) IBOutlet UILabel *loves;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
