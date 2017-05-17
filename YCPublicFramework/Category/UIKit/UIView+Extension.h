//
//  UIView+Extension.h
//  FlatterMovie
//
//  Created by 谭明权 on 15/8/30.
//  Copyright (c) 2015年 dongshangtong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

/**
 *  x值
 */
@property (nonatomic,assign) CGFloat x;

/**
 *  y值
 */
@property (nonatomic,assign) CGFloat y;

/**
 *  中点x
 */
@property (nonatomic, assign) CGFloat centerX;

/**
 *  中点Y
 */
@property (nonatomic, assign) CGFloat centerY;
/**
 *  宽度
 */
@property (nonatomic,assign) CGFloat width;
/**
 *  高度
 */
@property (nonatomic,assign) CGFloat height;
/**
 *  尺寸大小
 */
@property (nonatomic,assign) CGSize size;

/**
 *  origin 值
 */
@property (nonatomic,assign) CGPoint origin;




@end
