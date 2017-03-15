//
//  TYNavigationController.m
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import "TYNavigationController.h"

@interface TYNavigationController ()<UINavigationBarDelegate>

@end

@implementation TYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.translucent = NO;
    [self.navigationBar setBackgroundImage:[UIImage imageWithTYColor:TYColorWithHex(0x37b4ff)] forBarMetrics:UIBarMetricsDefault];
    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

/**
 *  set up back button
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    //set up the contents of fault root navigation bar
    if (self.viewControllers.count != 0) {
        //左边
        UIBarButtonItem *backBarBtnItem = [TYUICreator createBarBtnItemWithSize:CGSizeMake(9, 15)
                                                                          Image:@"ic_Return_white"
                                                                      highImage:@"ic_Return_gray"
                                                                         target:self
                                                                         action:@selector(back)
                                                               forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = backBarBtnItem;
        
    }
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}



@end
