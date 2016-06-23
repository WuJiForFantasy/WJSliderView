//
//  CustomItemView.m
//  WJSliderView
//
//  Created by 幻想无极（谭启宏） on 16/6/23.
//  Copyright © 2016年 谭启宏. All rights reserved.
//

#import "CustomItemView.h"

@interface CustomItemView ()

@property (nonatomic,strong)UIView *upView;
@property (nonatomic,strong)UIView *bottomView;
@property (nonatomic,strong)UIView *rightView;

@end

@implementation CustomItemView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self common];
    }
    return self;
}

- (void)common {
    self.upView = [UIView new];
    self.bottomView = [UIView new];
    self.rightView = [UIView new];
    self.upView.backgroundColor = [UIColor lightGrayColor];
    self.bottomView.backgroundColor = [UIColor lightGrayColor];
    self.rightView.backgroundColor = [UIColor lightGrayColor];
    self.rightView.alpha = 0.2;
    [self addSubview:self.upView];
    [self addSubview:self.bottomView];
    [self addSubview:self.rightView];
}

- (void)layoutSubviews {
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.upView.frame = CGRectMake(0, 0, width, 1);
    self.bottomView.frame = CGRectMake(0, height - 1, width, 1);
    self.rightView.frame = CGRectMake(0, 1, 1, height-2);
}

@end
