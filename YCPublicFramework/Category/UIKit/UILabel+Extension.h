//
//  UILabel+Extension.h
//  HeartWorld
//
//  Created by itclimb on 2016/12/2.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extension)

//MARK: - 设置label混排
- (void)setAttributedTextFrom:(NSString *)allString colorString:(NSString *)colorStr;

- (void)setAttributedTextFrom:(NSString *)allString colorString:(NSString *)colorStr color:(UIColor *)color fontOfSize:(CGFloat)fontSize;

@end
