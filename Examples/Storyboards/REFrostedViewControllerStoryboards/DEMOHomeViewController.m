//
//  DEMOHomeViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOHomeViewController.h"
#import "UIColor+CreateMethods.h"


@interface DEMOHomeViewController ()

@end

@implementation DEMOHomeViewController


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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    pulldownMenu = [[PulldownMenu alloc] initWithView:self.view];
    [self.view addSubview:pulldownMenu];
    
    [pulldownMenu insertButton:@"Menu Item 1"];
    [pulldownMenu insertButton:@"Menu Item 2"];
    [pulldownMenu insertButton:@"Menu Item 3"];
    
    pulldownMenu.delegate = self;
    
    [pulldownMenu loadMenu];
}

- (IBAction)menuTap:(id)sender {
    [pulldownMenu animateDropDown];
}

@end
