//
//  main.m
//  test_10_26_2
//
//  Created by 差不多先生 on 2023/10/26.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+ (MySingleton *)sharedInstance;

@end


@implementation MySingleton

static MySingleton *sharedInstance = nil;

+ (MySingleton *)sharedInstance
{
    @synchronized(self)
    {
        if (sharedInstance == nil)
        {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}

- (id)init {
    if (self = [super init]) {
        // 初始化单例对象
    }
    return self;
}

@end


//int main(int argc, const char * argv[]) {
//    @autoreleasepool
//    {
//        MySingleton *singleton = [MySingleton sharedInstance];
//
//
//
//
//    }
//    return 0;
//}

@class XiyouMobilePerson;
@class Model;

@interface Model : NSObject

@property (nonatomic, strong) NSMutableArray<XiyouMobilePerson *> *xiyouMobileArray;

@end




@protocol Demand <NSObject>

@required
- (void)calculate;

@optional
- (void)unnecessary;

@end




@interface Person : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) NSInteger age;

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age;
-(NSString *)description;

@end


//写来Person类里面，那么self指的就是person类对象
@implementation Person

-(instancetype) initWithName:(NSString *)name age:(NSInteger)age
{
    self = [super init];
    if(self)
    {
        self.name = name;
        self.age = age;
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Name: %@,Age:%ld",self.name,(long)self.age];
}


@end

@interface XiyouMobilePerson : Person <Demand>

@property (nonatomic,assign,readonly) int iOS;
@property (nonatomic,assign,readonly) int web;
@property (nonatomic,strong,readonly) NSString *android;
@property (nonatomic,strong,readonly) NSString *server;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age iOS:(int)iOS  web:(int)web android:(NSString *)android server:(NSString *)server;

-(void)setIOS:(int)iOS;
-(int)getIOS;

@end

@implementation XiyouMobilePerson
{
    int _iOS;
    int _web;
    NSString *_android;
    NSString *_server;
}

- (void)calculate {
    int result = _iOS + _web;
    NSLog(@"iOS + web = %d", result);
}

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age iOS:(int)iOS web:(int)web android:(NSString *)android server:(NSString *)server
{
    self = [super initWithName:name age:age];
    if(self)
    {
        _iOS = iOS;
        _web = web;
        _android = android;
        _server = server;
    }
    return self;
}

-(void)setIOS:(int)iOS
{
    if(iOS % 2 == 1)
    {
        _iOS = iOS + 1;
    }
    else
    {
        _iOS = iOS - 1;
    }
}

-(int) getIOS
{
    return _iOS;
}

@end


int main(int argc, const char* argv[])
{
    @autoreleasepool
    {
        //1。创建model类对象
        Model* model = [[Model alloc] init];
        model.xiyouMobileArray = [NSMutableArray array]; //[NSMutableArray array] 调用了类方法 array，该方法是 NSArray 类的工厂方法之一，用于创建一个新的空数组。
        //返回的数组是可变的，这意味着你可以随时向其中添加或删除元素，而不需要创建新的数组实例。
        //这种方式创建的数组是最常见的方式之一，用于初始化一个可变数组，以便后续向其中添加数据。
        
        //2.创建五个XiyouMobilePerson对象，并设置属性
        XiyouMobilePerson *person1 = [[XiyouMobilePerson alloc] initWithName:@"John" age:30 iOS:5 web:3 android:@"Android1" server:@"Server1"];
        XiyouMobilePerson *person2 = [[XiyouMobilePerson alloc] initWithName:@"Alice" age:28 iOS:6 web:2 android:@"Android2" server:@"Server2"];
        XiyouMobilePerson *person3 = [[XiyouMobilePerson alloc] initWithName:@"Bob" age:35 iOS:7 web:4 android:@"Android3" server:@"Server3"];
        XiyouMobilePerson *person4 = [[XiyouMobilePerson alloc] initWithName:@"Eva" age:25 iOS:3 web:2 android:@"Android4" server:@"Server4"];
        XiyouMobilePerson *person5 = [[XiyouMobilePerson alloc] initWithName:@"Sam" age:32 iOS:8 web:1 android:@"Android5" server:@"Server5"];
        
        //3.将XiyouMobilePerson 对象添加到xiyouMobileArray中
        [model.xiyouMobileArray addObject:person1];
        [model.xiyouMobileArray addObject:person2];
        [model.xiyouMobileArray addObject:person3];
        [model.xiyouMobileArray addObject:person4];
        [model.xiyouMobileArray addObject:person5];
        
        //4.打印iOS变量值最大的对象
        XiyouMobilePerson *maxiOSPerson = nil;
        int maxiOSValue = INT_MIN;
        
        for (XiyouMobilePerson *person in model.xiyouMobileArray)
        {
            if (person.iOS > maxiOSValue)
            {
                maxiOSValue = person.iOS;
                maxiOSPerson = person;
            }
        }
        
        if (maxiOSPerson)
        {
            NSLog(@"iOS 变量值最大的对象信息：Name: %@, Age: %ld, iOS: %d, web: %d, Android: %@, Server: %@", maxiOSPerson.name, (long)maxiOSPerson.age, maxiOSPerson.iOS, maxiOSPerson.web, maxiOSPerson.android, maxiOSPerson.server);
        }
        else
        {
            NSLog(@"xiyouMobileArray 中没有元素");
        }
        
        // 5. 删除 xiyouMobileArray 中 range 为 (2,3) 的成员
        if (model.xiyouMobileArray.count >= 5)
        {
            NSRange rangeToDelete = NSMakeRange(2, 3);
            [model.xiyouMobileArray removeObjectsInRange:rangeToDelete];
        }
        
        // 打印 xiyouMobileArray 的内容
        for (XiyouMobilePerson *person in model.xiyouMobileArray)
        {
            NSLog(@"Name: %@, Age: %ld, iOS: %d, web: %d, Android: %@, Server: %@", person.name, (long)person.age, person.iOS, person.web, person.android, person.server);
        }
        
    }
        
    
}


