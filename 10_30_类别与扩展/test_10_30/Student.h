//
//  Student.h
//  test_10_30
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef Student_h
#define Student_h

#import "Person.h"

@interface Student : Person

@property (nonatomic,strong) NSString* studentID;

-(instancetype)initWithName:(NSString *)name studentID:(NSString *)studentID;
-(void)study;

@end

#endif /* Student_h */
