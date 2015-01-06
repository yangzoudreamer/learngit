package DAO;
import DAO.IUserDAO;
import DAO.UserDAOProxy;

public class DAOFactory {
	public static IUserDAO getIUserDAOInstance(){
		return new UserDAOProxy();
	}
}
