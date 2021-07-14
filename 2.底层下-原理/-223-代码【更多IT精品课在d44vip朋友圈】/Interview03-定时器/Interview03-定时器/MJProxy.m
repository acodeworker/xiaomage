//
//  MJProxy.m
//  Interview03-定时器
//
//  Created by MJ Lee on 2018/6/19.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "MJProxy.h"

@implementation MJProxy

+ (instancetype)proxyWithTarget:(id)target
{
    MJProxy *proxy = [MJProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature*)methodSignatureForSelector:(SEL)sel{
  return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation{
  [invocation invokeWithTarget:self.target];
}




@end
