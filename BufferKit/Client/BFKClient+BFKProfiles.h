//
//  BFKClient+BFKProfiles.h
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient.h"

@interface BFKClient (BFKProfiles)

- (void)fetchProfilesWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)fetchProfileWithID:(NSString *)profileID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)fetchProfileScheduleWithID:(NSString *)profileID success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
