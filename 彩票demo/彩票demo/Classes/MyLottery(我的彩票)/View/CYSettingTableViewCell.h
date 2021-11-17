//
//  CYSettingTableViewCell.h
//  彩票demo
//
//  Created by hezi on 2021/11/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CYSettingTableViewCell : UITableViewCell

@property (nonatomic, strong) NSDictionary* item;

+(instancetype)settingCellWithTableView: (UITableView *)tableView andItem: (NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
