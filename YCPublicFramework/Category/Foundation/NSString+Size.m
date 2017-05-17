//
//  NSString+Size.m
//  HeartWorld
//
//  Created by itclimb on 2016/10/26.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

//MARK: - 根据文字计算label的尺寸
-(CGSize)sizeWithTextFont:(UIFont *)font textMaxSize:(CGSize)textMaxSize{
    //self指的是NSString类的对象,下面那个方法是一个对象方法
    return [self boundingRectWithSize:textMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size;
}

//MARK: - 是否为正确的手机号码格式
- (BOOL)hs_isValidPhone{
    NSString *phone = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *pattern = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9])|(17[0,0-9]))\\d{8}$";
    NSPredicate *mobilePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    if ([mobilePredicate evaluateWithObject:phone]) {
        return YES;
    }
    return NO;
}

@end
