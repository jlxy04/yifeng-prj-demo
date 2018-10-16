package com.yifeng.demo;

import com.talkyun.openx.RestfulServiceFactory;




/**
 * @author geed
 * @Description ecp-wms
 * @date 2017/7/28
 */
public class DemoServiceFactory {
    private static RestfulServiceFactory rsf;

    // 私有构造方法
    private DemoServiceFactory() {

    }

    private static class SingletonLazyHolder {

        private static String inUrl = null;

        private static RestfulServiceFactory inRsf = null;

        private static DemoServiceFactory instance = null;

        private static void confUrl(String url) {
            inUrl = url;
        }

        private static RestfulServiceFactory getRsfInstance() {
            if (inRsf == null) {
                if (inUrl == null) {
                    throw new RuntimeException("invoke url is null, must invoke confUrl() first");
                }
                inRsf = new RestfulServiceFactory(inUrl);
            }

            return inRsf;
        }

        private static DemoServiceFactory getInstance() {
            if (instance == null) {
                instance = new DemoServiceFactory();
            }

            return instance;
        }
    }

    // 指定服务提供方URL地址
    public static void confUrl(String url) {
        if (url == null) {
            throw new RuntimeException("invoke url is null");
        }
        SingletonLazyHolder.confUrl(url);
    }

    // 获取工厂单例
    public static DemoServiceFactory getInstance() {

        rsf = SingletonLazyHolder.getRsfInstance();

        return SingletonLazyHolder.getInstance();
    }
}
