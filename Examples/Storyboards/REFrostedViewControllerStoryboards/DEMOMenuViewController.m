//
//  DEMOMenuViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOMenuViewController.h"
#import "DEMOHomeViewController.h"
#import "DEMOSecondViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "DEMONavigationController.h"
#import "MenuViewCell.h"

@interface DEMOMenuViewController ()

@end

@implementation DEMOMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.tableView.separatorColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:1.0f];

    
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //self.tableView.opaque = NO;
    self.tableView.backgroundColor = [UIColor clearColor];
    /*self.tableView.tableHeaderView = ({
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 144.0f)];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 30, 100, 100)];
        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        imageView.image = [UIImage imageNamed:@"logo-labaule.png"];
        imageView.layer.masksToBounds = YES;
        imageView.layer.cornerRadius = 0.0;
        imageView.layer.borderColor = [UIColor whiteColor].CGColor;
        imageView.layer.borderWidth = 3.0f;
        imageView.layer.rasterizationScale = [UIScreen mainScreen].scale;
        imageView.layer.shouldRasterize = YES;
        imageView.clipsToBounds = YES;
        
        /*UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 0, 24)];
        label.text = @"Roman Efimov";
        label.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
        [label sizeToFit];
        label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        
        [view addSubview:imageView];
        //[view addSubview:label];
        view;
    });*/
    
    //UIImageView *tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo-labaule.png"]];
    //[tempImageView setFrame:self.tableView.frame];
    



}

#pragma mark -
#pragma mark UITableView Delegate
- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[UIColor clearColor]];
}



/*- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:1.0f];
    cell.textLabel.font = [UIFont fontWithName:@"Roboto-Light" size:17];

    
}*/

/*- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)sectionIndex
{
    if (sectionIndex == 0)
        return nil;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 34)];
    view.backgroundColor = [UIColor colorWithRed:167/255.0f green:167/255.0f blue:167/255.0f alpha:0.6f];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 8, 0, 0)];
    label.text = @"Friends Online";
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor clearColor];
    [label sizeToFit];
    [view addSubview:label];
    
    return view;
}*/

/*- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex
{
    if (sectionIndex == 0)
        return 0;
    
    return 34;
}*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DEMONavigationController *navigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        DEMOHomeViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"homeController"];
        navigationController.viewControllers = @[homeViewController];
    } else if (indexPath.section == 0 && indexPath.row == 1){
        DEMOSecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondController"];
        navigationController.viewControllers = @[secondViewController];
    }

    
    else {
        DEMOSecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"thirdController"];
        navigationController.viewControllers = @[secondViewController];
    }
    
    self.frostedViewController.contentViewController = navigationController;
    [self.frostedViewController hideMenuViewController];
}

#pragma mark -
#pragma mark UITableView Datasource

/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *cellIdentifier = @"Cell";
    
    static NSString *CellIdentifier = @"MenuViewCell";
    
    MenuViewCell *cell = (MenuViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[MenuViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    /*if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }*/
    

        NSArray *titles = @[@"Accueil", @"Catalogue Bateaux", @"Créer une alerte", @"News", @"Presentation", @"Contact"];
        NSArray *img    = @[@"BT-menu-accueil.png", @"BT-menu-catalogue.png", @"BT-menu-alerte.png", @"BT-menu-news.png", @"BT-menu-presentation.png", @"BT-menu-contact.png"];
        cell.titre.text = titles[indexPath.row];
    
    UIImage * btnImage1 = [UIImage imageNamed:img[indexPath.row]];
    cell.icone.image = btnImage1;
    

    
    return cell;
}
 
@end
