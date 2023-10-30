//
//  Person.h
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef Person_h
#define Person_h

#import "Foundation/Foundation.h"

@interface Person : NSObject

@property (nonatomic,strong) NSString* name;
@property (nonatomic) NSInteger age;

-(instancetype) initWithName:(NSString*)name age:(NSInteger)age;
-(NSString *)description;

@end


#endif /* Person_h */
