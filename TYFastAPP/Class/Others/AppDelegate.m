//
//  AppDelegate.h
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //选择根控制器
    [TYGuideTool guideRootViewController:self.window];
    
    //显示窗口
    [self.window makeKeyAndVisible];

    
    return YES;
}

@end
