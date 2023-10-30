//
//  main.m
//  10_30_NSDictionary_NSMutableDictionary
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个不可变字典
        NSDictionary *immutableDictionary = @{
            @"Name": @"John",
            @"Age": @30,
            @"City": @"New York"
        };
        NSLog(@"Immutable Dictionary: %@", immutableDictionary);

        // 获取字典中键值对的数量
        NSUInteger count = [immutableDictionary count];
        NSLog(@"Number of key-value pairs in Immutable Dictionary: %lu", (unsigned long)count);

        // 获取字典中的值
        NSString *name = [immutableDictionary objectForKey:@"Name"];
        NSLog(@"Name: %@", name);

        // 检查字典中是否包含某个键
        if ([immutableDictionary objectForKey:@"Country"]) {
            NSLog(@"Country key exists in Immutable Dictionary");
        } else {
            NSLog(@"Country key does not exist in Immutable Dictionary");
        }

        // 创建一个可变字典
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionaryWithDictionary:immutableDictionary];
        NSLog(@"Mutable Dictionary: %@", mutableDictionary);

        // 添加键值对到可变字典
        [mutableDictionary setObject:@"USA" forKey:@"Country"];
        NSLog(@"Updated Mutable Dictionary: %@", mutableDictionary);

        // 移除键值对
        [mutableDictionary removeObjectForKey:@"Age"];
        NSLog(@"Updated Mutable Dictionary (after removing Age): %@", mutableDictionary);

        // 替换键值对的值
        [mutableDictionary setObject:@35 forKey:@"Age"];
        NSLog(@"Updated Mutable Dictionary (after replacing Age): %@", mutableDictionary);

        // 清空可变字典
        [mutableDictionary removeAllObjects];
        NSLog(@"Emptied Mutable Dictionary: %@", mutableDictionary);
    }
    return 0;
}

/*
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个不可变字典
        NSDictionary *immutableDictionary = @{
            @"Name": @"John",
            @"Age": @30,
            @"City": @"New York"
        };
        NSLog(@"Immutable Dictionary: %@", immutableDictionary);

        // 遍历字典
        for (NSString *key in immutableDictionary) {
            id value = [immutableDictionary objectForKey:key];
            NSLog(@"Key: %@, Value: %@", key, value);
        }

        // 获取所有键和值
        NSArray *allKeys = [immutableDictionary allKeys];
        NSArray *allValues = [immutableDictionary allValues];
        NSLog(@"All Keys: %@", allKeys);
        NSLog(@"All Values: %@", allValues);

        // 判断字典是否为空
        if ([immutableDictionary count] == 0) {
            NSLog(@"Immutable Dictionary is empty.");
        } else {
            NSLog(@"Immutable Dictionary is not empty.");
        }

        // 合并字典
        NSDictionary *extraData = @{
            @"Country": @"USA",
            @"Gender": @"Male"
        };
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionaryWithDictionary:immutableDictionary];
        [mutableDictionary addEntriesFromDictionary:extraData];
        NSLog(@"Merged Mutable Dictionary: %@", mutableDictionary);
    }
    return 0;
}

*/
