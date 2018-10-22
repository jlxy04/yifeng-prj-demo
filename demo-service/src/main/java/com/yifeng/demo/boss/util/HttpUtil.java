/**
 * 
 */
package com.yifeng.demo.boss.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * @author lijun
 *
 */
public class HttpUtil {
	
	/**
	 * Http json 请求
	 * 
	 * @param header
	 * @param body
	 * @param requestMethod
	 * @return
	 * @throws IOException
	 */
	public static String sendPost(String reqUrl, String body) {
		HttpURLConnection connection = null;
		try {
			URL url = new URL(reqUrl); // url地址

			connection = (HttpURLConnection) url.openConnection();
			connection.setDoInput(true);
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type", "application/json");
			connection.connect();

			OutputStream os = connection.getOutputStream();
			os.write(body.getBytes("UTF-8"));

			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String lines;
			StringBuffer sbf = new StringBuffer();
			while ((lines = reader.readLine()) != null) {
				lines = new String(lines.getBytes(), "utf-8");
				sbf.append(lines);
			}
			reader.close();
			return sbf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.disconnect();
		}
		return null;
	}
	
	/**
	 * Http form 请求
	 * 
	 * @param header
	 * @param body
	 * @param requestMethod
	 * @return
	 * @throws IOException
	 */
	public static String sendGet(String reqUrl) {
		HttpURLConnection connection = null;
		try {
			URL url = new URL(reqUrl); // url地址

			connection = (HttpURLConnection) url.openConnection();
			connection.setDoInput(true);
			connection.setDoOutput(true);
			connection.setRequestMethod("GET");
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type", "multipart/form-data");
			connection.connect();

			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String lines;
			StringBuffer sbf = new StringBuffer();
			while ((lines = reader.readLine()) != null) {
				lines = new String(lines.getBytes(), "utf-8");
				sbf.append(lines);
			}
			reader.close();
			return sbf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.disconnect();
		}
		return null;
	}
	
	public static void main(String[] args) {
//		String rs = sendPost("http://dwz.cn/admin/create", "{\"url\":\"http://open.yifengx.com/ecp-boss/html/channel/channel.html?userCode=00116141\"}");
//		String rs = sendPost("http://dwz.cn/admin/create", "{\"url\":\"http://yf-test-oss.yifengx.com/webtest/ecp-boss/dev-ecp-boss/html/order/refundList.html?userCode=00116141\"}");
		String rs = sendGet("http://jump.sinaapp.com/api.php?url_long=https://yf-test-oss.yifengx.com/colombo2/html/5b96395a6be47e2474feabc3.html");
		System.out.println(rs);
	}
}
