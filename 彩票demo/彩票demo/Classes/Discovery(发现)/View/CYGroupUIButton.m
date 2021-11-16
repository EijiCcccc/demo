//
//  CYGroupUIButton.m
//  彩票demo
//
//  Created by 小纯子 on 2021/11/17.
//

#import "CYGroupUIButton.h"
#import "UIView+Frame.h"

@implementation CYGroupUIButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews {
    
    [super layoutSubviews];
    self.titleLabel.x = 0;
    self.imageView.x = self.titleLabel.w;
    
}

@end
