//
//  ViewController.m
//  接口测试
//
//  Created by wangfh on 15/11/13.
//  Copyright © 2015年 wangfh. All rights reserved.
//

#import "ViewController.h"
#import "GuomaoRequestCenter.h"
#import "AFNetworking.h"
#import "UserModel.h"
#import "MJExtension.h"
#import "SVHTTPClient.h"
#import "AFNetworking.h"

#define AccessToken @"EB8D49C01D16E"

#define Mobilehuiyuan @"13644444444"

//{
//    IsSuccess = 1,
//    ResMsg = 成功,
//    User_Type = 101,
//    ResCode = 1,
//    Data = {
//        Mobile = 13644444444,
//        zpurl = ,
//        yzzt = 正常,
//        Sex = 男,
//        yzlx = 会员,
//        Vinux_UserID = 71032,
//        Birdate = ,
//        Name = 会员1,
//        Vinux_firstOrderMediaId = <null>,
//        ID = 2284
//    }
//    }

#define Mobile @"13611111111"
//{
//    IsSuccess = 1,
//    ResMsg = 成功,
//    User_Type = 102,
//    ResCode = 1,
//    Data = {
//        Mobile = 13611111111,
//        zpurl = http://gmsq.80dev.com/images/config/Head_1.png,
//        yzzt = 正常,
//        Sex = ,
//        yzlx = 业主,
//        Vinux_UserID = 690,
//        Birdate = ,
//        Name = 业主1,
//        Vinux_firstOrderMediaId = <null>,
//        ID = 2281
//    }
//    }

#define Mobilezuhu @"13622222222"
//{
//    IsSuccess = 1,
//    ResMsg = 成功,
//    User_Type = 103,
//    ResCode = 1,
//    Data = {
//        Mobile = 13622222222,
//        zpurl = ,
//        yzzt = 正常,
//        Sex = 男,
//        yzlx = 租户,
//        Vinux_UserID = 9058,
//        Birdate = ,
//        Name = 租户1,
//        Vinux_firstOrderMediaId = 159,
//        ID = 2282
//    }
//    }
#define Mobilechengyuan @"13633333333"
//{
//    IsSuccess = 1,
//    ResMsg = 成功,
//    User_Type = 104,
//    ResCode = 1,
//    Data = {
//        Mobile = 13633333333,
//        zpurl = ,
//        yzzt = 正常,
//        Sex = 男,
//        yzlx = 成员,
//        Vinux_UserID = 71033,
//        Birdate = ,
//        Name = 成员1,
//        Vinux_firstOrderMediaId = <null>,
//        ID = 2285
//    }
//    }

#define Mkefu @"13755555555"
//{
//    IsSuccess = 1,
//    ResMsg = 成功,
//    User_Type = 201,
//    ResCode = 1,
//    Data = {
//        Mobile = 13755555555,
//        Vinux_firstOrderMediaId = <null>,
//        Name = 客服1,
//        ID = 13755555555,
//        zt = 正常,
//        Vinux_UserID = 71048,
//        Birdate = ,
//        Work_State = 0,
//        zpurl = ,
//        ssbm = 客服部,
//        ssjs = 客服,
//        Sex = 男
//    }
//    }
#define Mgongchengshi @"13711111111"
//{
//    IsSuccess = 1,
//    ResMsg = 成功,
//    User_Type = 202,
//    ResCode = 1,
//    Data = {
//        Mobile = 13711111111,
//        Vinux_firstOrderMediaId = <null>,
//        Name = 工程师1,
//        ID = 13711111111,
//        zt = 正常,
//        Vinux_UserID = 943,
//        Birdate = ,
//        Work_State = 4,
//        zpurl = ,
//        ssbm = 工程部,
//        ssjs = 工程师,
//        Sex = 男
//    }
//    }


#define MobileCode @"1"
//[str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];编码
//[str stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]; 解码
//userType :会员 0 ；其他客户都是1；客服是2，工程师3。

@interface ViewController ()


