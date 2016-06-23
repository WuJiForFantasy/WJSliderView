//
//  WJSlider.m
//  WJSliderView
//
//  Created by 幻想无极（谭启宏） on 16/6/23.
//  Copyright © 2016年 谭启宏. All rights reserved.
//

#import "WJSlider.h"

@interface WJSlider ()

@property (nonatomic,strong)UIView *bottomView;
@property (nonatomic,strong)UIView *centerView;

@end

@implementation WJSlider

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self common];
//        self.layer.masksToBounds = YES;
        
    }
    return self;
}

- (void)common {
    
    self.bottomView = [[UIView alloc]init];
    self.bottomView.backgroundColor = [UIColor redColor];
    self.centerView = [UIView new];
    self.centerView.backgroundColor = [UIColor redColor];
  
    [self addSubview:self.bottomView];
    [self addSubview:self.centerView];
}

- (void)layoutSubviews {
    self.centerView.frame = CGRectMake(self.frame.size.width/2-5, self.frame.size.height-5,10, 10);
    self.bottomView.frame = CGRectMake(0, self.frame.size.height-3, self.frame.size.width, 3);
    self.centerView.transform = CGAffineTransformMakeRotation(M_PI_4);
}

- (void)setHiddenDefaultView:(BOOL)hiddenDefaultView {
    _hiddenDefaultView = hiddenDefaultView;
    if (hiddenDefaultView) {
            self.bottomView.hidden = YES;
            self.centerView.hidden = YES;
        }else {
            self.bottomView.hidden = NO;
            self.centerView.hidden = NO;
    }
}

@end
