//
//  RefreshButton.m
//  buttonRefresh
//
//  Created by DUCLT on 11/11/16.
//  Copyright © 2016 MacOne. All rights reserved.
//

#import "RefreshButton.h"

@implementation RefreshButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatRefreshButton];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self creatRefreshButton];
    }
    return self;
}

- (void)creatRefreshButton {
    _indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
}

- (void)startRefresh {
    self.userInteractionEnabled = NO;
    if (!_indicator.superview) {
        [self addSubview:_indicator];
    }
    [_indicator startAnimating];
}

- (void)stopRefresh {
    [_indicator stopAnimating];
    [_indicator removeFromSuperview];
    self.userInteractionEnabled = YES;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat halfButtonHeight = self.bounds.size.height / 2;
    CGFloat halfbuttonWidth = self.bounds.size.width / 2;
    _indicator.center = CGPointMake(halfbuttonWidth , halfButtonHeight);
}

@end
