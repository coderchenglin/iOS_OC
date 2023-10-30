//
//  main.m
//  10_30_协议与委托
//
//  Created by 差不多先生 on 2023/10/30.
//


#import <Foundation/Foundation.h>
#import "MyClassA.h"
#import "MyClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyClassA *objectA = [[MyClassA alloc] initWithName:@"ObjectA"];
        MyClassB *objectB = [[MyClassB alloc] initWithTitle:@"ObjectB"];

        // 类A遵循协议，可以调用协议方法
        [objectA requiredMethod];
        [objectA optionalMethod];

        // 类B不遵循协议，无法调用协议方法
        // [objectB requiredMethod]; // 编译错误，无法调用未定义的方法
        // [objectB optionalMethod]; // 编译通过，但是实际运行时无效

        // 使用委托调用协议方法
        if ([objectA respondsToSelector:@selector(requiredMethod)]) {
            [objectA requiredMethod];
        }
        
        //- (BOOL)respondsToSelector:(SEL)aSelector;
        //这个方法的返回值时BOOL，代表objectA对象是否能够相应这个方法（即MyClassA类实现这个协议方法没）

        if ([objectA respondsToSelector:@selector(optionalMethod)]) {
            [objectA optionalMethod];
        }
    }
    return 0;
}

