//
//  BFKMasterViewController.h
//  BufferKitDemo
//
//  Created by Andrew Yates on 01/04/2014.
//  Copyright (c) 2014 Andrew Yates. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BFKDetailViewController;

@interface BFKMasterViewController : UITableViewController

@property (strong, nonatomic) BFKDetailViewController *detailViewController;

@end
