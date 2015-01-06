package DAO;

import VO.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

public class UserDAOImpl implements IUserDAO{
	
	private Connection conn = null;
	private PreparedStatement pres = null;
	
	public UserDAOImpl(Connection conn){
		this.conn = conn;
	}
	
	public boolean findLogin(User user) throws Exception{
		boolean flag = false;
		try {
			String sqlString = "SELECT * FROM user WHERE userid=? AND password=?";
			this.pres = this.conn.prepareStatement(sqlString);
			this.pres.setString(1, user.getUserid());
			this.pres.setString(2, user.getPassword());
			ResultSet resultSet = this.pres.executeQuery();
//			System.out.println(user.getUserid());
			if (resultSet.next()) {
				user.setName(resultSet.getString(3));
				user.setDepartment(resultSet.getString(5));
				user.setClassNumber(resultSet.getString(6));
				flag = true;
			}
		} catch (Exception e) {
			throw e;
		}finally{
			if (this.pres != null) {
				try{
					this.pres.close();
				}
				catch(Exception e){
					throw e;
				}
			}
		}
		return flag;
	}

	@Override
	public boolean register(User user) throws Exception {
		
		boolean flag = false;
		String insertSql = "insert into user (userid,password,username,administrator) values(?,?,?,false)";
		this.pres = this.conn.prepareStatement(insertSql);
		this.pres.setString(1, user.getUserid());
		this.pres.setString(2, user.getPassword());
		this.pres.setString(3, user.getName());
		if (this.pres.executeUpdate() > 0) {
			flag = true;
			System.out.print("insert OK!");
		}else {
			System.out.print("insert error!");
		}
		
		return flag;
	}

	@Override
	public boolean findGrade(User user) throws Exception {
		boolean flag = false;
		
		try {
			String sqlString = "SELECT * FROM user_score WHERE userid=?";
			this.pres = this.conn.prepareStatement(sqlString);
//			System.out.println(user.getUserid());
			this.pres.setString(1, user.getUserid());
//			this.pres.setString(2, user.getPassword());
			ResultSet resultSet = this.pres.executeQuery();
			
			if (resultSet.next()) {
				
//				HashMap<String, String> scoresMap = new HashMap<>();
				ArrayList<String> scoreList = new ArrayList<String>();
				for(int i = 2; i <= 4; i++){
					if(resultSet.getString(i) == null || "".equals(resultSet.getString(i))){
						scoreList.add("Î´µÇ·Ö");
					}
					else if("0".equals(resultSet.getString(i))){
						scoreList.add("Î´Ñ¡´Ë¿Î");
					}
					else {
						scoreList.add(resultSet.getString(i));
					}
				}
//				System.out.println(scoreList.toString());
				user.setScores(scoreList);
				user.setName(resultSet.getString(5));
				
				flag = true;

			}
		} catch (Exception e) {
			throw e;
		}finally{
			if (this.pres != null) {
				try{
					this.pres.close();
				}
				catch(Exception e){
					throw e;
				}
			}
		}
		
		return flag;
	}

	@Override
	public boolean modifyInfo(User user) throws Exception {
		boolean flag = false;
		

		try {
//			String sqlString1 = "UPDATE user SET username='" + user.getName() + "', password= '"+user.getPassword()+"'WHERE userid= "+ user.getUserid();
			String sqlString = "UPDATE user SET username=?, password=?,sex=? WHERE userid=?";
			
			
			this.pres = this.conn.prepareStatement(sqlString);
			this.pres.setString(1, user.getName());
			this.pres.setString(2,user.getPassword());
			this.pres.setString(3, user.getSex());
			this.pres.setString(4, user.getUserid());
			
//			System.out.println(this.pres.toString());
			
//			ResultSet resultSet = this.pres.executeQuery();
			
			if (this.pres.executeUpdate() > 0) {	
				flag = true;
				System.out.println("modified!");
			}
		} catch (Exception e) {
			throw e;
		}finally{
			if (this.pres != null) {
				try{
					this.pres.close();
				}
				catch(Exception e){
					throw e;
				}
			}
		}
		return flag;
	}
}
