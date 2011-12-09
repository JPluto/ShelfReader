    //
//  PopoverController.m
//  PerfectTable
//
//  Created by liu on 11-6-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PopoverController.h"

@implementation UINavigationController(background)

-(void)addBackgroundView:(NSString*)image{
	UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
	imgView.frame = CGRectMake(0, 0, 320, 44);
	[self.navigationBar addSubview: imgView];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake((320-150)/2, 0, 150, 44)];
    [title setText:@"NewsStand"];
    [title setTextColor:[UIColor whiteColor]];
    [title setTextAlignment:UITextAlignmentCenter];
    [title setShadowColor:[UIColor grayColor]];
    [title setBackgroundColor:[UIColor clearColor]];
    [title setFont:[UIFont boldSystemFontOfSize:20.0]];
    [self.navigationBar addSubview:title];
}

@end
