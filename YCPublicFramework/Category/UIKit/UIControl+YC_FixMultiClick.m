//
//  UIControl+YC_FixMultiClick.m
//  HeartWorld
//
//  Created by zhangji on 2016/11/28.
//  Copyright © 2016年 谭明权. All rights reserved.
//

#import "UIControl+YC_FixMultiClick.h"
#import <objc/runtime.h>

static const void *UIControl_acceptEventInterval = @"UIControl_acceptEventInterval";

static const void * UIControl_acceptEvent = @"UIControl_acceptEvent";
@implementation UIControl (YC_FixMultiClick)

+ (void)load
{
    Method a = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method b = class_getInstanceMethod(self, @selector(__uxy_sendAction:to:forEvent:));
    method_exchangeImplementations(a, b);
}


- (void)__uxy_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    if (!self.uxy_ignoreEvent.length)
    {
        self.uxy_ignoreEvent = @"1";
    }
    
    if ([self.uxy_ignoreEvent isEqualToString:@"2"]) return;
    if (self.uxy_acceptEventInterval > 0)
    {
        self.uxy_ignoreEvent = @"2";
        [self performSelector:@selector(setUxy_ignoreEvent:) withObject:@"1" afterDelay:self.uxy_acceptEventInterval];
    }
    [self __uxy_sendAction:action to:target forEvent:event];
}

- (void)setUxy_ignoreEvent:(NSString *)uxy_ignoreEvent
{
    
    objc_setAssociatedObject(self, UIControl_acceptEvent, uxy_ignoreEvent, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)uxy_ignoreEvent
{
    
    return objc_getAssociatedObject(self, UIControl_acceptEvent);
}



- (NSTimeInterval)uxy_acceptEventInterval
{
    return [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
}
- (void)setUxy_acceptEventInterval:(NSTimeInterval)uxy_acceptEventInterval
{
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(uxy_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
