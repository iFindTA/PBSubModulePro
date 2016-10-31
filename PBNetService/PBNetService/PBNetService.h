//
//  PBNetService.h
//  PBNetService
//
//  Created by nanhu on 16/10/31.
//  Copyright © 2016年 nanhu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PBNetService : NSObject

/**
 singletone mode

 @return the instance of singletone
 */
+ (PBNetService *)shared;

- (void)post:(nonnull NSString *)path parameters:(nullable NSDictionary *)params;

NS_ASSUME_NONNULL_END

@end
