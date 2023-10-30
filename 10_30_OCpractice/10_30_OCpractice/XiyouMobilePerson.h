//
//  XiyouMobilePerson.h
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef XiyouMobilePerson_h
#define XiyouMobilePerson_h

#import "Person.h"
#import "Demand.h"

@interface XiyouMobilePerson : Person <Demand>

@property (nonatomic,assign) int iOS;
@property (nonatomic,assign) int web;
@property (nonatomic,strong) NSString *andriod;
@property (nonatomic,strong) NSString *server;

-(instancetype) initWithName:(NSString *)name age:(NSInteger)age iOS:(int)iOS web:(int)web andriod:(NSString *)andriod server:(NSString *)server;

-(void)setiOS:(int)iOS;

@end



#endif /* XiyouMobilePerson_h */


