//
//  ShelfReaderAppDelegate.h
//  ShelfReader
//
//  Created by liu liu on 11-12-1.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReadViewController.h"

@interface ShelfReaderAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ReadViewController *rootViewController;

@end
