//
//  NSDate+CommonMethod.m
//  NSDateCommonMethodDemo
//
//  Created by Foocaa on 14-3-21.
//  Copyright (c) 2014年 Foocaa. All rights reserved.
//

#import "NSDate+CommonMethod.h"

@implementation NSDate (CommonMethod)

#pragma mark- 检查2个时间beginDate和endDate是否在seconds秒之内
- (BOOL)checkBetweenBeginTime:(NSDate*)beginDate andEndTime:(NSDate*)endDate inSeconds:(int)seconds
{
    double withinSeconds = fabs([beginDate timeIntervalSinceDate:endDate]);
    
    if (withinSeconds > seconds) {
        
        return NO;
        
    }else{
        
        return YES;
    }
    
}

#pragma mark- 返回一字符串是多久之前：刚刚，5秒前，1分钟前，1小时前等等
- (NSString*)timeAgoWithDate:(NSDate*)date
{
    double deltaSeconds = fabs([date timeIntervalSinceDate:[NSDate date]]);
    double deltaMinutes = deltaSeconds / 60.0f;
    
    if (deltaSeconds < 5) {
        
        return @"刚刚";
        
    }else if (deltaSeconds < 60){
        
        return [NSString stringWithFormat:@"%d秒前",(int)deltaSeconds];
        
    }else if (deltaMinutes < 60){
        
        return [NSString stringWithFormat:@"%d分钟前",(int)deltaMinutes];
        
    }else if (deltaMinutes < (24 * 60)){
        
        int hour = floor(deltaMinutes/60);
        return [NSString stringWithFormat:@"%d小时前",hour];
        
    }else if (deltaMinutes < (24 * 60 * 7)){
        
        int day = (int)floor(deltaMinutes/(60 * 24));
        return [NSString stringWithFormat:@"%d天前",day];
        
    }else if (deltaMinutes < (24 * 60 * 31)){
        
        int week = (int)floor(deltaMinutes/(60 * 24 * 7));
        return [NSString stringWithFormat:@"%d周前",week];
        
    }else if (deltaMinutes < (24 * 60 * 365.25)){
        
        int month = (int)floor(deltaMinutes/(60 * 24 * 30));
        return [NSString stringWithFormat:@"%d个月前",month];
        
    }else{
        
        int year = (int)floor(deltaMinutes/(60 * 24 * 365));
        return [NSString stringWithFormat:@"%d年前",year];
    }
}

@end
