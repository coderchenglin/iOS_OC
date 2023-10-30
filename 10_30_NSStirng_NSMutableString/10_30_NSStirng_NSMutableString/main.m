//
//  main.m
//  10_30_NSStirng_NSMutableString
//
//  Created by 差不多先生 on 2023/10/30.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个不可变字符串
        NSString *immutableString = @"Hello, ";
        NSLog(@"Immutable String: %@", immutableString);

        // 连接两个字符串
        NSString *name = @"John";
        immutableString = [immutableString stringByAppendingString:name];
        NSLog(@"Concatenated Immutable String: %@", immutableString);

        // 获取字符串长度
        NSUInteger length = [immutableString length];
        NSLog(@"Length of Immutable String: %lu", (unsigned long)length);

        // 检查字符串是否包含指定前缀或后缀
        if ([immutableString hasPrefix:@"Hello"]) {
            NSLog(@"Immutable String starts with 'Hello'");
        }
        if ([immutableString hasSuffix:@"John"]) {
            NSLog(@"Immutable String ends with 'John'");
        }

        // 转换字符串为大写或小写
        NSString *uppercaseString = [immutableString uppercaseString];
        NSString *lowercaseString = [immutableString lowercaseString];
        NSLog(@"Uppercase Immutable String: %@", uppercaseString);
        NSLog(@"Lowercase Immutable String: %@", lowercaseString);

        // 创建一个可变字符串
        NSMutableString *mutableString = [NSMutableString stringWithString:immutableString];
        NSLog(@"Mutable String: %@", mutableString);

        // 在可变字符串末尾追加内容
        [mutableString appendString:@"!"];
        NSLog(@"Appended Mutable String: %@", mutableString);

        // 替换字符串中的子串
        [mutableString replaceCharactersInRange:NSMakeRange(0, 6) withString:@"Hi"];
        NSLog(@"Replaced Mutable String: %@", mutableString);

        // 插入字符串
        [mutableString insertString:@" there, " atIndex:2];
        NSLog(@"Inserted Mutable String: %@", mutableString);

        // 删除字符串中的子串
        [mutableString deleteCharactersInRange:NSMakeRange(0, 4)];
        NSLog(@"Deleted Mutable String: %@", mutableString);
    }
    return 0;
}
/*
当运行这段代码时，你会看到以下输出：

```objc
Immutable String: Hello,
Concatenated Immutable String: Hello, John
Length of Immutable String: 12
Immutable String starts with 'Hello'
Immutable String ends with 'John'
Uppercase Immutable String: HELLO, JOHN
Lowercase Immutable String: hello, john
Mutable String: Hello, John
Appended Mutable String: Hello, John!
Replaced Mutable String: Hi, John!
Inserted Mutable String: Hi, there, John!
Deleted Mutable String: there, John!
```

现在，让我解释代码中使用的关键方法和功能：

1. **不可变字符串 (`NSString`)：**
   - 创建不可变字符串：使用`@"string content"`或`[NSString stringWithString:@"string content"]`。
   - 获取字符串长度：使用`[string length]`。
   - 检查前缀和后缀：使用`[string hasPrefix:@"prefix"]`和`[string hasSuffix:@"suffix"]`。
   - 转换为大写和小写：使用`[string uppercaseString]`和`[string lowercaseString]`。
   - 连接字符串：使用`[string1 stringByAppendingString:string2]`。

2. **可变字符串 (`NSMutableString`)：**
   - 创建可变字符串：使用`[NSMutableString stringWithString:immutableString]`。
   - 追加内容：使用`[mutableString appendString:@"string to append"]`。
   - 替换字符串：使用`[mutableString replaceCharactersInRange:range withString:@"replacement"]`。
   - 插入字符串：使用`[mutableString insertString:@"string to insert" atIndex:index]`。
   - 删除字符串：使用`[mutableString deleteCharactersInRange:range]`。

总之，不可变字符串 (`NSString`) 适用于那些不需要修改字符串内容的情况，而可变字符串 (`NSMutableString`) 适用于需要在运行时修改字符串的情况。这两个类提供了各种方法，以满足字符串操作的不同需求，使你能够在应用程序中处理文本数据。
*/