@end

@implementation ViewController
- (BOOL)prefersStatusBarHidden {
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self getValidateCode];
//    [self userRegister];
 //[self userLogin];
//    [self getUserInfo];//该接口返回内容和登录一致。暂未使用
//    [self editUserInfo];
//    [self editStaffInfo];
// [self getUserFangChan];
//    [self getNewsList];
//    [self getNewsInfo];
//    [self notify_Confirm];
// [self get_TouSu_Class];
// [self create_TouSu];
//    [self get_TouSu_List];
//    [self cheXiao_TouSu];
//    [self get_GongDan_Class];
//    [self create_GongDan];
// [self get_GongDan_List];
//            [self cheXiao_GongDan];
//                    [self get_GongChengShi_List];
//                    [self gongDan_ShenPi];
//                    [self gongDan_BanLi_Start];
//                    [self gongDan_BanLi_Finish];
//                    [self gongDan_PingJia];
// [self QianDao];
//    [self getDiaoYanList];
//    [self getDiaoYanInfo];
//    [self getProblemList];
//    [self daTi];
//    [self get_DaTi_Log_List];
//    [self upload_File];
    [self test];
   //[self mobile];
    //[self mobil];
    //[self getValidateCode];
}

- (void)test {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"goodsSku"] = @"608";
//    params[@"loginId"] = @"200493";
//    params[@"pageNo"] = @"1";
//    params[@"productType"] = @"6";
    NSString *str = @"http://apikitchen.vinuxpost.com/chefFood/getGoodsInfoBySku.vhtml";
//    NSMutableDictionary *params = @{}.mutableCopy;
//    params[@"game_userid"] = @"1000111100009461947";
    [[SVHTTPClient sharedClient]POST:str parameters:params completion:^(id response, NSHTTPURLResponse *urlResponse, NSError *error) {
   
       // NSLog(@"%@%@",[response superclass],response);
        
        //data转json
      NSString *string =  [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        NSLog(@"%@",string);
//        //data转字典
//        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableContainers error:nil];
//        NSLog(@"加油卡充值%@",dic);

    }];

//    NSDate *date = [NSDate date];
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSDateComponents *comps;
//
//    // 年月日获得
//    comps = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit)
//                        fromDate:date];
//    NSInteger year = [comps year];
//    NSInteger month = [comps month];
//    NSInteger day = [comps day];
//    NSLog(@"year: %ld month: %d, day: %d", (long)year, month, day);
//    
//    
//    // 周几和星期几获得
//    comps = [calendar components:(NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekdayOrdinalCalendarUnit)
//                        fromDate:date];
//    NSInteger weekday = [comps weekday]; // 星期几（注意，周日是“1”，周一是“2”。。。。）
//    NSLog(@" weekday: %ld weekday ordinal: %ld",(long)weekday);
 
 
//    [self getCurrentTime];
}

//- (NSString *)getCurrentTime {
//    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
//    [formatter setDateFormat:@"yyyy-MM-dd"];
//    NSString *dateTime = [formatter stringFromDate:[NSDate date]];
//    self.startTime = dateTime;
//    
//    return self.startTime;
//}

