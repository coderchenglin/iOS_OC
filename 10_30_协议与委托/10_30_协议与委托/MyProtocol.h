//
//  MyProtocol.h
//  10_30_协议与委托
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef MyProtocol_h
#define MyProtocol_h

#import "Foundation/Foundation.h"

@protocol MyProtoloc <NSObject>

@required
-(void) requiredMethod;

@optional
-(void) optionalMethod;

@end
#endif /* MyProtocol_h */
