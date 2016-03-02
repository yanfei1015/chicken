//
//  GuomaoRequestCenter.h
//  接口测试
//
//  Created by wangfh on 15/11/16.
//  Copyright © 2015年 wangfh. All rights reserved.
//

#import "TCHTTPRequestCenter.h"

@interface GuomaoRequestCenter : TCHTTPRequestCenter

/**
 国贸服务接口调度
 @param:  params：传入参数
 @apiURL: 接口path路径
 @beforeRun: 请求结果:request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {};
 */
- (TCHTTPRequest *)fetchRespondsForParams:(NSDictionary *)params
                                   method:(NSString *)method
                                   apiURL:(NSString *)apiURL
                                beforeRun:(void(^)(TCHTTPRequest *request))beforeRun;

@end