-(void)mobile{

    NSString *str = @"http://mobile.vinuxpost.com/MobileOpen/validateMobile.vhtml";
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"mobile"] = @"18730609718";
    params[@"value"] =@"50";
    params[@"price"] =@"45";
    [[SVHTTPClient sharedClient] POST:str parameters:nil completion:^(id response, NSHTTPURLResponse *urlResponse, NSError *error) {
       // NSLog(@"%@",response);
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"手机充值%@",dic);
    }];
}
-(void)mobil{
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"game_userid"] = @"1000111100009461947";
    params[@"userId"] = @"201189";
    params[@"mobile"] = @"18730609718";
    params[@"price"] = @"100";
    params[@"assId"] = @"213";
    NSString *str = @"http://watercoal.vinuxpost.com/appfuelcard/pushFuelCardOrderToCart.vhtml";
          [[SVHTTPClient sharedClient] POST:str parameters:params completion:^(id response, NSHTTPURLResponse *urlResponse, NSError *error) {
        NSLog(@"%@",response);
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableContainers error:nil];
                NSLog(@"qwertyuiop[wertyuiop[ertyuio%@",dic);
    }];
}
//3.1.1发送手机验 已发布
- (void)getValidateCode {
//    NSMutableDictionary *params = @{}.mutableCopy;
//    params[@"Access_Token"] = AccessToken;
//    params[@"Mobile"] = @"2";
    NSString *str = @"http://apikitchen.vinuxpost.com/chef/getCookBaseInfo.vhtml";
    [[GuomaoRequestCenter defaultCenter]fetchRespondsForParams:nil method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success){
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.1.2用户注册
//接口URL：http://域名/user/UserRegister.aspx
- (void)userRegister {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    params[@"ValidateCode"] = @"";  //短信验证码
    params[@"Password"] = @"1";
    NSString *str = @"user/UserRegister.aspx";
    
    [[GuomaoRequestCenter defaultCenter]fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.1.3用户登录【已发布】
//接口URL：http://域名/user/UserLogin.aspx
- (void)userLogin {
    NSMutableDictionary *params = @{}.mutableCopy;
    NSString *str  = @"user/UserLogin.aspx";
    
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mkefu;
    params[@"Password"] = @"1";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            UserModel *model = [UserModel mj_objectWithKeyValues:request.responseObject[@"Data"]];
            model.User_Type = request.responseObject[@"User_Type"];
            NSLog(@"%@",request.responseObject);
            
        };
    }];
    /*
     * 
     {
     IsSuccess = 1,
     ResMsg = 成功,
     User_Type = 102,
     ResCode = 1,
     Data = {
     Mobile = 13611111111,
     zpurl = http://gmsq.80dev.com/images/config/Head_1.png,
     yzzt = 正常,
     Sex = ,
     yzlx = 业主,
     Vinux_UserID = 690,
     Birdate = ,
     Name = 业主1,
     Vinux_firstOrderMediaId = <null>,
     ID = 2281
     }
     }
     
     */

}

//3.1.4获取人员信息【已发布】
//接口URL：http://域名/user/GetUserInfo.aspx
- (void)getUserInfo {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    NSString *str  = @"user/GetUserInfo.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    
}

//3.1.6 客户 修改个人信息【已发布】
//接口URL：http://域名/user/EditUserInfo.aspx
- (void)editUserInfo {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    params[@"Name"] = @"大秧歌";
    NSString *str = @"user/EditUserInfo.aspx";
    [[GuomaoRequestCenter defaultCenter]fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        request.resultBlock = ^(TCHTTPRequest *request,BOOL success){
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.1.8物业工作人员修改个人信息【已发布】
//http://域名/user/EditStaffInfo.aspx
// 获取人员信息
- (void)editStaffInfo {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mkefu;
    NSString *string = @"赵聪";
    string = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    params[@"Name"] = string;
    NSString *str  = @"user/EditStaffInfo.aspx";
    

    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    
}

//3.2.1获取指定业主名下房产列表【已发布】
//接口URL：http://域名/fangchan/GetUserFangChan.aspx
- (void)getUserFangChan {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    NSString *str  = @"fangchan/GetUserFangChan.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Cell_ID = 2076,
     FullName = 国贸三期-A座-1楼-0102
     }
     ]
     }
     */

    
}

//3.3.1获取通知/动态列表【已发布】
//接口URL：http://域名/news/GetNewsList.aspx
- (void)getNewsList {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Type"] = [NSNumber numberWithInt:2];
    NSString *str  = @"news/GetNewsList.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    /* type = 1
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Writer = 物业管理处,
     Second_Title = 通知,
     Main_Pic = ,
     Hit_Count = 1,
     Type = 1,
     FromWhere = 蓝堡国际,
     Title = 蓝堡国际短信平台,
     Info = ,
     ID = 247,
     Event_Date =
     },
     {
     Writer = 物业管理处,
     Second_Title = ,
     Main_Pic = ,
     Hit_Count = 1,
     Type = 1,
     FromWhere = 蓝堡国际,
     Title = 测试通知,
     Info = ,
     ID = 243,
     Event_Date =
     },
     {
     Writer = 物业管理处,
     Second_Title = 通知,
     Main_Pic = ,
     Hit_Count = 1,
     Type = 1,
     FromWhere = 蓝堡国际,
     Title = 十一安全提示,
     Info = ,
     ID = 248,
     Event_Date = 
     }
     ]
     }
     */
    
    
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Answer_1 = 是,
     Answer_5 = ,
     Answer_4 = ,
     Problem = 您是海鲜料理的忠实爱好者吗？,
     Answer_3 = ,
     ID = 5066504539558380710,
     Answer_2 = 不是
     },
     {
     Answer_1 = 产品新鲜度,
     Answer_5 = ,
     Answer_4 = ,
     Problem = 您平常购买海鲜产品，更注重什么？,
     Answer_3 = 产地,
     ID = 5663868251153656870,
     Answer_2 = 价格
     },
     {
     Answer_1 = 是,
     Answer_5 = ,
     Answer_4 = ,
     Problem = 您是否愿意亲临现场跟着大厨学做菜？,
     Answer_3 = ,
     ID = 5127657447688078462,
     Answer_2 = 否
     },
     {
     Answer_1 = 蛋黄焗黄金蟹,
     Answer_5 = 香煎银鳕鱼,
     Answer_4 = 香煎三文鱼,
     Problem = 请选择您最想要学习的料理？,
     Answer_3 = 油爆虾,
     ID = 4933573127939898860,
     Answer_2 = 番茄虾
     },
     {
     Answer_1 = 竞技游戏,
     Answer_5 = 到家服务,
     Answer_4 = 亲子互动,
     Problem = 除此之外，您还希望我们为您开展哪种活动？,
     Answer_3 = 外出旅行,
     ID = 5034153030377573522,
     Answer_2 = 户外运动
     }
     ]
     }
     2015-11-19 09:30:29.124 接口测试[766:73255] {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Writer = 物业管理处,
     Second_Title = 物业福利,
     Main_Pic = !UploadFiles%5cWB_Content_Pic%5c20151013152614459.jpg,
     Hit_Count = 1,
     Type = 2,
     FromWhere = 蓝堡国际,
     Title = 物业福利大放送,
     Info = ,
     ID = 249,
     Event_Date = 
     }
     ]
     }
     */


}

