//
//  MyClassA.m
//  10_30_协议与委托
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "MyclassA.h"

@implementation MyClassA

-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if(self)
    {
        _name = name;
    }
    return self;
}

-(void) requiredMethod
{
    NSLog(@"MyClassA: Required method implementation");
}

-(void) optionalMethod
{
    NSLog(@"MyClassA: Optional method implementation");
}

@end

