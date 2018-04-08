//
//  StringChecker.m
//  StringChecker
//
//  Created by 奇鹭 on 2018/3/30.
//  Copyright © 2018年 xieyongxu. All rights reserved.
//

#import "StringChecker.h"

@implementation StringChecker

+ (BOOL)checkString:(NSString *)string
{
    BOOL result = NO;
    if (![string containsString:@" "])
    {
        NSString * regex = @"(?!^[0-9]+$)(?!^[a-zA-Z]+$)(?!^[^a-zA-Z0-9]+$)^.{6,16}$";
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
        result = [pred evaluateWithObject:string];
    }
    NSLog(@"%@", result?@"符合规范":@"不符合规范");
    return result;
}

@end
