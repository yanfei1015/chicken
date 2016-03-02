//
//  GuomaoRequestCenter.m
//  接口测试
//
//  Created by wangfh on 15/11/16.
//  Copyright © 2015年 wangfh. All rights reserved.
//

#import "GuomaoRequestCenter.h"

static NSString *const kHost = @"http://gmsq.80dev.com:8080/";
//static NSString *const kHost = @"http://vinuxmember.vinux.com/";


@implementation GuomaoRequestCenter

+ (instancetype)defaultCenter
{
    static GuomaoRequestCenter *guomao_defaultCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        guomao_defaultCenter = [[self alloc] initWithBaseURL:[NSURL URLWithString:kHost]];
    });
    return guomao_defaultCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.timeoutInterval = 90.0f;
    }
    return self;
}

- (TCHTTPRequest *)fetchRespondsForParams:(NSDictionary *)params
                                   method:(NSString *)method
                                   apiURL:(NSString *)apiURL
                                beforeRun:(void (^)(TCHTTPRequest *))beforeRun

{
    if (params == nil) {
        return nil;
    }
    
    TCHTTPRequest *request;
    
    // 处理GET请求
    NSComparisonResult comparisonReG = [method caseInsensitiveCompare:@"GET"];
    if (comparisonReG == NSOrderedSame) {
       request = [self cacheRequestWithMethod:kTCHTTPRequestMethodGet apiUrl:apiURL host:nil];
    }
    
    // 处理POST请求
    NSComparisonResult comparisonReP = [method caseInsensitiveCompare:@"POST"];
    if (comparisonReP == NSOrderedSame) {
       request = [self cacheRequestWithMethod:kTCHTTPRequestMethodPost apiUrl:apiURL host:nil];
    }
    
    if (beforeRun) {
        beforeRun(request);
    }
    
    request.parameters = params;
    request.cacheTimeoutInterval = 10 * 60;
    request.shouldExpiredCacheValid = NO;
    return [request start:NULL] ? request : nil;
}


@end
