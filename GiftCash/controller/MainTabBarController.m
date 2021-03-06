//
//  MainTabBarController.m
//  GiftCash
//
//  Created by 张雨红 on 15/1/6.
//  Copyright (c) 2015年 Eva. All rights reserved.
//

#import "MainTabBarController.h"
#import "OutgoListTVC.h"
#import "IncomeListTVC.h"
#import "ContactListTVC.h"
#import "EventListTVC.h"

@interface MainTabBarController () <UITabBarControllerDelegate>

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
//    NSLog(@"Device orinetation changed!");
    [self.selectedViewController viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}

#pragma mark - TabBarController Delegate
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSUInteger selectedIndex = tabBarController.selectedIndex;
    switch (selectedIndex) {
        case 0:
        {
            UINavigationController *nc = (UINavigationController *)viewController;
            OutgoListTVC *vc = (OutgoListTVC *)nc.topViewController;
            vc.context = self.context;
            break;
        }
        case 1:
        {
            UINavigationController *nc = (UINavigationController *)viewController;
            IncomeListTVC *vc = (IncomeListTVC *)nc.topViewController;
            vc.context = self.context;
        }
        case 2:
        {
            UINavigationController *nc = (UINavigationController *)viewController;
            ContactListTVC *vc = (ContactListTVC *)nc.topViewController;
            vc.context = self.context;
            break;
        }
        case 3:
        {
            UINavigationController *nc = (UINavigationController *)viewController;
            EventListTVC *vc = (EventListTVC *)nc.topViewController;
            vc.context = self.context;
            break;
        }
        default:
            break;
    }
}

@end
