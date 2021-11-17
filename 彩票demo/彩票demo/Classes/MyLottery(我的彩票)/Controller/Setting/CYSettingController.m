//
//  CYSettingController.m
//  彩票demo
//
//  Created by hezi on 2021/11/17.
//

#import "CYSettingController.h"
#import "CYSettingTableViewCell.h"

@interface CYSettingController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *groups;

@end

@implementation CYSettingController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self = [[CYSettingController alloc] initWithStyle: UITableViewStyleGrouped];
    }
    return self;
}

- (NSArray *)groups {
    if (!_groups) {
        NSString *path = [[NSBundle mainBundle] pathForResource: self.plistName ofType: @"plist"];
        _groups = [NSArray arrayWithContentsOfFile: path];
    }
    return _groups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationItem.title = @"设置";
//    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[ UIImage imageNamed:@"wo_select_Image"] style: UIBarButtonItemStylePlain target: self action: @selector(backClick)];
    
    self.navigationItem.leftBarButtonItem = item;
    // Do any additional setup after loading the view.
}

-(void)backClick {
    [self.navigationController popViewControllerAnimated: YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *dic = self.groups[section];
    NSArray *arr = dic[@"items"];
    return arr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *group = self.groups[indexPath.section];
    NSArray *arr = group[@"items"];
    NSDictionary *dic = arr[indexPath.row];
    return [CYSettingTableViewCell settingCellWithTableView: tableView andItem: dic];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *group = self.groups[indexPath.section];
    NSArray *items = group[@"items"];
    NSDictionary *dic = items[indexPath.row];
    if (dic[@"targetVC"] && [dic[@"targetVC"] length] > 0) {
        NSString *targetVc = dic[@"targetVC"];
        Class CL = NSClassFromString(targetVc);
        UIViewController *vc = [[CL alloc] init];
        vc.navigationItem.title = dic[@"title"];
        
        if ([vc isKindOfClass:[CYSettingController class]]) {
            CYSettingController *setting = (CYSettingController *)vc;
            setting.plistName = dic[@"plistName"];
        }
        
        [self.navigationController pushViewController: vc animated:YES];
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDictionary *group = self.groups[section];
    return group[@"header"];
}
//
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    NSDictionary *group = self.groups[section];
    return group[@"footer"];
}

@end
