//
//  ViewController.m
//  buttonRefresh
//
//  Created by DUCLT on 11/11/16.
//  Copyright © 2016 MacOne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onClickButton:(id)sender {
    [_btnRefresh startRefresh];
    // Delay execution of my block for 10 seconds.
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [_btnRefresh stopRefresh];
    });
}
@end
