package com.instapp.nat.weex;

import android.app.Activity;

import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

import com.instapp.nat.wechat.WechatModule;
import com.instapp.nat.wechat.ModuleResultListener;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by Acathur on 23/10/2017.
 * Copyright (c) 2017 Instapp. All rights reserved.
 */

public class Wechat extends WXModule {
    @JSMethod
    public void init(String appId, final JSCallback jsCallback){
        WechatModule.getInstance(mWXSDKInstance.getContext()).init(appId, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void checkInstalled(final JSCallback jsCallback){
        WechatModule.getInstance(mWXSDKInstance.getContext()).checkInstalled(new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void share(JSONObject params, final JSCallback jsCallback){
        WechatModule.getInstance(mWXSDKInstance.getContext()).share(params, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void pay(JSONObject params, final JSCallback jsCallback){
        WechatModule.getInstance(mWXSDKInstance.getContext()).pay(params, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void auth(JSONObject params, final JSCallback jsCallback){
        WechatModule.getInstance(mWXSDKInstance.getContext()).auth(params, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }
}
