//
//  Person.h
//  test_10_30
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef Person_h
#define Person_h

#import "Foundation/Foundation.h"

@interface Person : NSObject

@property (nonatomic,strong) NSString *name;

-(instancetype) initWithName:(NSString *)name;
-(void)sayHello;

@end

#endif /* Person_h */
