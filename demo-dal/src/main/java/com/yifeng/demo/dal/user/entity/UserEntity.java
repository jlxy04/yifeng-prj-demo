/**
 * 
 */
package com.yifeng.demo.dal.user.entity;

import java.util.Date;

/**
 * 用户实体类
 * @author Administrator
 *
 */
public class UserEntity {

	/**
	 * 主键ID 
	 */
	private String id;
	
	/**
	 * 用户编码
	 */
	private String userCode;
	
	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 年龄
	 */
	private Integer age;
	
	/**
	 * 性别
	 */
	private String sex;
	
	/**
	 * 生日
	 */
	private Date birthday;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
}
