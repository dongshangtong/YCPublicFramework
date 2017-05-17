//
//  UILabel+Extension.m
//  HeartWorld
//
//  Created by itclimb on 2016/12/2.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

- (void)setAttributedTextFrom:(NSString *)allString colorString:(NSString *)colorStr{
    UIColor *color = [UIColor darkGrayColor];
    [self setAttributedTextFrom:allString colorString:colorStr color:color fontOfSize:14.0];
}

- (void)setAttributedTextFrom:(NSString *)allString colorString:(NSString *)colorStr color:(UIColor *)color fontOfSize:(CGFloat)fontSize{
    [self setAttributedText:[self attrStrFrom:allString colorStr:colorStr color:color font:[UIFont systemFontOfSize:fontSize]]];
}

//MARK: - AttributedString setting
- (NSMutableAttributedString *)attrStrFrom:(NSString *)allString colorStr:(NSString *)colorStr color:(UIColor *)color font:(UIFont *)font{
    
    NSMutableAttributedString *arrString = [[NSMutableAttributedString alloc]initWithString:allString];
    [arrString addAttributes:@{
                               NSFontAttributeName:font,
                               NSForegroundColorAttributeName:color
                               }
                       range:[allString rangeOfString:colorStr]];
    return arrString;
}

@end
