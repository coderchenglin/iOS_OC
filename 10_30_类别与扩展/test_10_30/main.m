//
//  main.m
//  test_10_30
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "NSString+Reverse.h"



//// 为 NSString 添加一个名为 Reverse 的类别
//@interface NSString (Reverse)
//
//- (NSString *)reverseString;
//
//@end
//
//@implementation NSString (Reverse)
//
////- (NSString *)reverseString {
////    NSMutableString *result = [NSMutableString string];
////    NSInteger len = [self length];
////    for (NSInteger i = len - 1; i >= 0; i--) {
////        unichar character = [self characterAtIndex:i];
////        [result appendFormat:@"%c", character];
////    }
////    return result;
////}
//
////这是NSString类中的方法，所以self指的是，NSString类对象
////反转字符串：
//-(NSString *)reverseString
//{
//    NSMutableString *result =[NSMutableString string];
//    NSInteger len = [self length];
//    //NSLog(@"%ld",len);
//    for(NSInteger i = len - 1;i>=0;i--)
//    {
//        unichar character = [self characterAtIndex:i];
//        [result appendFormat:@"%c",character];
//    }
//    return result;
//}
//
//@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSString *originalString = @"Hello, World!";
//        NSString *reversedString = [originalString reverseString];
//        NSLog(@"Original: %@", originalString);
//        NSLog(@"Reversed: %@", reversedString);
//    }
//    return 0;
//}

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] initWithName:@"John"];
        [person sayHello];
        //[person study]; // 调用基类扩展的方法
        
        Student *student = [[Student alloc] initWithName:@"Alice" studentID:@"12345"];
        [student sayHello];
        [student study]; // 调用子类的方法
    }
    return 0;
}
