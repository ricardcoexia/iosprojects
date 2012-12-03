//
//  SimpleTableCell.m
//  TableShit
//
//  Created by Ricard on 26/11/12.
//  Copyright (c) 2012 Coexia. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

@synthesize nameLabel = _nameLabel;
@synthesize titSize = _titSize;
@synthesize loves = _loves;
@synthesize thumbnailImageView = _thumbnailImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}




@end
