//
//  WeexNatWechat.m
//
//  Created by Acathur on 17/10/23.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import "WeexNatWechat.h"
#import "NatWechat.h"

@implementation WeexNatWechat
@synthesize weexInstance;
WX_EXPORT_METHOD(@selector(init::))
WX_EXPORT_METHOD(@selector(checkInstalled:))
WX_EXPORT_METHOD(@selector(share::))
WX_EXPORT_METHOD(@selector(pay::))
WX_EXPORT_METHOD(@selector(auth::))

- (void)init:(NSString *)appId :(WXModuleCallback)callback{
    [[NatWechat singletonManger] init:appId :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)checkInstalled:(WXModuleCallback)callback{
    [[NatWechat singletonManger] checkInstalled:^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)share:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatWechat singletonManger] share:params :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)pay:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatWechat singletonManger] pay:params :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)auth:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatWechat singletonManger] auth:params :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

@end
