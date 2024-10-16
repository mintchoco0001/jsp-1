package ex01;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class user_DAO {
	// 데이터가 있는 저장소로 접금하는 유일한 객체
	// 직접 DB에 접근해서 삽입, 삭제, 조회 등등
	// 조작 할 수 있는 기능을 수행한다 (CRUD를 수행함)
	// 데이터를 실제 DB에 저장함. (MVC 패턴에서 Model 역활)

	Connection conn = null;
	// 쿼리문 해석해 주는 역활
	PreparedStatement pt = null;

	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/test?characterEncoding=UTF-8 & severTimezone=UTC";
	String dbId = "root";
	String dbPw = "1234";

	// insert문 구현하기
	// user 테이블에 데이터를 저장

	public void insertUser(user_DTO user_DTO) {
		try {
			// jdbc 드라이버 로드
			Class.forName(dbDriver);

			// DB와 연결
			conn = DriverManager.getConnection(dbURL, dbId, dbPw);

			// sql문, ? 가 써진 순서로 변수를 구분함
			String insetSQL = "insert into user values (?,?,?,?,?,?)";

			// conn SQL문 전송 ! DB로 전달한다는것
			pt = conn.prepareStatement(insetSQL);

			// 실제로 입력 값 설정
			pt.setString(1, user_DTO.getUser_id());
			pt.setString(2, user_DTO.getUser_pw());
			pt.setString(3, user_DTO.getName());
			pt.setString(4, user_DTO.getPhone());
			pt.setString(5, user_DTO.getGrade());
			pt.setInt(6, user_DTO.getAge());

			pt.executeUpdate();

			pt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// select 문 구현
	public void selectUser() {
		List<user_DTO> users = new ArrayList<user_DTO>();
		try {
			Class.forName(dbDriver);

			conn = DriverManager.getConnection(dbURL, dbId, dbPw);

			String selectSQL = "select * from user";

			pt = conn.prepareStatement(selectSQL);

			ResultSet rs = pt.executeQuery();

			while (rs.next()) {
				user_DTO dto = new user_DTO(rs.getString("user_id"), rs.getString("user_pw"), rs.getString("name"),
						rs.getString("phone"), rs.getString("grade"), rs.getInt("age"));

				users.add(dto);
			}
			// 한 행씩 출력하기 위해 사용
			for (user_DTO oneuser : users) {
				System.out.println(oneuser);
			}
			pt.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteUser(String user_id) {
		try {
			Class.forName(dbDriver);

			conn = DriverManager.getConnection(dbURL, dbId, dbPw);

			String deleteSQL = "delete from user where user_id = ?";
			pt = conn.prepareStatement(deleteSQL);
			pt.setString(1, user_id);
			pt.executeUpdate();

			pt.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateUser(String name, String user_id) {
		try {
			Class.forName(dbDriver);

			conn = DriverManager.getConnection(dbURL, dbId, dbPw);

			String updateSQL = "update user set name = ? where user_id = ?";
			
			pt = conn.prepareStatement(updateSQL);
			
			pt.setString(1, name);
			pt.setString(2, user_id);
			
			pt.executeUpdate();
			
			pt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
