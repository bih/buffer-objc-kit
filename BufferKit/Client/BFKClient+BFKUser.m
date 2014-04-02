//
//  BFKClient+BFKUser.m
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient+BFKUser.h"

@implementation BFKClient (BFKUser)

#pragma mark - GET Requests

- (void)fetchUserWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self GET:[NSString stringWithFormat:@"user.json?access_token=%@", self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

@end
