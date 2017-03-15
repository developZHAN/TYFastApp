//
//  TYVCFromStoryBoard.m
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import "TYVCFromStoryBoard.h"

@interface TYVCFromStoryBoard ()

@end

@implementation TYVCFromStoryBoard

+ (instancetype)viewControllerForStoryBoardName:(NSString *)name
{
    //获取viewController
    return [[UIStoryboard storyboardWithName:name bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

@end
