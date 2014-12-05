//
//  DEMOHomeViewController.h
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"
#import "PulldownMenu.h"



@interface DEMOHomeViewController : UIViewController<PulldownMenuDelegate, UIScrollViewDelegate> {
    PulldownMenu *pulldownMenu;
}


- (IBAction)showMenu;

@end
