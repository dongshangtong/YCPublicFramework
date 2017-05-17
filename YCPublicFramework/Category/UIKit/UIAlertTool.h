//
//  UIAlertTool.h
//  HeartWorld
//
//  Created by zhangji on 16/8/9.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIAlertTool : NSObject

-(void)showAlertViewViewController:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitle:(NSString *)otherButtonTitle confirm:(void (^)())confirm cancle:(void (^)())cancle;

@end
