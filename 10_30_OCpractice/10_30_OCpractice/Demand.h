//
//  Demand.h
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef Demand_h
#define Demand_h

#import<Foundation/Foundation.h>

@protocol Demand <NSObject>

@required
-(void) calculate;

@optional
-(void) unnecessary;

@end


#endif /* Demand_h */
