//
//  TYAccount.h
//
//  Created by 詹瞻
//
//  For Fast APP
//


#import <Foundation/Foundation.h>

@interface TYAccount : NSObject<NSCoding>

/**
 *  用户账户
 */
@property (nonatomic ,copy) NSString *account;

/**
 *  用户密码
 */
@property (nonatomic ,copy) NSString *password;

@end
