//
//  YFProductTableViewCell.m
//  rails-saas-ios
//
//  Created by Chris Richards on 07/01/2013.
//  Copyright (c) 2013 Yellow Feather Ltd. All rights reserved.
//

#import "YFProductTableViewCell.h"

@implementation YFProductTableViewCell {
@private
    __strong YFProduct *_product;
}

@synthesize product = _product;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    self.textLabel.adjustsFontSizeToFitWidth = YES;
    self.textLabel.textColor = [UIColor darkGrayColor];
    self.detailTextLabel.font = [UIFont systemFontOfSize:12.0f];
    self.detailTextLabel.numberOfLines = 0;
    self.selectionStyle = UITableViewCellSelectionStyleGray;
    
    return self;
}

- (void)setProduct:(YFProduct *)product {
    _product = product;
    
    self.textLabel.text = _product.name;
    self.detailTextLabel.text = _product.description;
    
    [self setNeedsLayout];
}

@end