//3.3.2获取通知/动态详细信息【已发布】
//接口URL：http://域名/news/GetNewsInfo.aspx
- (void)getNewsInfo {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"News_ID"] = [NSNumber numberWithInt:248];
    NSString *str  = @"news/GetNewsInfo.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.3.3 通知确认【已发布】
//接口URL：http://域名/news/Notify_Confirm.aspx

- (void)notify_Confirm {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"News_ID"] = [NSNumber numberWithInt:248];
    params[@"Mobile"] = Mobile;
    NSString *str  = @"news/Notify_Confirm.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.4.1获取投诉类别【已发布】
//接口URL：http://域名/tousu/Get_TouSu_Class.aspx
- (void)get_TouSu_Class {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    NSString *str  = @"tousu/Get_TouSu_Class.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     ID = 580,
     Class_Name = 物业问题
     },
     {
     ID = 581,
     Class_Name = 收费问题
     },
     {
     ID = 582,
     Class_Name = 卫生问题
     },
     {
     ID = 583,
     Class_Name = 安全问题
     }
     ]
     }
     */

}

//3.4.2提交投诉【已发布】
//接口URL：http://域名/tousu/Create_TouSu.aspx
- (void)create_TouSu {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    params[@"Class_ID"] = @"581";
    NSString * string =  @"收费问题";
    string = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    params[@"TouSu_Info"] =string;
    NSString *str  = @"tousu/Create_TouSu.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.4.3获取已提交投诉列表【已发布】: 根据 ShouLi_State 来获得属于哪个控制器
//接口URL：http://域名/tousu/Get_TouSu_List.aspx
- (void)get_TouSu_List {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    NSString *str  = @"tousu/Get_TouSu_List.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            NSLog(@"%@",request.responseObject);
        };
    }];
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Mobile = 13611111111,
     Class_Name = 物业问题,
     ShouLi_State = 已撤销,
     ShouLi_User = ,
     ShouLi_Time = ,
     TouSuInfo = daq,
     UserName = 业主1,
     CellName = 国贸三期-A座-1楼-0102,
     ID = 10,
     CreateTime = 2015/11/13 10:38:45
     },
     {
     Mobile = 13611111111,
     Class_Name = 收费问题,
     ShouLi_State = 待受理,
     ShouLi_User = ,
     ShouLi_Time = ,
     TouSuInfo = h,
     UserName = 业主1,
     CellName = ,
     ID = 11,
     CreateTime = 2015/11/13 11:12:16
     },
     {
     Mobile = 13611111111,
     Class_Name = 安全问题,
     ShouLi_State = 待受理,
     ShouLi_User = ,
     ShouLi_Time = ,
     TouSuInfo = jhu,
     UserName = 业主1,
     CellName = 国贸三期-A座-1楼-0102,
     ID = 12,
     CreateTime = 2015/11/13 11:12:47
     },
     {
     Mobile = 13611111111,
     Class_Name = 安全问题,
     ShouLi_State = 待受理,
     ShouLi_User = ,
     ShouLi_Time = ,
     TouSuInfo = tt,
     UserName = 业主1,
     CellName = ,
     ID = 13,
     CreateTime = 2015/11/16 15:42:43
     },
     {
     Mobile = 13611111111,
     Class_Name = 收费问题,
     ShouLi_State = 待受理,
     ShouLi_User = ,
     ShouLi_Time = ,
     TouSuInfo = tt,
     UserName = 业主1,
     CellName = ,
     ID = 14,
     CreateTime = 2015/11/17 15:47:39
     },
     {
     Mobile = 13611111111,
     Class_Name = 收费问题,
     ShouLi_State = 已撤销,
     ShouLi_User = ,
     ShouLi_Time = ,
     TouSuInfo = %E6%94%B6%E8%B4%B9%E9%97%AE%E9%A2%98,
     UserName = 业主1,
     CellName = ,
     ID = 15,
     CreateTime = 2015/11/17 15:53:14
     }
     ]
     }
     */

}

