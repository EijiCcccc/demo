//
//  CYTabBarViewController.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/16.
//

#import "CYTabBarViewController.h"
#import "CYTabBar.h"
#define kTabBarHeight 84

@interface CYTabBarViewController ()


@end

@implementation CYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *v1 = [self loadSubViewControllerWithSBName: @"Hall"];
    UIViewController *v2 = [self loadSubViewControllerWithSBName: @"Arena"];
    UIViewController *v3 = [self loadSubViewControllerWithSBName: @"Discovery"];
    UIViewController *v4 = [self loadSubViewControllerWithSBName: @"History"];
    UIViewController *v5 = [self loadSubViewControllerWithSBName: @"MyLottery"];
    
    self.viewControllers = @[v1, v2, v3, v4, v5];
    
    CYTabBar *tabbar = [[CYTabBar alloc] init];
    tabbar.tabbarButtonBlock = ^(NSInteger index) {
        self.selectedIndex = index;
    };
    CGRect frame = self.tabBar.frame;
    frame.origin.y = 0;
    tabbar.frame = frame;
    
    NSArray *array = @[@"bifen_select_Image", @"faxian_select_Image", @"gendan_select_Image", @"goucai_select_Image", @"wo_select_Image"];
    
    NSArray *array1 = @[@"bifen_Image", @"faxian_Image", @"gendan_Image", @"goucai_Image", @"wo_Image"];
    
    
    for (int i = 0; i < self.viewControllers.count; i ++) {
        UIImage *image = [UIImage imageNamed: array1[i]];
        UIImage *image1 = [UIImage imageNamed: array[i]];
        [tabbar addButtonWithImage: image andImageSel: image1];
    }
    
    [self.tabBar addSubview: tabbar];
}


//- (void)viewDidLayoutSubviews {
//    [super viewDidLayoutSubviews];
//
//    CGRect frame = self.tabBar.frame;
//
//    frame.size.height = kTabBarHeight;
//
//    frame.origin.y = self.view.bounds.size.height - kTabBarHeight;
//
//    self.tabBar.frame = frame;
//
//}

-(UIViewController *)loadSubViewControllerWithSBName: (NSString *)name {
    UIStoryboard *sb = [UIStoryboard storyboardWithName: name bundle: nil];
    return [sb instantiateInitialViewController];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
