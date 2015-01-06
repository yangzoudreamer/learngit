package VO;

import java.util.ArrayList;
import java.util.HashMap;

public class User {
	private String userid;
	private String username;
	private String password;
	private String department;
	private String classNumber;
	private String sex;
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	private ArrayList<String> scores; //录入各科成绩
	
	public ArrayList<String> getScores() {
		return scores;
	}
	public void setScores(ArrayList<String> scores) {
		this.scores = scores;
	}
	private	HashMap<String, String> scoresMap; //录入各科成绩
	
	
	public HashMap<String, String> getScoresMap() {
		return scoresMap;
	}
	public void setScoresMap(HashMap<String, String> scoresMap) {
		this.scoresMap = scoresMap;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return username;
	}
	public void setName(String name) {
		this.username = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getClassNumber() {
		return classNumber;
	}
	public void setClassNumber(String classNumber) {
		this.classNumber = classNumber;
	}
}
