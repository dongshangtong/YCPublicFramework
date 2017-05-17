//
//  UIView+Extension.m
//  FlatterMovie
//
//  Created by 谭明权 on 15/8/30.
//  Copyright (c) 2015年 dongshangtong. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
-(void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x=x;
    self.frame = frame;
    
}


-(void)setY:(CGFloat)y
{
    
    CGRect frame = self.frame;
    frame.origin.y=y;
    self.frame = frame;
}

-(CGFloat)x{
    return self.frame.origin.x;
    
}

-(CGFloat)y
{
    
    return self.frame.origin.y;
}
- (void)setCenterX:(CGFloat)centerX{
    CGPoint point = self.center;
    point.x = centerX;
    self.center = point;
}


- (CGFloat)centerX{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY{
    CGPoint point = self.center;
    point.y = centerY;
    self.center = point;
}


- (CGFloat)centerY{
    return self.center.y;
}

-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(void)setHeight:(CGFloat)height
{
    
    CGRect frame = self.frame;
    frame.size.height =height;
    self.frame = frame;
    
    
}
-(CGFloat)width
{
    
    return self.frame.size.width;
}

-(CGFloat)height
{
    return self.frame.size.height;
}

-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
    
}

-(CGSize)size
{
    
    return self.frame.size;
}
-(void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
    
}

-(CGPoint)origin
{
    return self.frame.origin;
}

//+ (UIImage *)imageWithLevel:(CGFloat)level originalImage:(UIImage *)image
//{
//    CIContext *context = [CIContext contextWithOptions:nil];
//    CIImage *inputImage = [[CIImage alloc] initWithImage:image];
//    // create gaussian blur filter
//    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
//    [filter setValue:inputImage forKey:kCIInputImageKey];
//    [filter setValue:[NSNumber numberWithFloat:level] forKey:@"inputRadius"];
//    // blur image
//    CIImage *result = [filter valueForKey:kCIOutputImageKey];
//    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
//    UIImage *retImage = [UIImage imageWithCGImage:cgImage];
//    CGImageRelease(cgImage);
//    return retImage;
//}

@end
