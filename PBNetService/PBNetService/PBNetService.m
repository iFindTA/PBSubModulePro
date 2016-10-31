//
//  PBNetService.m
//  PBNetService
//
//  Created by nanhu on 16/10/31.
//  Copyright © 2016年 nanhu. All rights reserved.
//

#import "PBNetService.h"
#import <AFNetworking.h>

@interface PBNetService ()

@end

static PBNetService *instance = nil;

@implementation PBNetService

+ (PBNetService *)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[PBNetService alloc] init];
    });
    
    return instance;
}

- (void)post:(NSString *)path parameters:(NSDictionary *)params {
    NSLog(@"this method called in framework!");
    //*
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://baidu.com/" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"static framework response:%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"static framework failed:%@",error.localizedDescription);
    }];
    //*/
}

@end
