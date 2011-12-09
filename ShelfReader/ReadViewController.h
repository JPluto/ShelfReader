//
//  ReadViewController.h
//  TenfenRead
//
//  Created by liu on 10-1-7.
//  Copyright 2009 boya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReadViewController : UIViewController <UIScrollViewDelegate>{
    UIScrollView *scrollView;
}
@property(nonatomic,strong) UIScrollView *scrollView;;
-(void)add;
-(void)dele;
-(void)reloadView;
@end
