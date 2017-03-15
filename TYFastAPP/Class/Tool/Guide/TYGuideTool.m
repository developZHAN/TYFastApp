//
//  TYGuideTool.m
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import "TYGuideTool.h"

#import "TYTabBarController.h"
#import "TYNavigationController.h"
#import "TYNewFeatureVC.h"

#import "TYSignInnViewController.h"

#define TYVersionKey @"version"
#define TYUserDefaults [NSUserDefaults standardUserDefaults]

@implementation TYGuideTool

+ (void)guideRootViewController:(UIWindow *)window
{
    // 选择根控制器
    //判断用户是否已经登录
    if (TYAccountCurrent) {
        //用户已经登录
        
        //判断是否需要展示新特性界面
        
        // 1.获取当前的版本号
        NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
        
        // 2.获取上一次的版本号
        NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:TYVersionKey];

        if ([currentVersion isEqualToString:lastVersion]) { // 没有最新的版本号
            
            
            // 创建tabBarVc
            TYTabBarController *tabBarVc = [[TYTabBarController alloc] init];
            
            // 设置窗口的根控制器
            window.rootViewController = tabBarVc;
            
        }else{ // 有最新的版本号
            
            // 进入新特性界面
            TYNewFeatureVC *newFeatureVC = [[TYNewFeatureVC alloc] init];
            window.rootViewController = newFeatureVC;
            
            // 保持当前的版本，用偏好设置
            [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:TYVersionKey];
        }

    }else{
        
        //用户尚未登录
        
        // 进入登录界面
        TYSignInnViewController *signInnViewController = [TYSignInnViewController viewControllerForStoryBoardName:@"TYAuthoriozation"];
        TYNavigationController *nav = [[TYNavigationController alloc] initWithRootViewController:signInnViewController];
        
        window.rootViewController = nav;
        
    }

}

+ (void)guideRootViewController
{
    [self guideRootViewController:[UIApplication sharedApplication].keyWindow];
    
}
@end
