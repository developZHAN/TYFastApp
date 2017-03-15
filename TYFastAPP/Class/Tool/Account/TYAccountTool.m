//
//  TYAccountTool.m
//
//  Created by 詹瞻
//
//  For Fast APP
//

#import "TYAccountTool.h"
#import "TYAccount.h"


#define TYAccountFileName [TYDocumentsDirectory stringByAppendingPathComponent:@"account.data"]

static TYAccount *_account;
@interface TYAccountTool ()



@end

@implementation TYAccountTool

+ (void)saveAccount:(TYAccount *)account{
    [NSKeyedArchiver archiveRootObject:account toFile:TYAccountFileName];
}

+ (TYAccount *)account{
    if (!_account) {
        _account = [NSKeyedUnarchiver unarchiveObjectWithFile:TYAccountFileName];
        
        //如果本地没有储存,返回空
        if(!_account){return nil;}
        //判断账号是否过期 过期的话重新获取权限
    }
    
    return _account;
}

+ (void)deleteAccountData
{
    NSFileManager *manager = [NSFileManager defaultManager];
    
    [manager removeItemAtPath:TYAccountFileName error:nil];
    
    _account = nil;
}
@end
