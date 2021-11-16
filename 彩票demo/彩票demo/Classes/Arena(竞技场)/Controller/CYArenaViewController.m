//
//  CYArenaViewController.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import "CYArenaViewController.h"

@interface CYArenaViewController ()

@end

@implementation CYArenaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.layer.contents = (__bridge id)[UIImage imageNamed:@"pailie5_banner_Image"].CGImage;
    
    
//    UIBarMetricsDefault, 横屏显示， 竖屏显示
//    UIBarMetricsCompact, 横屏显示， 竖屏不显示
//    UIBarMetricsDefaultPrompt = 101, // Applicable only in bars with the prompt property, such as UINavigationBar and UISearchBar 竖屏有副标题显示，横屏不显示
//    UIBarMetricsCompactPrompt, 竖屏有副标题不显示，横屏显示
    
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@""] forBarMetrics: UIBarMetricsDefault];
    ;
    UISegmentedControl *seg = (UISegmentedControl *)self.navigationItem.titleView;
    [seg setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal barMetrics: UIBarMetricsDefault];
    [seg setBackgroundImage: [UIImage imageNamed:@""] forState: UIControlStateSelected barMetrics: UIBarMetricsDefault];
    [seg setTitleTextAttributes: @{
            NSForegroundColorAttributeName: [UIColor whiteColor],
    } forState: UIControlStateNormal];
    [seg setTitleTextAttributes: @{
            NSForegroundColorAttributeName: [UIColor whiteColor],
    } forState: UIControlStateSelected];
//    [seg setTintColor: [UIColor clearColor]];
    // Do any additional setup after loading the view.
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
