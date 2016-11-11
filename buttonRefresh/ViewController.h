//
//  ViewController.h
//  buttonRefresh
//
//  Created by DUCLT on 11/11/16.
//  Copyright © 2016 MacOne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RefreshButton.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet RefreshButton *btnRefresh;
- (IBAction)onClickButton:(id)sender;


@end

