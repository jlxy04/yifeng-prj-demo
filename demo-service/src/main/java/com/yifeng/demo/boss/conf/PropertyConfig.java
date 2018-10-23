/**
 * 
 */
package com.yifeng.demo.boss.conf;

import java.io.IOException;

import javax.annotation.PostConstruct;

import org.springframework.core.io.support.PropertiesLoaderUtils;

import com.yifeng.demo.boss.util.ExceptionUtil;

/**
 * 配置中心对应的配置类
 * @author Administrator
 *
 */
public class PropertyConfig {
	
	/**
	 * oss appid
	 */
	private static String ossAppId;
	
	/**
	 * oss上传路径
	 */
	private static String ossUploadPath;
	
	/**
	 * oss路径
	 */
	private static String ossUrl;

	public static String getOssAppId() {
		return ossAppId;
	}

	public static void setOssAppId(String ossAppId) {
		PropertyConfig.ossAppId = ossAppId;
	}

	public static String getOssUploadPath() {
		return ossUploadPath;
	}

	public static void setOssUploadPath(String ossUploadPath) {
		PropertyConfig.ossUploadPath = ossUploadPath;
	}

	public static String getOssUrl() {
		return ossUrl;
	}

	public static void setOssUrl(String ossUrl) {
		PropertyConfig.ossUrl = ossUrl;
	}
	
	@PostConstruct
	public void initException() throws IOException {
		ExceptionUtil.setProperties(PropertiesLoaderUtils.loadAllProperties("exception/exception.properties"));
	}
}
