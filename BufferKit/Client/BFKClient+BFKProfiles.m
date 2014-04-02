//
//  BFKClient+BFKProfiles.m
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient+BFKProfiles.h"

@implementation BFKClient (BFKProfiles)

#pragma mark - GET Requests

- (void)fetchProfilesWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self GET:[NSString stringWithFormat:@"profiles.json?access_token=%@", self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)fetchProfileWithID:(NSString *)profileID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self GET:[NSString stringWithFormat:@"profiles/%@.json?access_token=%@", profileID, self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)fetchProfileScheduleWithID:(NSString *)profileID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self GET:[NSString stringWithFormat:@"profiles/%@/schedules.json?access_token=%@", profileID, self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

#pragma mark - POST Requests

// update schedules

@end
