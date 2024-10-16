package jBoard;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import jBoard.jBoardDTO;

public interface UserMapper {
	
	//����Ÿ�� , �޼���� , �Ű�����
	
	public ArrayList<jBoardDTO> getUser();

	public void insertUser(jBoardDTO userdto);

	public void updateUser(@Param("writer")String writer, @Param("id") String id);

	public void deleteUser(int no);
	
	
}
