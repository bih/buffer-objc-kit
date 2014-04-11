//
//  BFKClient.h
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface BFKClient : AFHTTPRequestOperationManager

+ (NSURL *)APIBaseURL;
+ (BFKClient *)sharedClient;

@property (assign, nonatomic) NSInteger perPage;
@property (readonly) NSString *accessToken;

// Instance-based access token setter
- (void)setAccessToken:(NSString *)accessToken;

@end
