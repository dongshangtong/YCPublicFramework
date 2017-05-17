//
//  NSString+Extension.h
//  MovieTicket
//
//  Created by 覃旭升 on 15/8/14.
//  Copyright (c) 2015年 Sam qin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)



//把字典转换成json字符串
+(NSString*)dictionaryToJson:(NSDictionary *)dic;


- (NSString *)pinyin;

//获取时间戳---time_stamp 为当前时间到 1970 年的毫秒数
+(NSString *)getTimeStamp;

#pragma mark - 转换为时间戳

+ (NSString *)getTimeChuo:(NSString*)dateStr;

//把url里的中文转成UTF-8
- (NSString *)URLEncodedString;


- (NSString*)URLDecodedString;

//获取文件夹或文件的大小
- (NSInteger)fileSize;

+ (BOOL)checkIsNsNull:(NSObject *)obj;

/**
 *  NSUserDefaults 存储json。当value为NSNull对象时，不处理，反之存储
 *
 *  @param dic <#dic description#>
 */
+ (void)saveNsUserDefaultsDataWithNSDictionary:(NSDictionary *)dic;

/*
 *
 */
+ (NSString *)lr_stringDate;


@end
