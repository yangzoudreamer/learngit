package DAO;

import VO.User;

public interface IUserDAO {
	//�ӿڲ���ʵ�ֺ���Ҳû�к�����,ֻ������,���Բ��ô�����.
	public boolean findLogin(User user)throws Exception;
	public boolean register(User user) throws Exception;
	public boolean findGrade(User user) throws Exception;
	public boolean modifyInfo(User user)throws Exception;
}
