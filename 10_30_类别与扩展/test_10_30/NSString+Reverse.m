//
//  NSString+Reverse.m
//  test_10_30
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

-(NSString *)reverseString
{
    NSMutableString* result = [NSMutableString string];
    
    NSInteger len = [self length];
    for(NSInteger i = len-1;i>=0;i--)
    {
        unichar character = [self characterAtIndex:i];
        [result appendFormat:@"%c",character];
    }
    return result;
}

@end


