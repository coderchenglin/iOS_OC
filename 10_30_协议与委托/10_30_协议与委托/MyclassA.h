//
//  MyclassA.h
//  10_30_协议与委托
//
//  Created by 差不多先生 on 2023/10/30.
//

#ifndef MyclassA_h
#define MyclassA_h

#import "MyProtocol.h"

//类A遵循MyProtocol协议
@interface MyClassA : NSObject<MyProtoloc>

@property (nonatomic,strong) NSString* name;

-(instancetype) initWithName:(NSString *)name;

@end

#endif /* MyclassA_h */
