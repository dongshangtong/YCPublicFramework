//
//  NSString+Size.h
//  HeartWorld
//
//  Created by itclimb on 2016/10/26.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Size)

- (BOOL)hs_isValidPhone;

-(CGSize)sizeWithTextFont:(UIFont *)font textMaxSize:(CGSize)textMaxSize;

@end
