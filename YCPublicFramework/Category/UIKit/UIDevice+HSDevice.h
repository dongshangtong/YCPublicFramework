//
//  UIDevice+HSDevice.h
//  HSTools
//
//  Created by 董知樾 on 16/9/5.
//  Copyright © 2016年 董知樾. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (HSDevice)
/**
 *  设备名
 */
+ (NSString *)hs_devicePlatform;

/**
 *  设备
 */
+ (NSString *)hs_devicePlatformString;

/**
 *  iPad
 */
+ (BOOL)hs_isiPad;

/**
 *  iPhone
 */
+ (BOOL)hs_isiPhone;

/**
 *  iPod
 */
+ (BOOL)hs_isiPod;

/**
 *  是否是模拟器
 */
+ (BOOL)hs_isSimulator;

/**
 *  是否是retina
 */
+ (BOOL)hs_isRetina;

/**
 *  是否是retinaHD
 */
+ (BOOL)hs_isRetinaHD;

/**
 *  系统版本
 */
+ (NSInteger)hs_iOSVersion;

/**
 *  CPU频率
+ (NSUInteger)hs_cpuFrequency;

//  bus频率
+ (NSUInteger)hs_busFrequency;

// 内存大小
+ (NSUInteger)hs_ramSize;

// CPU数量
+ (NSUInteger)hs_cpuNumber;

//  内存大小
+ (NSUInteger)hs_totalMemory;

// Return the current device non-kernel memory
// @return Return the current device non-kernel memory
+ (NSUInteger)hs_userMemory;


 //  Return the current device total disk space
 //  @return Return the current device total disk space
+ (NSNumber *)hs_totalDiskSpace;


 //Return the current device free disk space
 //@return Return the current device free disk space

+ (NSNumber *)hs_freeDiskSpace;


 //  Return the current device MAC address
 
 //  @return Return the current device MAC address
 
+ (NSString *)hs_macAddress;
*/

 //  Generate an unique identifier and store it into standardUserDefaults
 
 //  @return Return a unique identifier as a NSString

/**
 设备UUID

 @return UUID
 */
+ (NSString *)hs_uniqueIdentifier;

@end
