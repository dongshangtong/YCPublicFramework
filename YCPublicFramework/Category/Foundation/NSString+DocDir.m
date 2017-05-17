//
//  NSString+DocDir.m
//  04－－－SQLite基本使用
//
//  Created by 朱亚杰 on 15/6/26.
//  Copyright (c) 2015年 朱亚杰. All rights reserved.
//

#import "NSString+DocDir.h"

@implementation NSString (DocDir)

- (NSString *)appendDocumentDir{
    
    NSString *docDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    return [docDir stringByAppendingPathComponent:self];
}

@end
