/**
 * 
 */
package com.yifeng.demo.api.user.enums;

/**
 * 性别枚举
 * @author Administrator
 *
 */
public enum SexEnum {
	
	MEN("男"),  WOMEN("女");
	
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
