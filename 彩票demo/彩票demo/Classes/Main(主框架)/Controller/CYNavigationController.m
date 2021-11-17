//
//  CYNavigationController.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import "CYNavigationController.h"

@interface CYNavigationController ()

@end

@implementation CYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setBackgroundImage: [UIImage imageNamed:@"gyj_banner"] forBarMetrics: UIBarMetricsDefault];
    
    [self.navigationBar setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor blackColor],
    }];
    
    [self.navigationBar setTintColor: [UIColor whiteColor]];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController: viewController animated: animated];
    
    viewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController: viewController animated: animated];
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
