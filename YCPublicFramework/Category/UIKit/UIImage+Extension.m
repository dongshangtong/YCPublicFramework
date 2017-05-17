//
//  UIImage+Extension.m
//  MovieTicket
//
//  Created by 覃旭升 on 15/8/13.
//  Copyright (c) 2015年 Sam qin. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageWithLevel:(CGFloat)level originalImage:(UIImage *)image
{
    
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *inputImage = [[CIImage alloc] initWithImage:image];
    // create gaussian blur filter
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [filter setValue:inputImage forKey:kCIInputImageKey];
    [filter setValue:[NSNumber numberWithFloat:level] forKey:@"inputRadius"];
    // blur image
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    UIImage *retImage = [UIImage imageWithCGImage:cgImage];
    CGImageRelease(cgImage);
    return retImage;

}

+ (UIImage*)imageWithColor: (UIColor*)color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 100.0f, 50.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *Image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return Image;
}




@end
