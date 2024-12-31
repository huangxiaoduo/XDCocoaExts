//
//  NSString+Exts.h
//  Pods
//
//  Created by 泽 on 12/31/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Exts)

- (id)toJSONValue;

+ (NSString *)stringWithInteger:(NSInteger)intValue;
@end

NS_ASSUME_NONNULL_END
