//
//  TYGlobalVariables.h
//
//  Created by 詹瞻
//
//  For Fast APP
//
//  此类定义所有的宏

/**
 *  此类定义全局变量
 */

//位置类型
typedef NS_ENUM(NSInteger,TYLayoutAlignmentType)
{
    AlignmentCenter = 0,               //默认居中
    AlignmentTop,
    AlignmentBottom,
    AlignmentLeft,
    AlignmentRight
};

//输入框类型
typedef NS_ENUM(NSInteger, TYInPutViewType) {
    TYInPutViewTypeAccount = 0,        //账号输入
    TYInPutViewTypePassword,           //密码输入
    TYInPutViewTypeVerification,       //验证码输入
    TYInPutViewTypeNickName
};

//输入框类型
typedef NS_ENUM(NSInteger, TYAccountToolType) {
    TYAccountToolTypeSignIn = 0,        //账号输入
    TYAccountToolTypeSignUp,           //密码输入
    TYAccountToolTypePwdForgot,       //验证码输入
};


//输入框类型
typedef NS_ENUM(NSInteger, TYNewFriendCellType) {
    TYNewFriendCellTypeWillAdd = 0,        //即将添加
    TYNewFriendCellTypeDidAdd,             //已经添加
    TYNewFriendCellTypeNewFriend,          //手机好友
    TYNewFriendCellTypeNULL,               //没有图片
};



