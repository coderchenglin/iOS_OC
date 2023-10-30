//
//  MyClassB.m
//  10_30_协议与委托
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

#import "MyClassB.h"

@implementation MyClassB

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        _title = title;
    }
    return self;
}

@end
