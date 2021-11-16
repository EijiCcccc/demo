//
//  CYHallViewController.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import "CYHallViewController.h"

@interface CYHallViewController ()

@property (nonatomic, weak) UIView *coverView;
@property (nonatomic, weak) UIImageView *imageView;

@end

@implementation CYHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [[UIImage imageNamed:@"huodong1_Image"] imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage: image style: UIBarButtonItemStylePlain target: self action: @selector(activityClick)];
    
    self.navigationItem.leftBarButtonItem = item;
    // Do any additional setup after loading the view.
}

-(void)activityClick {
    UIView *coverView = [[UIView alloc] initWithFrame: kScreenSize];
    coverView.backgroundColor = [UIColor blackColor];
    coverView.alpha = 0.5;
    self.coverView = coverView;
    [self.tabBarController.view addSubview: coverView];
//    [self.view addSubview: coverView];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"zhizunka_Image"]];
    imageView.userInteractionEnabled = YES;
    imageView.center = self.view.center;
    self.imageView = imageView;
    [self.tabBarController.view addSubview: imageView];
    
    UIButton *closeBtn = [[UIButton alloc] init];
    UIImage *closeImage = [UIImage imageNamed: @"deleate_Image"];
    closeBtn.frame = CGRectMake(imageView.bounds.size.width - closeImage.size.width, 0, 0, 0);
    [closeBtn setBackgroundImage: closeImage forState:UIControlStateNormal];
    [closeBtn sizeToFit];
    [closeBtn addTarget: self action:@selector((closeClick)) forControlEvents: UIControlEventTouchUpInside];
    [imageView addSubview: closeBtn];
}

-(void)closeClick {
    [UIView animateWithDuration: 0.25 animations:^{
        [self.coverView removeFromSuperview];
        [self.imageView removeFromSuperview];
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
