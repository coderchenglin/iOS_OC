//
//  Person.m
//  test_10_30
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "Person.h"

#import "Person+Study.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if(self)
    {
        _name = name;
    }
    return self;
}

-(void)sayHello
{
    NSLog(@"Hello,my name is %@.",self.name);
}

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        _interest = @"Reading";
        _age = 25;
    }
    return self;
}

-(void) study
{
    NSLog(@"I am studying %@ to improve my skills.",self.interest);
}

@end

