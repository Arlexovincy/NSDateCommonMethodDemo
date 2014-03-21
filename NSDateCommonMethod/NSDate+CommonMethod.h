//
//  NSDate+CommonMethod.h
//  NSDateCommonMethodDemo
//
//  Created by Foocaa on 14-3-21.
//  Copyright (c) 2014年 Foocaa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (CommonMethod)
{
    
}

/**
 *  检查2个时间beginDate和endDate是否在seconds秒之内
 *
 *  @param beginDate 开始时间
 *  @param endDate   结束时间
 *  @param seconds   在多少秒之内
 *
 *  @return 是否在seconds秒之内
 */
- (BOOL)checkBetweenBeginTime:(NSDate*)beginDate andEndTime:(NSDate*)endDate inSeconds:(int)seconds;

/**
 *  返回一字符串是多久之前：刚刚，5秒前，1分钟前，1小时前等等
 *
 *  @param date 要对比大时间
 *
 *  @return 时间信息字符串
 */
- (NSString*)timeAgoWithDate:(NSDate*)date;

@end
