/**
 * 
 */
package com.yifeng.demo.dal.user.query;

import java.util.Date;

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
	private Date startBirthday;
	
	/**
	 * 生日结束时间
	 */
	private Date endBirthday;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getStartBirthday() {
		return startBirthday;
	}

	public void setStartBirthday(Date startBirthday) {
		this.startBirthday = startBirthday;
	}

	public Date getEndBirthday() {
		return endBirthday;
	}

	public void setEndBirthday(Date endBirthday) {
		this.endBirthday = endBirthday;
	}
}
