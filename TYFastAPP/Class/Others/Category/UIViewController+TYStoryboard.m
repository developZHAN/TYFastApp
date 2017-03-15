//
//  UIViewController+TYStoryboard.m
//  Bulter
//
//  Created by 詹瞻 on 2017/3/10.
//  Copyright © 2017年 zhanZHAN. All rights reserved.
//

#import "UIViewController+TYStoryboard.h"

@implementation UIViewController (TYStoryboard)

+ (instancetype)viewControllerForStoryBoardName:(NSString *)name
{
    //获取viewController
    return [[UIStoryboard storyboardWithName:name bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

@end
