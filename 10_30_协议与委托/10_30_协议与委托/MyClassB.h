//
//  MyClassB.h
//  10_30_协议与委托
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef MyClassB_h
#define MyClassB_h

#import <Foundation/Foundation.h>

@interface MyClassB : NSObject

@property (nonatomic, strong) NSString *title;

- (instancetype)initWithTitle:(NSString *)title;

@end


#endif /* MyClassB_h */
