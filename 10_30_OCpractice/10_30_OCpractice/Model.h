//
//  Model.h
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef Model_h
#define Model_h

#import <Foundation/Foundation.h>
#import "XiyouMobilePerson.h"

@interface Model : NSObject

@property (nonatomic,strong) NSMutableArray<XiyouMobilePerson *> *xiyouMobileArray;

@end


#endif /* Model_h */