//3.4.4撤销投诉【已发布】
//接口URL：http://域名/tousu/CheXiao_TouSu.aspx
- (void)cheXiao_TouSu {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"TouSu_ID"] = @"15";
    NSString * string =  @"隔壁老王";
    string = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    params[@"CheXiaoRen"] = string;
    NSString *str  = @"tousu/CheXiao_TouSu.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5物业工单接口
//3.5.1获取工单类别【已发布】
//接口URL：http://域名/gongdan/Get_GongDan_Class.aspx
- (void)get_GongDan_Class {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    NSString *str  = @"gongdan/Get_GongDan_Class.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     ID = 595,
     Class_Name = 水
     },
     {
     ID = 596,
     Class_Name = 电
     },
     {
     ID = 608,
     Class_Name = 其它
     }
     ]
     }
     */

}

//3.5.2提交工单【已发布】
//接口URL：http://域名/gongdan/Create_GongDan.aspx
- (void)create_GongDan {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    params[@"Class_ID"] = @"596";
    NSString * string =  @"电费该交了";
    string = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    params[@"GongDan_Info"] = string;
    NSString *str  = @"gongdan/Create_GongDan.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5.3获取已提交工单列表【已发布】
//接口URL：http://域名/gongdan/Get_GongDan_List.aspx
- (void)get_GongDan_List {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mgongchengshi;
    params[@"DoState"] = @"1";
    NSString *str  = @"gongdan/Get_GongDan_List.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     GongDanInfo = %E7%94%B5%E8%B4%B9%E8%AF%A5%E4%BA%A4%E4%BA%86,
     BanLi_Start_Time = ,
     CreateTime = 2015/11/17 17:12:15,
     PingJia_Remark = ,
     UserName = 业主1,
     Audit_Remark = ,
     Attach_File = ,
     GongDan_Fee = ,
     Audit_Time = ,
     Audit_User = ,
     Mobile = 13611111111,
     State = 0,
     BanLi_User = ,
     CellName = ,
     ID = 252,
     BanLi_User_Mobile = ,
     BanLi_Finish_Time = ,
     Class_Name = 电,
     BanLi_Start_Remark = ,
     BanLi_Finish_Remark = ,
     PingJia_State =
     },
     {
     GongDanInfo = hhh,
     BanLi_Start_Time = ,
     CreateTime = 2015/11/18 13:59:54,
     PingJia_Remark = ,
     UserName = 业主1,
     Audit_Remark = ,
     Attach_File = ,
     GongDan_Fee = ,
     Audit_Time = ,
     Audit_User = ,
     Mobile = 13611111111,
     State = 0,
     BanLi_User = ,
     CellName = 国贸三期-A座-1楼-0102,
     ID = 253,
     BanLi_User_Mobile = ,
     BanLi_Finish_Time = ,
     Class_Name = 电,
     BanLi_Start_Remark = ,
     BanLi_Finish_Remark = ,
     PingJia_State = 
     },
     {
     GongDanInfo = 路灯坏了，修一下吧,
     BanLi_Start_Time = 2015/11/11 6:01:29,
     CreateTime = 2015/11/11 0:00:00,
     PingJia_Remark = 好好好 ,
     UserName = 李峰,
     Audit_Remark = ,
     Attach_File = ,
     GongDan_Fee = 0.00,
     Audit_Time = 2015/11/11 5:52:19,
     Audit_User = 1,
     Mobile = 13699227337,
     State = 3,
     BanLi_User = 王工,
     CellName = 国贸三期-A座-1楼-0101,
     ID = 242,
     BanLi_User_Mobile = 13555555555,
     BanLi_Finish_Time = 2015/11/11 6:04:54,
     Class_Name = 电,
     BanLi_Start_Remark = 马上到呀呀呀,
     BanLi_Finish_Remark = 办好了办好了,
     PingJia_State = 满意
     },
     ]
     }
     */

}

