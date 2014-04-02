//
//  BFKClient+BFKInfo.h
//  BufferKit
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import "BFKClient.h"

@interface BFKClient (BFKInfo)

- (void)fetchConfigurationWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
