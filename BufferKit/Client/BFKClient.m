//
//  BFKClient.m
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient.h"

@implementation BFKClient

+ (BFKClient *)sharedClient {
    static BFKClient *_sharedClient = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedClient = [[self alloc] initWithBaseURL:[[self class] APIBaseURL]];
        _sharedClient.perPage = 20;
        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedClient.requestSerializer = [AFHTTPRequestSerializer serializer];
    });
    
    return _sharedClient;
}

+ (NSURL *)APIBaseURL {
	return [NSURL URLWithString:@"https://api.bufferapp.com/1/"];
}

#pragma mark -



@end