//3.5.4撤销工单【已发布】
//接口URL：http://域名/gongdan/CheXiao_GongDan.aspx
- (void)cheXiao_GongDan {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"GongDan_ID"] = [NSNumber numberWithInt:387];
//    NSString * string =  @"隔壁老王";
//    string = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//    params[@"CheXiaoRen"] = string;
    NSString *str  = @"gongdan/CheXiao_GongDan.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5.9获取工程师列表【已发布】
//接口URL：http://域名/gongdan/Get_GongChengShi_List.aspx
- (void)get_GongChengShi_List {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    NSString *str  = @"gongdan/Get_GongChengShi_List.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5.5工单审批分配（物业人员-客服）【已发布】
//接口URL：http://域名/gongdan/GongDan_ShenPi.aspx
- (void)gongDan_ShenPi {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"GongDan_ID"] = [NSNumber numberWithInt:243];
    params[@"ShenPi_UserID"] = @"3";
    params[@"BanLi_UserID"] = @"13999999999";
    NSString *str  = @"gongdan/GongDan_ShenPi.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5.6工单开始办理（物业人员-工程）【已发布】
//接口URL：http://域名/gongdan/GongDan_BanLi_Start.aspx
- (void)gongDan_BanLi_Start {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"GongDan_ID"] = @(244);
    params[@"BanLi_UserID"] = @"13999999999";
    NSString *str  = @"gongdan/GongDan_BanLi_Start.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5.7工单完成办理（物业人员-工程）【已发布】
//接口URL：http://域名/gongdan/GongDan_BanLi_Finish.aspx

- (void)gongDan_BanLi_Finish {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"GongDan_ID"] = @(596);
    params[@"BanLi_UserID"] = @"13999999999";
    NSString *str  = @"gongdan/GongDan_BanLi_Finish.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.5.8工单评价（会员/业主/租户/成员）【已发布】
//接口URL：http://域名/gongdan/GongDan_PingJia.aspx
- (void)gongDan_PingJia {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"GongDan_ID"] = [NSNumber numberWithInt:596];
    params[@"BanLi_UserID"] = @"345";
   params[@"PingJia_ManYiDu"] = @"满意度";
    NSString *str  = @"gongdan/GongDan_PingJia.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.3.10签到/签退 （物业人员-工程）【已发布】
//接口URL：http://域名/gongdan/QianDao.aspx
- (void)QianDao {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mgongchengshi;
    params[@"Work_State"] = @(4);
    NSString *str  = @"gongdan/QianDao.aspx";
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    
    /*
     * {
     IsSuccess = 1,
     ResCode = 1,
     ResMsg = 成功
     }
     */

}

//3.6.1获取调查问卷活动列表【已发布】
//接口URL：http://域名/diaoyan/GetDiaoYanList.aspx
- (void)getDiaoYanList {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    NSString *str  = @"diaoyan/GetDiaoYanList.aspx";
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    
    /*
     * {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     FaQiDanWei = 蓝堡物业社区平台,
     Second_Title = 服务满意度调研,
     Join_Count = 19,
     Phone = 010-85886834,
     FuZeRen = 蓝堡物业,
     Start_Date = 2015-09-16,
     Hit_Count = 51,
     Title = 星级大厨  为您掌厨,
     Info = ,
     ID = 5352476960101260515,
     End_Date = 2015-10-17
     }
     ]
     }
     */
    
}

//3.6.2获取调查问卷活动详细信息【已发布】
//接口URL：http://域名/diaoyan/GetDiaoYanInfo.aspx
- (void)getDiaoYanInfo {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"DiaoYan_ID"] = @(5352476960101260515);
    NSString *str  = @"diaoyan/GetDiaoYanInfo.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSString *info = [request.responseObject[@"Data"] firstObject][@"Info"];
            info = [info stringByRemovingPercentEncoding];
            
            UIWebView *web = [[UIWebView alloc] init];
            web.frame = self.view.bounds;
            [web loadHTMLString:info baseURL:nil];
            [self.view addSubview:web];
            NSLog(@"%@,%@",request.responseObject,info);
        };
    }];
    
    /*
     * IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     FaQiDanWei = 蓝堡物业社区平台,
     Second_Title = 服务满意度调研,
     Join_Count = 19,
     Phone = 010-85886834,
     FuZeRen = 蓝堡物业,
     Start_Date = 2015-09-16,
     Hit_Count = 51,
     Title = 星级大厨  为您掌厨,
//     ntf8转码
     Info = %3cp%3e%0d%0a%09%3cspan+style%3d%22font-family%3aMicrosoft+YaHei%3b%22%3e%Hei%c%2fstrong%3e%3c%2fspan%3e+%0d%0a%3c%2fp%3e,
     ID = 5352476960101260515,
     End_Date = 2015-10-17
     }
     ]
     }
     */
    
}

