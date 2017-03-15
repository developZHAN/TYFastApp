//
//  TYAccountTool.h
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import <Foundation/Foundation.h>

@class TYAccount;
@interface TYAccountTool : NSObject

/**
 *  存储
 */
+ (void)saveAccount:(TYAccount *)account;

/**
 *  读取
 */
+ (TYAccount *)account;

/**
 *  清除账户数据
 */
+ (void)deleteAccountData;
@end
