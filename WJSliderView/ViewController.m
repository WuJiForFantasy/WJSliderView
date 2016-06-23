//
//  ViewController.m
//  WJSliderView
//
//  Created by 谭启宏 on 15/12/18.
//  Copyright © 2015年 谭启宏. All rights reserved.
//

#import "ViewController.h"
#import "WJSliderView.h"
#import "WJSliderScrollView.h"
#import "CustomItemView.h"
@interface ViewController ()<WJSliderViewDelegate>

//@property (nonatomic,strong)UIScrollView *scrollView;
@property (nonatomic,strong)WJSliderScrollView *scrollView;
@property (nonatomic,strong)NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = [NSMutableArray array];
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor greenColor];
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor yellowColor];
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor grayColor];
    
    CustomItemView *label1 = [CustomItemView new];
    CustomItemView *label2 = [CustomItemView new];
    CustomItemView *label3 = [CustomItemView new];
    
    label1.text = @"label1";
    label2.text = @"label1";
    label3.text = @"label1";
    label1.textAlignment = NSTextAlignmentCenter;
    label2.textAlignment = NSTextAlignmentCenter;
    label3.textAlignment = NSTextAlignmentCenter;
    
    label1.textColor = [UIColor redColor];
    
    [self.array addObjectsFromArray:@[label1,label2,label3]];
    
    self.scrollView = [[WJSliderScrollView alloc]initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.bounds), 300) itemArray:@[label1,label2,label3] contentArray:@[view1,view2,view3]];
    [self.view addSubview:self.scrollView];
    self.scrollView.delegate = self;
}

#pragma mark - <WJSliderViewDelegate>

- (void)WJSliderViewDidIndex:(NSInteger)index {
    NSLog(@"");
    if (index) {
        
    }else {
        
    }
    [self.array enumerateObjectsUsingBlock:^(CustomItemView*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (index == idx) {
            obj.textColor = [UIColor redColor];
        }else {
            obj.textColor = [UIColor blackColor];
        }
    }];
    
    switch (index) {
        case 0:
            
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