//3.6.3获取指定调查问卷活动题目列表【已发布】
//接口URL：http://域名/diaoyan/GetProblemList.aspx
- (void)getProblemList {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"DiaoYan_ID"] = @"5352476960101260515";
    NSString *str  = @"diaoyan/GetProblemList.aspx";
    
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        
        };
    }];
    
    /*
     *{
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Answer_1 = 是,
     Answer_5 = ,
     Answer_4 = ,
     Problem = 您是海鲜料理的忠实爱好者吗？,
     Answer_3 = ,
     ID = 5066504539558380710,
     Answer_2 = 不是
     },
     {
     Answer_1 = 产品新鲜度,
     Answer_5 = ,
     Answer_4 = ,
     Problem = 您平常购买海鲜产品，更注重什么？,
     Answer_3 = 产地,
     ID = 5663868251153656870,
     Answer_2 = 价格
     },
     {
     Answer_1 = 是,
     Answer_5 = ,
     Answer_4 = ,
     Problem = 您是否愿意亲临现场跟着大厨学做菜？,
     Answer_3 = ,
     ID = 5127657447688078462,
     Answer_2 = 否
     },
     {
     Answer_1 = 蛋黄焗黄金蟹,
     Answer_5 = 香煎银鳕鱼,
     Answer_4 = 香煎三文鱼,
     Problem = 请选择您最想要学习的料理？,
     Answer_3 = 油爆虾,
     ID = 4933573127939898860,
     Answer_2 = 番茄虾
     },
     {
     Answer_1 = 竞技游戏,
     Answer_5 = 到家服务,
     Answer_4 = 亲子互动,
     Problem = 除此之外，您还希望我们为您开展哪种活动？,
     Answer_3 = 外出旅行,
     ID = 5034153030377573522,
     Answer_2 = 户外运动
     }
     ]
     }

     
     */
    
}

