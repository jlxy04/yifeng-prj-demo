/**
 * 
 */
package com.yifeng.demo.user.dal.user.query;

/**
 * 用户的查询对象
 * @author Administrator
 *
 */
public class UserQuery {

	/**
	 * 用户名称
	 */
	private String name;
	
	/**
	 * 生日开始时间
	 */
	private String startBirthday;
	
	/**
	 * 生日结束时间
	 */
	private String endBirthday;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStartBirthday() {
		return startBirthday;
	}

	public void setStartBirthday(String startBirthday) {
		this.startBirthday = startBirthday;
	}

	public String getEndBirthday() {
		return endBirthday;
	}

	public void setEndBirthday(String endBirthday) {
		this.endBirthday = endBirthday;
	}
}
