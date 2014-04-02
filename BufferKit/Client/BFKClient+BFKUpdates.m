//
//  BFKClient+BFKUpdates.m
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient+BFKUpdates.h"

@implementation BFKClient (BFKUpdates)

#define pageParamater(pageIndex) @{@"count": @(self.perPage), @"page": @(pageIndex)}

#pragma mark - GET Requests

- (void)fetchPendingUpdatesForProfileID:(NSString *)profileID page:(uint)page success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self GET:[NSString stringWithFormat:@"/profiles/%@/updates/pending.json?access_token=%@", profileID, self.accessToken] parameters:pageParamater(page) success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)fetchSentUpdatesForProfileID:(NSString *)profileID page:(uint)page success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self GET:[NSString stringWithFormat:@"/profiles/%@/updates/sent.json?access_token=%@", profileID, self.accessToken] parameters:pageParamater(page) success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

#pragma mark - POST Requests

- (void)shuffleUpdatesForProfileID:(NSString *)profileID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self POST:[NSString stringWithFormat:@"/profles/%@/updates/shuffle.json?access_token=%@", profileID, self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)createUpdateWithDictionary:(NSDictionary *)update success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self POST:[NSString stringWithFormat:@"updates/create.json?access_token=%@", self.accessToken] parameters:update success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)editUpdateWithDictionary:(NSDictionary *)update success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self POST:[NSString stringWithFormat:@"updates/%@/update.json?access_token=%@", [update valueForKey:@"id"], self.accessToken] parameters:update success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}


- (void)shareUpdate:(NSString *)updateID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self POST:[NSString stringWithFormat:@"/updates/%@/share.json?access_token=%@", updateID, self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)deleteUpdate:(NSString *)updateID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self POST:[NSString stringWithFormat:@"/updates/%@/destroy.json?access_token=%@", updateID, self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)moveToTopUpdate:(NSString *)updateID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self POST:[NSString stringWithFormat:@"/updates/%@/move_to_top.json?access_token=%@", updateID, self.accessToken] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

@end
