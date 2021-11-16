//
//  CYTabBar.h
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import <UIKit/UIKit.h>

@interface CYTabBar : UIView

@property (nonatomic, copy) void(^tabbarButtonBlock)(NSInteger);

-(void)addButtonWithImage: (UIImage *)image andImageSel: (UIImage *)imageSel;

@end

