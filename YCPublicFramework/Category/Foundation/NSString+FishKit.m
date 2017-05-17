//
//  NSString+FishKit.m
//  Common
//
//  Created by QFish on 8/10/14.
//  Copyright (c) 2014 iNoknok. All rights reserved.
//

#import "NSString+FishKit.h"


@implementation NSString (FishKit)

- (NSString *)stringWithNum:(NSString *)string
{
    NSNumberFormatter *formatter=[[NSNumberFormatter alloc]init];
    [formatter setGroupingSeparator:@","];
    [formatter setGroupingSize:3];
    [formatter setUsesGroupingSeparator:YES];
    NSNumber *num= [NSNumber numberWithInt:string.intValue];
    NSString *str = [formatter stringFromNumber:num];
    return str;
}

- (NSAttributedString *)matchedPoundStringWithFont:(float)font textColor:(UIColor *)color
{
    NSMutableAttributedString * attriString = [[NSMutableAttributedString alloc] initWithString:self];
    
    [[self matchedPoundStringRange] enumerateObjectsUsingBlock:^(NSTextCheckingResult * obj, NSUInteger idx, BOOL *stop) {
        [attriString addAttributes:@{
                                     NSFontAttributeName:[UIFont systemFontOfSize:font],
                                     NSForegroundColorAttributeName:color
                                     }
                             range:obj.range];
    }];
    
    return attriString;
}

- (NSArray *)matchedPoundStringRange
{
    NSError *error;
    
    NSString * regulaStr = @"#[^#]+#";
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regulaStr
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:&error];
    
    return [regex matchesInString:self options:0 range:NSMakeRange(0, [self length])];
}

- (float)heightWithWidth:(float)width font:(float)font
{
	// 计算文本的大小
	CGSize sizeToFit = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) // 用于计算文本绘制时占据的矩形块
										  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading // 文本绘制时的附加选项
									   attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]}        // 文字的属性
										  context:nil].size; // context上下文。包括一些信息，例如如何调整字间距以及缩放。该对象包含的信息将用于文本绘制。该参数可为nil
	return sizeToFit.height;
}

- (float)widthWithheight:(float)height font:(float)font
{
	// 计算文本的大小
	CGSize sizeToFit = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, height) // 用于计算文本绘制时占据的矩形块
										  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading // 文本绘制时的附加选项
									   attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]}        // 文字的属性
										  context:nil].size; // context上下文。包括一些信息，例如如何调整字间距以及缩放。该对象包含的信息将用于文本绘制。该参数可为nil
	return sizeToFit.width;
}


- (float)heightFromTTTStringFont:(float)font lineSpace:(float)linespace width:(float)width
{
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, width, 0)];
    label.numberOfLines = 0;
    
    NSMutableAttributedString * attrString = [[NSMutableAttributedString alloc]initWithString:self];
    NSMutableParagraphStyle * paragrapStyle = [[NSMutableParagraphStyle alloc]init];
    [paragrapStyle setLineSpacing:linespace];
    [attrString addAttribute:NSParagraphStyleAttributeName value:paragrapStyle range:NSMakeRange(0, self.length)];
    [attrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:font] range:NSMakeRange(0, self.length)];
    
    label.attributedText = attrString;
    [label sizeToFit];
    return label.frame.size.height;
}
- (NSInteger)multipleNameLength
{
    NSInteger count = 0;
    
    NSRegularExpression *  iExpression;
    NSString * pattern = @"[^\u4e00-\u9fa5]+";
    iExpression = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:NULL];
    NSRange paragaphRange = NSMakeRange(0, self.length);
    
    NSArray * matches = [iExpression matchesInString:self options:0 range:paragaphRange];
    if ( matches )
    {
        for (int i = 0; i < matches.count;i++)
        {
            NSTextCheckingResult *result = matches[i];
            count += result.range.length;
        }
    }
    
    NSRegularExpression * iExpression2;
    NSString * pattern2 = @"[\u4e00-\u9fa5]+";
    iExpression2 = [NSRegularExpression regularExpressionWithPattern:pattern2 options:0 error:NULL];
    
    NSArray * matches2 = [iExpression2 matchesInString:self options:0 range:paragaphRange];
    if ( matches2 )
    {
        for (int i = 0; i < matches2.count;i++)
        {
            NSTextCheckingResult *result = matches2[i];
            count += result.range.length;
        }
    }
    return count;
}
@end
