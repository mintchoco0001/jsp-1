package jBoard;

import java.util.ArrayList;
import java.util.Scanner;

public class test {

	public static void main(String[] args) {

		DBUtil my = new DBUtil();

		my.init();

		// 사용자로부터 입력을 받기
		Scanner s = new Scanner(System.in);

		System.out.print("[수행 기능 선택]\n ** 1. 입력 2. 수정 3. 삭제 4. 조회 **\n>> ");
		while (true) {
			int num = s.nextInt();
			s.nextLine();
			if (num == 1) {
				System.out.println("[값을 입력합니다.]");
				System.out.print("아이디 : ");
				String id = s.next();
				System.out.print("작성자 : ");
				String writer = s.next();
				System.out.print("제목 : ");
				String title = s.next();
				System.out.print("내용 : ");
				String content= s.next();

				my.insertUser(0,   id,  writer,  title,  content);

				System.out.print("[수행 기능 선택]\n ** 1. 입력 2. 수정 3. 삭제 4. 조회 **\n>> ");
			} else if (num == 2) {
				System.out.println("[값을 수정합니다.]");

				System.out.print("바꿀 작성자명 입력 : ");
				String writer = s.next();
				System.out.print("수정 할 작성자의 아이디 입력 : ");
				String id = s.next();

				my.updateUser(writer, id);
				System.out.print("[수행 기능 선택]\n ** 1. 입력 2. 수정 3. 삭제 4. 조회 **\n>> ");

			} else if (num == 3) {
				System.out.println("[값을 삭제합니다.]");
				System.out.print("삭제 할 게시글 넘버  : ");
				int no = s.nextInt();
				my.deleteUser(no);
				System.out.print("[수행 기능 선택]\n ** 1. 입력 2. 수정 3. 삭제 4. 조회 **\n>> ");
			} else if (num == 4) {
				System.out.println("[값을 조회합니다.] ");
				// DAO 객체 생성
				ArrayList<jBoardDTO> list = my.getUsers();

				System.out.println(list);
				System.out.print("[수행 기능 선택]\n ** 1. 입력 2. 수정 3. 삭제 4. 조회 **\n>> ");
			} else {
				System.out.println("잘못된 번호");
				break;
			}
		}
	}

}
