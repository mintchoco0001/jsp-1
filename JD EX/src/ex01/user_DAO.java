package ex01;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class user_DAO {
	// �����Ͱ� �ִ� ����ҷ� �����ϴ� ������ ��ü
	// ���� DB�� �����ؼ� ����, ����, ��ȸ ���
	// ���� �� �� �ִ� ����� �����Ѵ� (CRUD�� ������)
	// �����͸� ���� DB�� ������. (MVC ���Ͽ��� Model ��Ȱ)

	Connection conn = null;
	// ������ �ؼ��� �ִ� ��Ȱ
	PreparedStatement pt = null;

	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/test?characterEncoding=UTF-8 & severTimezone=UTC";
	String dbId = "root";
	String dbPw = "1234";

	// insert�� �����ϱ�
	// user ���̺� �����͸� ����

	public void insertUser(user_DTO user_DTO) {
		try {
			// jdbc ����̹� �ε�
			Class.forName(dbDriver);

			// DB�� ����
			conn = DriverManager.getConnection(dbURL, dbId, dbPw);

			// sql��, ? �� ���� ������ ������ ������
			String insetSQL = "insert into user values (?,?,?,?,?,?)";

			// conn SQL�� ���� ! DB�� �����Ѵٴ°�
			pt = conn.prepareStatement(insetSQL);

			// ������ �Է� �� ����
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

	// select �� ����
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
			// �� �྿ ����ϱ� ���� ���
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
