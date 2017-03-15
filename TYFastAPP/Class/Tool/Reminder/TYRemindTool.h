//
//  TYRemindTool.h
//
//  Created by 詹瞻
//
//  For Fast APP
//


#import <UIKit/UIKit.h>

@class MBProgressHUD;

@interface TYRemindTool : NSObject

+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

//+ (MBProgressHUD *)showLoadIng:(NSString *)loading;
//+ (MBProgressHUD *)showLoadIng:(NSString *)loading toView:(UIView *)view;


@end
