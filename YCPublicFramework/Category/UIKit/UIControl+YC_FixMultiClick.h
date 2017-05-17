//
//  UIControl+YC_FixMultiClick.h
//  HeartWorld
//
//  Created by zhangji on 2016/11/28.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (YC_FixMultiClick)

@property (nonatomic, assign) NSTimeInterval uxy_acceptEventInterval;   // 可以用这个给重复点击加间隔

@property (copy, nonatomic) NSString * uxy_ignoreEvent;
@end
