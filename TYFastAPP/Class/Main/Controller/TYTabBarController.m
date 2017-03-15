//
//  TYTabBarController.m
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import "TYTabBarController.h"
#import "TYNavigationController.h"

@interface TYTabBarController ()

@property (nonatomic, strong) UIViewController *VC00;
@property (nonatomic, strong) UIViewController *VC01;
@property (nonatomic, strong) UIViewController *VC02;
@property (nonatomic, strong) UIViewController *VC03;
@property (nonatomic, strong) UIViewController *VC04;

@end

@implementation TYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.backgroundColor = TYColorTabNavBg;
    
    [self setUpAllSubViewController];
    
}

#pragma mark - private method
/**
 *  set up all sub view controller
 */
- (void)setUpAllSubViewController
{
    // VC00
    UIViewController *VC00 = [[UIViewController alloc] init];
    [self setUpOneSubViewController:VC00
                              image:[UIImage imageNamed:@"ic_home-page_gray"]
                      selectedImage:[UIImage imageWithOriginalName:@"ic_home-page_blue"]
                              title:@"VC00"];
    _VC00 = VC00;
    
    // VC01
    UIViewController *VC01 = [[UIViewController alloc] init];
    [self setUpOneSubViewController:VC01
                              image:[UIImage imageNamed:@"ic_news_gray"]
                      selectedImage:[UIImage imageWithOriginalName:@"ic_news_blue"]
                              title:@"VC01"];
    _VC01 = VC01;
    
    // VC02
    UIViewController *VC02 = [[UIViewController alloc] init];
    [self setUpOneSubViewController:VC02
                              image:[UIImage imageNamed:@"ic_Mail-list_gray"]
                      selectedImage:[UIImage imageWithOriginalName:@"ic_Mail-list_blue"]
                              title:@"VC02"];
    _VC02 = VC02;
    
    // VC03
    UIViewController *VC03 = [[UIViewController alloc] init];
    [self setUpOneSubViewController:VC03
                              image:[UIImage imageNamed:@"ic_me_gray"]
                      selectedImage:[UIImage imageWithOriginalName:@"ic_me_blue"]
                              title:@"VC03"];
    _VC03 = VC03;
    
    // VC04
    UIViewController *VC04 = [[UIViewController alloc] init];
    [self setUpOneSubViewController:VC04
                              image:[UIImage imageNamed:@"ic_me_gray"]
                      selectedImage:[UIImage imageWithOriginalName:@"ic_me_blue"]
                              title:@"VC04"];
    _VC04 = VC04;
}

/**
 *  set up one sub view controller
 */
- (void)setUpOneSubViewController:(UIViewController *)viewController
                            image:(UIImage *)image
                    selectedImage:(UIImage *)selectedImage
                            title:(NSString *)title
{
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = image;
    viewController.tabBarItem.selectedImage = selectedImage;
    
    TYNavigationController *nav = [[TYNavigationController alloc] initWithRootViewController:viewController];
    
    [self addChildViewController:nav];
    
}

@end
