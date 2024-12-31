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
@end
