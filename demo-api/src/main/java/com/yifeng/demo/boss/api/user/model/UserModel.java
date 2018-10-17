/**
 * 
 */
package com.yifeng.demo.boss.api.user.model;

import java.util.Date;

import com.yifeng.demo.boss.api.user.enums.SexEnum;

/**
 * 用户相关Model
 * @author Administrator
 *
 */
public class UserModel {
	
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
	private SexEnum sex;
	
	/**
	 * 生日
	 */
	private Date birthday;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public SexEnum getSex() {
		return sex;
	}

	public void setSex(SexEnum sex) {
		this.sex = sex;
	}

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

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
}
