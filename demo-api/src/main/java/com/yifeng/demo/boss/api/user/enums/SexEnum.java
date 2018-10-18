/**
 * 
 */
package com.yifeng.demo.boss.api.user.enums;

/**
 * 性别枚举
 * @author Administrator
 *
 */
public enum SexEnum {
	
	/**
	 * 男
	 */
	MEN("男"),  
	
	/**
	 * 女
	 */
	WOMEN("女");
	
	private String desc;

	private SexEnum(String desc) {
		this.desc = desc;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}
