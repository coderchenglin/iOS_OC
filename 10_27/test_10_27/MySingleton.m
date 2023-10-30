//
//  Person.m
//  test_10_27
//
//  Created by 差不多先生 on 2023/10/27.
//

#import <Foundation/Foundation.h>
#import "MySingleton.h"

@implementation MySingleton

static MySingleton *sharedInstance = nil;

+ (MySingleton*)sharedInstance
{
    @synchronized (self)
    {
        if(sharedInstance == nil)
        {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}

@end



