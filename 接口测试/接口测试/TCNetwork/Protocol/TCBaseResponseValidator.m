//
//  TCBaseResponseValidator.m
//  TCKit
//
//  Created by ChenQi on 13-3-27.
//  Copyright (c) 2013年 Dake. All rights reserved.
//

#import "TCBaseResponseValidator.h"

#if ! __has_feature(objc_arc)
#error this file is ARC only. Either turn on ARC for the project or use -fobjc-arc flag
#endif

@implementation TCBaseResponseValidator


#pragma mark - TCHTTPResponseValidator

- (BOOL)validateHTTPResponse:(id)obj fromCache:(BOOL)fromCache
{
    self.success = nil != obj;
    self.data = obj;
    self.error = nil;
    
    return self.success;
}

@end
