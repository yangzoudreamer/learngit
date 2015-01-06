package DAO;

import javax.swing.text.StyledEditorKit.BoldAction;

import VO.User;

public class UserDAOProxy implements IUserDAO{

	private DatabaseConnection dbcConnection = null;
	private IUserDAO dao = null;
	
	public UserDAOProxy(){
		try {
			this.dbcConnection = new DatabaseConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.dao = new UserDAOImpl(this.dbcConnection.getConnection());
	}
	
	public boolean findLogin(User user) throws Exception {
		
		boolean flag = false;
		try {
			
			flag = this.dao.findLogin(user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.dbcConnection.close();
		}
		return flag;
	}

	@Override
	public boolean register(User user) throws Exception {
		
		boolean flag = false;
		try {
			flag = this.dao.register(user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.dbcConnection.close();
		}
		
		return flag;
	}

	@Override
	public boolean findGrade(User user) throws Exception {
		boolean flag = false;
		
		try {
			flag = this.dao.findGrade(user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.dbcConnection.close();
		}
		return flag;
	}

	@Override
	public boolean modifyInfo(User user) throws Exception {
		
		boolean flag = false;
		
		try {
			flag = this.dao.modifyInfo(user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.dbcConnection.close();
		}
		return flag;
	}
	
}
