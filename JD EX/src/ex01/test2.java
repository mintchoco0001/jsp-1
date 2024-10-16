package ex01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class test2 {

	public static void main(String[] args) {
		// 사용자로부터 입력을 받기
		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.println("[1]데이터 입력 [2] 전체조회 [3] 아이디 삭제 [4]이름수정");
			int selec = sc.nextInt();
			if (selec == 1) {
				System.out.println("아이디 입력 : ");
				String user_id = sc.next();
				System.out.println("비밀번호 입력 : ");
				String user_pw = sc.next();
				System.out.println("이름 입력 : ");
				String name = sc.next();
				System.out.println("핸드폰 번호 입력 (예시 : 010-2222-5555) : ");
				String phone = sc.next();
				System.out.println("등급 입력 입력 : ");
				String grade = sc.next();
				System.out.println("나이 입력 : ");
				int age = sc.nextInt();

				// DTO 객체 생성 후 입력 받은 값으로 초기화
				user_DTO dto = new user_DTO(user_id, user_pw, name, phone, grade, age);

				// DAO 객체 생성
				user_DAO dao = new user_DAO();

				dao.insertUser(dto);
			} else if (selec == 2) {
				user_DAO dao = new user_DAO();
				dao.selectUser();
			} else if (selec == 3) {
				System.out.println("삭제 할 아이디 입력 : ");
				String user_id = sc.next();
				user_DAO dao = new user_DAO();
				dao.deleteUser(user_id);
			} else if (selec == 4) {
				System.out.println("변경 할 이름을 입력 : ");
				String name = sc.next();
				System.out.println("이름을 변경 할 아이디를 입력 : ");
				String user_id = sc.next();
				user_DAO dao = new user_DAO();
				dao.updateUser(name, user_id);
			}

			else {
				System.out.println("장비를 정지합니다.");
				break;
			}

		}
	}

}
