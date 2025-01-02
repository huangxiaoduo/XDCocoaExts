//
//  NSData+Exts.m
//  Pods
//
//  Created by 泽 on 1/2/25.
//

#import "NSData+Exts.h"

@implementation NSData (Exts)

- (id)objectFromJSONData {
    NSError *error = nil;
       // 使用 NSJSONSerialization 将 NSData 转换为 JSON 对象
       id jsonObject = [NSJSONSerialization JSONObjectWithData:self
                                                       options:NSJSONReadingMutableContainers
                                                         error:&error];
       
       // 如果解析失败，输出错误信息并返回 nil
       if (error) {
           NSLog(@"Error parsing JSON: %@", error.localizedDescription);
           return nil;
       }
       
       return jsonObject;
}

@end
