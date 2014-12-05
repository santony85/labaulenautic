//
//  DEMOSecondViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOSecondViewController.h"

@interface DEMOSecondViewController ()

@end

@implementation DEMOSecondViewController

- (IBAction)showMenu
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //self.navigationController.navigationBar.barTintColor = [UIColor colorWithHex:@"#e8168b" alpha:0.1];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

@end
