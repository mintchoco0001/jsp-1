package jBoard;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jBoard.UserMapper;
import jBoard.jBoardDTO;

public class DBUtil {
	SqlSessionFactory sqlSessionFactory;

	public void init() {

		try {

			String resource = "jBoard/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			System.out.println("MyBatis 연동 실패함 ㅠㅠ");

			e.printStackTrace();
		}
	}

	public ArrayList<jBoardDTO> getUsers() {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		ArrayList<jBoardDTO> userlist = mapper.getUser();
		return userlist;
	}

	public void insertUser(int no, String id, String writer, String title, String content) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		jBoardDTO userdto = new jBoardDTO(no, id, writer, title, content);
		mapper.insertUser(userdto);
		session.commit();
	}

	public void updateUser(String writer, String id) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.updateUser(writer, id);
		session.commit();
	}

	public void deleteUser(int no) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.deleteUser(no);
		session.commit();
	}

}
