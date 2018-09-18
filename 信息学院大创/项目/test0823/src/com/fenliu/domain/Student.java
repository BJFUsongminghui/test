package com.fenliu.domain;

public class Student {

	/*
	 * CREATE TABLE `Student` (
	 * `Stu_id` BIGINT(32) NOT NULL  COMMENT '主键',
	  `Stu_rank` BIGINT(32) NOT NULL  COMMENT '名次',
	  `Stu_number` BIGINT(32) NOT NULL  COMMENT '学号',
	  `Stu_failnum` BIGINT(32) DEFAULT NULL  COMMENT '不及格门数',
	  `ischoose` BIGINT(4) NOT NULL  COMMENT '是否可选专业        0 为不能       1 为能',
	  `Stu_score` double(4,2) NOT NULL  COMMENT '成绩',
	  `Stu_name` VARCHAR(32) NOT NULL COMMENT '姓名',
	  `Stu_password` VARCHAR(32) DEFAULT NULL COMMENT '密码',
	  `Stu_sex` VARCHAR(32) DEFAULT NULL COMMENT '性别',
	  `Stu_nation` VARCHAR(32) DEFAULT NULL COMMENT '民族',
	  `Stu_phone` VARCHAR(64) DEFAULT NULL COMMENT '手机',
	  `Stu_email` VARCHAR(64) DEFAULT NULL COMMENT '邮件',
	  `Stu_birthplace` VARCHAR(64) DEFAULT NULL COMMENT '生源地',
	  `Stu_major` VARCHAR(64) DEFAULT NULL COMMENT '新专业',
	  `Stu_major1` VARCHAR(64) DEFAULT NULL COMMENT '专业1',
	  `Stu_major2` VARCHAR(64) DEFAULT NULL COMMENT '专业2',
	  `Stu_major3` VARCHAR(64) DEFAULT NULL COMMENT '专业3',
	  `Stu_major4` VARCHAR(64) DEFAULT NULL COMMENT '专业4',
	  `Stu_birthday` VARCHAR(64) DEFAULT NULL COMMENT '出生年月',
	 // PRIMARY KEY (`Stu_id`)
	) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
	 */
	private Long Stu_id;
	private Long Stu_rank;
	private String Stu_number;
	private Double Stu_score;
	private String Stu_failnum;
	private String Stu_name;
	private String Stu_password;
	private String Stu_email;
	private String Stu_phone;
	private String Stu_sex;
	private String Stu_nation;
	private String Stu_birthplace;
	private String Stu_major;
	private String Stu_major1;
	private String Stu_major2;
	private String Stu_major3;
	private String Stu_major4;
	private String Stu_birthday;
	private Long ischoose;
	public Long getStu_rank() {
		return Stu_rank;
	}
	public void setStu_rank(Long stu_rank) {
		Stu_rank = stu_rank;
	}
	public String getStu_number() {
		return Stu_number;
	}
	public void setStu_number(String stu_number) {
		Stu_number = stu_number;
	}
	public Double getStu_score() {
		return Stu_score;
	}
	public void setStu_score(Double stu_score) {
		Stu_score = stu_score;
	}
	public String getStu_failnum() {
		return Stu_failnum;
	}
	public void setStu_failnum(String stu_failnum) {
		Stu_failnum = stu_failnum;
	}
	public String getStu_name() {
		return Stu_name;
	}
	public void setStu_name(String stu_name) {
		Stu_name = stu_name;
	}
	public String getStu_password() {
		return Stu_password;
	}
	public void setStu_password(String stu_password) {
		Stu_password = stu_password;
	}
	public String getStu_email() {
		return Stu_email;
	}
	public void setStu_email(String stu_email) {
		Stu_email = stu_email;
	}
	public String getStu_phone() {
		return Stu_phone;
	}
	public void setStu_phone(String stu_phone) {
		Stu_phone = stu_phone;
	}
	public String getStu_sex() {
		return Stu_sex;
	}
	public void setStu_sex(String stu_sex) {
		Stu_sex = stu_sex;
	}
	public String getStu_nation() {
		return Stu_nation;
	}
	public void setStu_nation(String stu_nation) {
		Stu_nation = stu_nation;
	}
	public String getStu_birthplace() {
		return Stu_birthplace;
	}
	public void setStu_birthplace(String stu_birthplace) {
		Stu_birthplace = stu_birthplace;
	}
	public String getStu_major() {
		return Stu_major;
	}
	public void setStu_major(String stu_major) {
		Stu_major = stu_major;
	}
	public String getStu_major1() {
		return Stu_major1;
	}
	public void setStu_major1(String stu_major1) {
		Stu_major1 = stu_major1;
	}
	public String getStu_major2() {
		return Stu_major2;
	}
	public void setStu_major2(String stu_major2) {
		Stu_major2 = stu_major2;
	}
	public String getStu_major3() {
		return Stu_major3;
	}
	public void setStu_major3(String stu_major3) {
		Stu_major3 = stu_major3;
	}
	public String getStu_major4() {
		return Stu_major4;
	}
	public void setStu_major4(String stu_major4) {
		Stu_major4 = stu_major4;
	}
	/**
	 * @return the ischoose
	 */
	public Long getIschoose() {
		return ischoose;
	}
	/**
	 * @param ischoose the ischoose to set
	 */
	public void setIschoose(Long ischoose) {
		this.ischoose = ischoose;
	}
	/**
	 * @return the stu_id
	 */
	public Long getStu_id() {
		return Stu_id;
	}
	/**
	 * @param stu_id the stu_id to set
	 */
	public void setStu_id(Long stu_id) {
		Stu_id = stu_id;
	}
	/**
	 * @return the stu_birthday
	 */
	public String getStu_birthday() {
		return Stu_birthday;
	}
	/**
	 * @param stu_birthday the stu_birthday to set
	 */
	public void setStu_birthday(String stu_birthday) {
		Stu_birthday = stu_birthday;
	}
	
}
