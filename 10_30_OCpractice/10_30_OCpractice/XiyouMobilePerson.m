//
//  XiyouMobilePerson.m
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "XiyouMobilePerson.h"

@implementation XiyouMobilePerson


-(instancetype) initWithName:(NSString *)name age:(NSInteger)age iOS:(int)iOS web:(int)web andriod:(NSString *)andriod server:(NSString *)server
{
    self = [super initWithName:name age:age];
    if(self)
    {
        _iOS = iOS;
        _web = web;
        _andriod = andriod;
        _server = server;
    }
    return self;
}

-(void)setiOS:(int)iOS
{
    _iOS = (iOS % 2 == 0) ? iOS - 1 : iOS + 1;
}

-(void)calculate
{
    int result = self.iOS + self.web;
    NSLog(@"iOS + web = %d", result);
}

@end

