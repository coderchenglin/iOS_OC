//
//  Student.m
//  test_10_30
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "Student.h"

@implementation Student

-(instancetype)initWithName:(NSString *)name studentID:(NSString *)studentID
{
    self = [super initWithName:name];
    if(self)
    {
        _studentID = studentID;
    }
    return self;
}

-(void)study
{
    NSLog(@"I am a student with ID %@,and I'm studying for exams.",self.studentID);
}

@end
