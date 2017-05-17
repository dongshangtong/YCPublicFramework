//
//  NSArray+Log.m
//  08-Log的技巧
//
//  Created by apple on 14-12-29.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "NSArray+Log.h"

// Log的分类不需要引入
@implementation NSArray (Log)

// 重写一个根数组本地化相关的描述方法
- (NSString *)descriptionWithLocale:(id)locale {
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [strM appendFormat:@"\t%@,\n", obj];
    }];
    
    [strM appendString:@")\n"];
    
    return strM;
}

@end
