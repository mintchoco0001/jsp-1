package CollectionList;

import java.util.*;

public class ����Ʈ {

	public static void main(String[] args) {
		// List�� ��� ����Ʈ�� ������ü
		List<String> data = new ArrayList<String>();
		// ������.add�� ������ �߰�
		data.add("Ŀ��");
		data.add("���⽺����");
		data.add("�����");
		// ���ϴ� ��ġ�� ������ ����
		data.add(2, "�ٴҶ���");

		// Vector��� List�ڷᱸ�� �ֱ���. ���������
		// Vector�� ��������� ������ ������ŭ ������ �����ȴ�. ��) 11���� �ڷ� Vector ���� 10���� ���� 20���� ������
		// ArrayList�� Vector�� ���� ū ���̴� ����ȭ�� �ֳ� ����.
		// Vector���� ����ȭ�� �Ǿ��ְ� ArrayList�� ����ȭ�� ��������� �Ѵ�
		
		//set �������̽��� �ٷ� ���� �Ұ���
		
		HashSet<String> data2 = new HashSet<String>();
		data2.add("�ܹ���");
		data2.add("�����÷���");
		data2.add("�ø�");
		data2.add("�ᳪ������");
		Iterator<String> ite = data2.iterator();
		while (ite.hasNext()) {
			String str = ite.next();
			System.out.println(str);
		}
		System.out.println("STACK=====================================================================");

		Stack<String> data3 = new Stack<String>();
		
		data3.push("���׶�� �׸���");
		data3.push("���׶�� ������ ��ĥ�ϱ�");
		data3.push("�׵θ� �����ϱ�");
		data3.push("�����");
		
		System.out.println(data3.pop()); //������ => ������
		System.out.println(data3.pop());
		System.out.println(data3.pop());
		System.out.println(data3.pop());
	
		//Stack Overflow => ���� ��ħ! ���� ������!
	
		System.out.println("QUEUE=====================================================================");
		
		Queue<String> data4 = new LinkedList<String>();
		
		data4.add("���׶�� �׸���");
		data4.add("���׶�� ������ ��ĥ�ϱ�");
		data4.add("�׵θ� �����ϱ�");
		data4.add("�����");
		
		System.out.println(data4.poll()); //���������� ������
		System.out.println(data4.poll());
		System.out.println(data4.poll());
		System.out.println(data4.poll());
		
		//Stream�� Queue����̶� �������θ� ���� �� ����
		//���۽�Ʈ������ ������ �� ����
		//�׷��� ��Ʈ���� �ΰ� ¥���Ѵ�
		//��½�Ʈ��=>Output(���ڿ�)/Writer(���ڿ�)
		//�Է½�Ʈ��=>Input(���ڿ�)/Reader(���ڿ�)
		
		//�ΰ���� OutputStream
		//FileOutputStream => ������ �����ϴ� ��Ʈ��
		
	}

}