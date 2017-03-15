//
//  UIViewController+TYStoryboard.h
//  Bulter
//
//  Created by 詹瞻 on 2017/3/10.
//  Copyright © 2017年 zhanZHAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (TYStoryboard)

+ (instancetype)viewControllerForStoryBoardName:(NSString *)name;

@end
