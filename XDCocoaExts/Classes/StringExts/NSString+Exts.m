//
//  NSString+Exts.m
//  Pods
//
//  Created by 泽 on 12/31/24.
//

#import "NSString+Exts.h"

@implementation NSString (Exts)

+ (NSString *)stringWithInteger:(NSInteger)intValue
{
    return [NSString stringWithFormat:@"%d", (int)intValue];
}

- (id)toJSONValue
{
    NSError *err = nil;
    id dic = [NSJSONSerialization JSONObjectWithData:[self dataUsingEncoding:NSUTF8StringEncoding]
                                             options:NSJSONReadingMutableContainers error:&err];
    if(!dic){
        dic = [[NSMutableDictionary alloc] initWithCapacity:4];
        if (!err) {
            NSLog(@"转换字符串出错: %@",err);
        }
    }
    return dic;
}
@end
