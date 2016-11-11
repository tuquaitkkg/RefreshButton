//
//  RefreshButton.h
//  buttonRefresh
//
//  Created by DUCLT on 11/11/16.
//  Copyright © 2016 MacOne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RefreshButton : UIButton

@property (strong,nonatomic,readonly) UIActivityIndicatorView *indicator;
- (void)startRefresh;
- (void)stopRefresh;

@end
