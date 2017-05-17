//
//  UIView+InfoTip.h
//  ViewCategoryTest
//
//  Created by 李珈旭 on 2016/12/19.
//  Copyright © 2016年 jiaxuLI. All rights reserved.
//

#import <UIKit/UIKit.h>

#define tipViewTag 3888

#define noDataTipText @"暂无数据"
#define netTipText  @"当前网络不可用,请检查您的网络" 
#define buttontitle  @"点击刷新"

typedef void (^tipclick)();
@interface UIView (InfoTip)
///没有数据
-(void)nullTip;
///请求失败
-(void)errorTip:(tipclick)click;
///移除tipView
-(void)removeTipView;
@end

@interface TipView : UIView
@property (nonatomic,copy)tipclick tipclick;
-(void)TipClick:(void(^)())tipclick;
@end
