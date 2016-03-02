//
//  UserModel.h
//  VinuxPost
//
//  Created by 邱少依 on 15/11/20.
//  Copyright © 2015年 Ricky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject
/*
 * 用户类型：number
 */
@property (nonatomic, copy) NSNumber *User_Type;
/*
 * 手机
 */
@property (nonatomic, copy) NSString *Mobile;
/*
 * 头像url
 */
@property (nonatomic, copy) NSString *zpurl;
//性别
@property (nonatomic, copy) NSString *Sex;
/*
 * 员工类型
 */
@property (nonatomic, copy) NSString *yzlx;
/*
 * Vinux_UserID 的ID
 */
@property (nonatomic, copy) NSString *Vinux_UserID;
//出生日期
@property (nonatomic, copy) NSString *Birdate;
/*
 * 员工名称
 */
@property (nonatomic, copy) NSString *Name;
/*
 * Vinux_firstOrderMediaId
 */
@property (nonatomic, copy) NSString *Vinux_firstOrderMediaId;
//ID
@property (nonatomic, copy) NSString *ID;



//User_Type = 102,
//Mobile = 13611111111,
//zpurl = http://gmsq.80dev.com/images/config/Head_1.png,
//Sex = ,
//yzlx = 业主,
//Vinux_UserID = 690,
//Birdate = ,
//Name = 业主1,
//Vinux_firstOrderMediaId = <null>,
//ID = 2281

@end
