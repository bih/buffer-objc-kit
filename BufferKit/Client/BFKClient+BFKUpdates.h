//
//  BFKClient+BFKUpdates.h
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient.h"

@interface BFKClient (BFKUpdates)

- (void)fetchPendingUpdatesForProfileID:(NSString *)profileID page:(uint)page success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)fetchSentUpdatesForProfileID:(NSString *)profileID page:(uint)page success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;


- (void)shuffleUpdatesForProfileID:(NSString *)profileID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)shareUpdate:(NSString *)updateID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)deleteUpdate:(NSString *)updateID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)moveToTopUpdate:(NSString *)updateID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;


@end
