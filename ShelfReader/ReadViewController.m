
#define ImageHeight 120

#import "ReadViewController.h"
#import "PopoverController.h"

@implementation ReadViewController

@synthesize scrollView;

- (id)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {

}

-(void)viewWillDisappear:(BOOL)animated{

}

 static int num = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:248.0/255.0 green:172.0/255.0 blue:37.0/255.0 alpha:1.0];
   
    [self.navigationController addBackgroundView:@"1.png"];
    
    
	UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] 
                                       initWithTitle:@"delete" 
                                       style:UIBarButtonItemStyleBordered
                                       target:self 
                                       action:@selector(dele)];
    
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] 
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemAdd 
                                      target:self 
                                      action:@selector(add)];

	self.navigationItem.rightBarButtonItem = rightBarButton;
    self.navigationItem.leftBarButtonItem = leftBarButton;	
    
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 416)];
    scrollView.contentSize=CGSizeMake(320,480);
    
    //设置背景颜色
    UIImage *backimg=[UIImage imageNamed:@"3.png"];
    UIImageView *backview=[[UIImageView alloc] initWithImage:backimg];
    backview.frame=CGRectMake(0, 0, 320, 480);
    [self.view addSubview:backview];

    [self.view addSubview:scrollView];
    [self reloadView];
}

//添加一个书架
-(void)add{
    
    num++;
    
    UIImage *backimg=[UIImage imageNamed:@"2.png"];
    UIImageView *backview=[[UIImageView alloc] initWithImage:backimg];
    backview.frame=CGRectMake(0, (num-1)*ImageHeight, 320, ImageHeight);
    backview.tag = num+100;
    
    [scrollView addSubview:backview];
    
    if (num>3) {
        scrollView.contentSize=CGSizeMake(320,num*ImageHeight);
    }
}

//删除一个书架
-(void)dele{
    
    if (num<=0) {
        return;
    }
    
    for (UIView *view in scrollView.subviews) {
        if(view.tag == (num+100))
            [view removeFromSuperview];
    }
    
    num--;
    
    if (num>3) {
       scrollView.contentSize=CGSizeMake(320,num*ImageHeight);  
    }
   
}

 //主界面初始化
-(void)reloadView{
   
    NSLog(@"reloadView");
    //遍历当前界面的所有子界面，把子界面删除干净
    for(UIView *view in scrollView.subviews){
        [view removeFromSuperview];
    }
    
    scrollView.showsVerticalScrollIndicator=NO;
    scrollView.showsHorizontalScrollIndicator=NO;
    scrollView.delegate=self;
    [scrollView setScrollEnabled:YES];

}

//控制滚动视图的滚动！！！
#pragma mark UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender {

}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end
