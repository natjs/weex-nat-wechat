//
//  WeexNatWechat.h
//
//  Created by Acathur on 17/10/23.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>


@protocol NatWechatPro <WXModuleProtocol>

- (void)init:(NSString *)appId :(WXModuleCallback)callback;
- (void)checkInstalled:(WXModuleCallback)callback;
- (void)share:(NSDictionary *)params :(WXModuleCallback)callback;
- (void)pay:(NSDictionary *)params :(WXModuleCallback)callback;
- (void)auth:(NSDictionary *)params :(WXModuleCallback)callback;

@end

@interface WeexNatWechat : NSObject<NatWechatPro>

@end