//3.6.4答题【已发布】
//接口URL：http://域名/diaoyan/DaTi.aspx
- (void)daTi {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    params[@"DiaoYan_ID"] = @(5352476960101260515);
//    params[@"Problem_ID"] = @();
    NSString *str  = @"diaoyan/DaTi.aspx";
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
}

//3.6.5获取答题记录列表【已发布】
//接口URL：http://域名/diaoyan/Get_DaTi_Log_List.aspx
- (void)get_DaTi_Log_List {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"Access_Token"] = AccessToken;
    params[@"Mobile"] = Mobile;
    params[@"DiaoYan_ID"] = @(5352476960101260515);
    NSString *str  = @"diaoyan/Get_DaTi_Log_List.aspx";
    [[GuomaoRequestCenter defaultCenter] fetchRespondsForParams:params method:@"POST" apiURL:str beforeRun:^(TCHTTPRequest *request) {
        
        request.resultBlock = ^(TCHTTPRequest *request, BOOL success) {
            
            NSLog(@"%@",request.responseObject);
        };
    }];
    
    /*
     *  {
     IsSuccess = 1,
     ResMsg = 成功,
     ResCode = 1,
     Data = [
     {
     Mobile = 13611111111,
     Answer_Input = ,
     Answer_Time = 2015-11-17 16:09:07,
     DiaoYan_Title = 星级大厨  为您掌厨,
     Problem = 请选择您最想要学习的料理？,
     User_Name = 业主1,
     ID = 5687418269962954729,
     Answer_Choose = 
     }
     ]
     }

     */

}

//3.7 其它接口
//3.7.1上传文件接口【待测】
//接口URL：http://域名/Common/Upload_File.aspx
- (void)upload_File {
 
 NSString *path = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"png"];
 NSData *data = [NSData dataWithContentsOfFile:path];
 AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
 NSMutableDictionary *dic = @{}.mutableCopy;
 dic[@"Access_Token"] = AccessToken;
 dic[@"App_Type"] = @(1);
 dic[@"file"] = data;
 dic[@"submit"] = @"submit";
 NSString *str = @"http://gmsq.80dev.com:8080/Common/Upload_File.aspx";
 
 [manager POST:str parameters:dic constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
 [formData appendPartWithFileData:data name:[NSString stringWithFormat:@"file"]  fileName:[NSString stringWithFormat:@"2.png"] mimeType:@"png"];
 
 } success:^(AFHTTPRequestOperation *operation, id responseObject) {
 NSLog(@"%@",responseObject);
 } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
 NSLog(@"%@",error);
 }];
 }

#pragma mark
@end
