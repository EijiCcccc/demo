//
//  CYSettingTableViewCell.m
//  彩票demo
//
//  Created by hezi on 2021/11/17.
//

#import "CYSettingTableViewCell.h"

@implementation CYSettingTableViewCell

- (void)setItem:(NSDictionary *)item {
    _item = item;
    if (item[@"icon"] && [item[@"icon"] length] > 0) {
        self.imageView.image = [UIImage imageNamed: item[@"icon"]];
    }
    self.textLabel.text = item[@"title"];
    
    self.detailTextLabel.text = item[@"subTitle"];
    
    if ( item[@"subTitleIsRed"] && [item[@"subTitleIsRed"] boolValue]) {
        self.detailTextLabel.textColor = [UIColor redColor];
    }
    
    Class Cl = NSClassFromString(item[@"accessoryType"]);
    UIView *view = [[Cl alloc] init];
    if ([view isKindOfClass:[UIImageView class]]) {
        UIImageView *image = (UIImageView *)view;
        image.image = [UIImage imageNamed: item[@"accessoryImage"]];
        [image sizeToFit];
    }
    self.accessoryView = view;
}

+(instancetype)settingCellWithTableView:(UITableView *)tableView andItem: (NSDictionary *)dic{
    
    static NSString *cellId = @"setting_cell";
    
    CYSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellId];
    if (!cell) {
        cell = [[CYSettingTableViewCell alloc] initWithStyle: [self loadCellStyleWithItem: dic] reuseIdentifier: cellId];
    }
    cell.item = dic;
    return cell;
}

+(UITableViewCellStyle)loadCellStyleWithItem: (NSDictionary *)item {
    if ([item[@"cellType"] isEqualToString: @"UITableViewCellStyleSubtitle"]) {
        return UITableViewCellStyleSubtitle;
    } else if ([item[@"cellType"] isEqualToString: @"UITableViewCellStyleValue1"]) {
        return UITableViewCellStyleValue1;
    } else if ([item[@"cellType"] isEqualToString: @"UITableViewCellStyleValue2"]) {
        return UITableViewCellStyleValue2;
    } else {
        return UITableViewCellStyleDefault;
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
