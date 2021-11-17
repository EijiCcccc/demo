//
//  CYMyLotteryViewController.m
//  彩票demo
//
//  Created by hezi on 2021/11/17.
//

#import "CYMyLotteryViewController.h"
#import "CYSettingController.h"

@interface CYMyLotteryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation CYMyLotteryViewController
- (IBAction)settingClick:(UIBarButtonItem *)sender {
    CYSettingController *sv = [[CYSettingController alloc] initWithStyle: UITableViewStyleGrouped];
    sv.plistName = @"Setting";
    sv.navigationItem.title = @"设置";
    [self.navigationController pushViewController: sv animated: YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed: @"bg_View"];
    image = [image stretchableImageWithLeftCapWidth: image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
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
