//
//  main.m
//  10_30_NSArray_NSMutableArray
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个不可变数组
        NSArray *immutableArray = @[@"Apple", @"Banana", @"Cherry"];
        NSLog(@"Immutable Array: %@", immutableArray);

        // 获取数组元素数量
        NSUInteger count = [immutableArray count];
        NSLog(@"Number of elements in Immutable Array: %lu", (unsigned long)count);

        // 遍历数组
        for (NSString *element in immutableArray) {
            NSLog(@"Element: %@", element);
        }
        
        // 获取数组中的元素
        NSString *firstElement = [immutableArray objectAtIndex:0];
        NSLog(@"First element: %@", firstElement);

        // 检查数组是否包含某个对象
        if ([immutableArray containsObject:@"Banana"]) {
            NSLog(@"Immutable Array contains 'Banana'");
        }

        // 创建一个可变数组
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:immutableArray];
        NSLog(@"Mutable Array: %@", mutableArray);
        
        // 排序数组
        [mutableArray sortUsingSelector:@selector(compare:)];
        NSLog(@"Sorted Mutable Array: %@", mutableArray);
        
        // 深拷贝和浅拷贝
        NSArray *shallowCopy = [mutableArray copy]; // 浅拷贝
        NSMutableArray *deepCopy = [mutableArray mutableCopy]; // 深拷贝
        
        //总结：
        //1.NSArray和NSMutableArray中，copy方法对于不可变数组和可变数组都执行浅拷贝，
        //而mutableCopy方法对于不可变数组和可变数组都执行深拷贝。因此，在需要创建独立的数组副本时，通常使用mutableCopy方法。
        //2.copy返回的都是可变不可变数组 - 那么对NSMutableArray执行copy时，返回的仍然是浅拷贝的不可变数组，但是改变原数组，新的数组仍然会跟着改变，即使它本身是不可变的
        // mutableCopy方法返回的都是可变数组
        
        // 添加元素到深拷贝
        [deepCopy addObject:@"Date"];
        NSLog(@"Updated Deep Copy: %@", deepCopy);

//        // 删除元素从浅拷贝（报错，copy方法返回的对象是不可变的，但可以通过改变原对象来改变它）
          //[shallowCopy removeObject:@"Apple"];
//        NSLog(@"Updated Shallow Copy: %@", shallowCopy);
        
        // 添加元素到可变数组
        [mutableArray addObject:@"Date"];
        NSLog(@"Updated Mutable Array: %@", mutableArray);

        // 插入元素到可变数组
        [mutableArray insertObject:@"Grapes" atIndex:2];
        NSLog(@"Inserted Mutable Array: %@", mutableArray);

        // 替换元素
        [mutableArray replaceObjectAtIndex:0 withObject:@"Apricot"];
        NSLog(@"Replaced Mutable Array: %@", mutableArray);

        // 移除元素
        [mutableArray removeObject:@"Cherry"];
        NSLog(@"Removed Mutable Array: %@", mutableArray);

        // 移除所有元素
        [mutableArray removeAllObjects];
        NSLog(@"Emptied Mutable Array: %@", mutableArray);
    }
    return 0;
}

