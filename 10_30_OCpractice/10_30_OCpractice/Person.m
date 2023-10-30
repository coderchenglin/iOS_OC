//
//  Person.m
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@implementation Person

-(instancetype) initWithName:(NSString *)name age:(NSInteger)age
{
    self = [super init];
    if(self)
    {
        _name = name;
        _age = age;
    }
    return self;
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"Name : %@, Age : %ld",self.name,self.age];
}

@end

