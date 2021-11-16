//
//  CYGroupBuyViewController.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import "CYGroupBuyViewController.h"
#import "UIView+Frame.h"

@interface CYGroupBuyViewController ()

@property (nonatomic, weak) UIView *blueView;

@end

@implementation CYGroupBuyViewController

- (UIView *)blueView {
    if (!_blueView) {
        UIView *blueView = [[UIView alloc] init];
        blueView.backgroundColor = [UIColor blueColor];
        blueView.frame = CGRectMake(0, 0, kScreenWidth, 0);
        [self.view addSubview: blueView];
        
        _blueView = blueView;
    }
    return _blueView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self blueView];
    [self.navigationController.navigationBar setTranslucent: NO];
    // Do any additional setup after loading the view.
}
- (IBAction)groupBuyClick:(UIButton *)sender {
    [UIView animateWithDuration: 0.25 animations:^{
        self.blueView.h = self.blueView.h ? 0 : 300;
        sender.imageView.transform = CGAffineTransformRotate(sender.imageView.transform, M_PI);
    }];
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
