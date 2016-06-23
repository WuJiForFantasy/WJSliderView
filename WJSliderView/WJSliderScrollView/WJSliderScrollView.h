//
//  WJSliderScrollView.h
//  WJSliderView
//
//  Created by 谭启宏 on 15/12/18.
//  Copyright © 2015年 谭启宏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WJSliderView.h"

@interface WJSliderScrollView : UIView

//@property (nonatomic,strong)NSArray *itemArray;

- (instancetype)initWithFrame:(CGRect)frame itemArray:(NSArray<UIView *> *)itemArray contentArray:(NSArray<UIView *>*)contentArray;

@property (nonatomic,assign)id<WJSliderViewDelegate>delegate;

@property (nonatomic,copy)void  (^progressBlock)(CGFloat f);


@end
