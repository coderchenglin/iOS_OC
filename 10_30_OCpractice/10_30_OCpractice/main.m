//
//  main.m
//  10_30_OCpractice
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "XiyouMobilePerson.h"
#import "Model.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Model *model = [[Model alloc] init];
        
        [model.xiyouMobileArray addObject:[[XiyouMobilePerson alloc]initWithName:@"Alice" age:25 iOS:4 web:3 andriod:@"Good" server:@"Great"]];
        [model.xiyouMobileArray addObject:[[XiyouMobilePerson alloc] initWithName:@"Bob" age:28 iOS:5 web:2 andriod:@"Excellent" server:@"Awesome"]];
        [model.xiyouMobileArray addObject:[[XiyouMobilePerson alloc] initWithName:@"Charlie" age:22 iOS:3 web:4 andriod:@"Superb" server:@"Outstanding"]];
        [model.xiyouMobileArray addObject:[[XiyouMobilePerson alloc] initWithName:@"David" age:26 iOS:6 web:1 andriod:@"Fantastic" server:@"Amazing"]];
        [model.xiyouMobileArray addObject:[[XiyouMobilePerson alloc] initWithName:@"Eve" age:29 iOS:2 web:5 andriod:@"Incredible" server:@"Remarkable"]];
        
        XiyouMobilePerson* maxiOSPerson = [model.xiyouMobileArray firstObject];
        for(XiyouMobilePerson *person in model.xiyouMobileArray)
        {
            if(person.iOS > maxiOSPerson.iOS)
            {
                maxiOSPerson = person;
            }
        }
        
        NSLog(@"Max iOS Person: %@",maxiOSPerson);
        
        //删除xiyouMobileArray数组中range为（2，3）的成员
        if(model.xiyouMobileArray.count >= 5)
        {
            NSRange range = NSMakeRange(2, 3);
            [model.xiyouMobileArray removeObjectsInRange:range];
        }
        NSLog(@"Updated xiyouMobileArray:%@",model.xiyouMobileArray);
    }
    return 0;
}
