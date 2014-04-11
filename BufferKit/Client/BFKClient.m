//
//  BFKClient.m
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient.h"

@implementation BFKClient

@synthesize accessToken = _accessToken;

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

- (void)setAccessToken:(NSString *)accessToken {
    if(accessToken == nil || [accessToken length] == 0) {
        [NSException raise:@"BFKInvalidAccessToken" format:@"You have provided an invalid Buffer access token."];
    }
    
    // Logs and updates the access token.
    NSLog(@"[BufferKit] Access token set: %@", _accessToken = accessToken);
}

#pragma mark -



@end
