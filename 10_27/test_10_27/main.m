//
//  main.m
//  test_10_27
//
//  Created by 差不多先生 on 2023/10/27.
//

#import <Foundation/Foundation.h>
#import "MySingleton.h"
#import "Person.h"




//
//int main(int argc, const char * argv[])
//{
//    @autoreleasepool
//    {
//        MySingleton* singleton = [MySingleton sharedInstance];
//
//        NSLog(@"%p",singleton);
//
//    }
//    return 0;
//}

//定义person类
@interface Person : NSObject

@property (nonatomic,strong) NSString* name;  //NSString类型用strong
@property (nonatomic,assign) NSInteger age;  //基本数据类型用assign

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age;
-(NSString *)description;

@end



//实现person类
@implementation Person


//初始化的核心逻辑：
//1.首先要用父类初始化自己
//2.判断父类初始化成功，再赋值（初始化就是赋值就是核心逻辑）
//3.返回自己 返回值一般就写 instancetype
-(instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    self = [super init];
    if(self)
    {
        self.name = name;
        self.age = age;
    }
    return self;
}

//这个难点，就是学会用字符串类的类方法，造一个字符串
-(NSString *)description
{
    return [NSString stringWithFormat:@"Name : %@,Age : %ld",self.name,self.age];
}

@end


/////////////////

@class XiyouMobilePerson;
//新建Model类
@interface Model : NSObject

@property (nonatomic,strong) NSMutableArray<XiyouMobilePerson*>* xiyouMobileArray;

@end

@protocol Demand <NSObject>

@required
-(void)calculate;

@optional
-(void)unnecessary;


@end


//定义XiyouMobilePerson类
// XiyouMobilePerson.h
@interface XiyouMobilePerson : Person<Demand>

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age iOS:(int)iOS web:(int)web android:(NSString*)android server:(NSString*)server;

@end

// XiyouMobilePerson.m
@interface XiyouMobilePerson ()  //定义一个扩展

@property (nonatomic,assign) int iOS;
@property (nonatomic,assign) int web;
@property (nonatomic,strong) NSString* android;
@property (nonatomic,strong) NSString* server;

@end

@implementation XiyouMobilePerson

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
    if(iOS % 2 == 0)
    {
        _iOS = iOS - 1;
    }
    else
    {
        _iOS = iOS + 1;
    }
}

-(void)calculate
{
    NSLog(@"iOS + web = %d",_iOS + _web);
}

@end


//在上面的示例中，XiyouMobilePerson 继承自 Person 类，并添加了四个成员变量：iOS、web、android 和 server。这些成员变量被声明为 @property 的属性，但在 .m 文件中使用了类扩展（Extension）来将它们隐藏起来，以便只能在该类内部或其子类中访问。另外，setIOS: 方法被重写，根据奇偶判断来对 iOS 的值进行加一或减一操作。




int main(int argc,char* argv[])
{
    @autoreleasepool
    {
        //1.
        Model* model = [[Model alloc] init];
        model.xiyouMobileArray = [NSMutableArray array]; //初始化一个空数组
        
        XiyouMobilePerson* person1 = [[XiyouMobilePerson alloc]initWithName:@"john" age:30 iOS:5 web:3 android:@"android1" server:@"server1"];
        XiyouMobilePerson* person2 = [[XiyouMobilePerson alloc] initWithName:@"Alice" age:28 iOS:6 web:2 android:@"Android2" server:@"Server2"];
        XiyouMobilePerson* person3 = [[XiyouMobilePerson alloc] initWithName:@"Bob" age:35 iOS:7 web:4 android:@"Android3" server:@"Server3"];
        XiyouMobilePerson* person4 = [[XiyouMobilePerson alloc] initWithName:@"Eva" age:25 iOS:3 web:2 android:@"Android4" server:@"Server4"];
        XiyouMobilePerson* person5 = [[XiyouMobilePerson alloc] initWithName:@"Sam" age:32 iOS:8 web:1 android:@"Android5" server:@"Server5"];
        
        [model.xiyouMobileArray addObject:person1];
        [model.xiyouMobileArray addObject:person2];
        [model.xiyouMobileArray addObject:person3];
        [model.xiyouMobileArray addObject:person4];
        [model.xiyouMobileArray addObject:person5];
        
        XiyouMobilePerson* maxiOSPerson = nil;
        int maxiOSValue = INT_MIN;
        
        for(XiyouMobilePerson* person in model.xiyouMobileArray)
        {
            if(person.iOS > maxiOSValue)
            {
                maxiOSValue = person.iOS;
                maxiOSPerson = person;
            }
        }
        
        if(maxiOSPerson)
        {
            NSLog(@"iOS 变量值最大的对象信息 ： Name：%@ ， Age： %ld，iOS ： %d， web： %d，Android %@，Server： %@",maxiOSPerson.name,maxiOSPerson.age,maxiOSPerson.iOS,maxiOSPerson.web,maxiOSPerson.android,maxiOSPerson.server);
        }
        else
        {
            NSLog(@"xiyouMobileArray 中没有元素");
        }
        
        //5.删除xiyouMobileArray中range为（2，3）的成员
        if(model.xiyouMobileArray.count >= 5)
        {
            [model.xiyouMobileArray removeObjectsInRange:NSMakeRange(2, 3)];
        }
        
        //
        for(XiyouMobilePerson *person in model.xiyouMobileArray)
        {
            NSLog(@"Name: %@, Age: %ld, iOS: %d, web: %d, Android: %@, Server: %@", person.name, (long)person.age, person.iOS, person.web, person.android, person.server);
        }
        
        
    }
}

