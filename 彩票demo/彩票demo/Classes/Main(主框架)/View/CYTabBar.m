//
//  CYTabBar.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import "CYTabBar.h"

@interface CYTabBarButton : UIButton

@end

@implementation CYTabBarButton

- (void)setHighlighted:(BOOL)highlighted {
//    [super setHighlighted: highlighted];
}
    
@end


@interface CYTabBar ()


@property (nonatomic, weak) CYTabBarButton *currentBtn;

@end

@implementation CYTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)addButtonWithImage:(UIImage *)image andImageSel:(UIImage *)imageSel {
    CYTabBarButton *tabbarButton = [[CYTabBarButton alloc] init];
    [tabbarButton setImage: image forState: UIControlStateNormal];
    [tabbarButton setImage: imageSel forState: UIControlStateSelected];
    
    [tabbarButton addTarget: self action: @selector(tabBarButtonClick:) forControlEvents: UIControlEventTouchDown];
    
    [self addSubview: tabbarButton];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    for (int i = 0; i < self.subviews.count; i ++) {
        CYTabBarButton *tabbarButton = self.subviews[i];
        tabbarButton.tag = i;
        CGFloat w = kScreenWidth / 5;
        CGFloat h = 49;
        CGFloat x = i * w;
        CGFloat y = 0;
        tabbarButton.frame = CGRectMake(x, y, w, h);
        if (i == 0) {
            [self tabBarButtonClick: tabbarButton];
        }
    }
}

-(void)tabBarButtonClick: (CYTabBarButton *)sender {
    self.currentBtn.selected = NO;
    sender.selected = YES;
    self.currentBtn = sender;
    if (self.tabbarButtonBlock) {
        self.tabbarButtonBlock(sender.tag);
    }
}


@end
