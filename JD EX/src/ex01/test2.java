package ex01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class test2 {

	public static void main(String[] args) {
		// ����ڷκ��� �Է��� �ޱ�
		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.println("[1]������ �Է� [2] ��ü��ȸ [3] ���̵� ���� [4]�̸�����");
			int selec = sc.nextInt();
			if (selec == 1) {
				System.out.println("���̵� �Է� : ");
				String user_id = sc.next();
				System.out.println("��й�ȣ �Է� : ");
				String user_pw = sc.next();
				System.out.println("�̸� �Է� : ");
				String name = sc.next();
				System.out.println("�ڵ��� ��ȣ �Է� (���� : 010-2222-5555) : ");
				String phone = sc.next();
				System.out.println("��� �Է� �Է� : ");
				String grade = sc.next();
				System.out.println("���� �Է� : ");
				int age = sc.nextInt();

				// DTO ��ü ���� �� �Է� ���� ������ �ʱ�ȭ
				user_DTO dto = new user_DTO(user_id, user_pw, name, phone, grade, age);

				// DAO ��ü ����
				user_DAO dao = new user_DAO();

				dao.insertUser(dto);
			} else if (selec == 2) {
				user_DAO dao = new user_DAO();
				dao.selectUser();
			} else if (selec == 3) {
				System.out.println("���� �� ���̵� �Է� : ");
				String user_id = sc.next();
				user_DAO dao = new user_DAO();
				dao.deleteUser(user_id);
			} else if (selec == 4) {
				System.out.println("���� �� �̸��� �Է� : ");
				String name = sc.next();
				System.out.println("�̸��� ���� �� ���̵� �Է� : ");
				String user_id = sc.next();
				user_DAO dao = new user_DAO();
				dao.updateUser(name, user_id);
			}

			else {
				System.out.println("��� �����մϴ�.");
				break;
			}

		}
	}

}
