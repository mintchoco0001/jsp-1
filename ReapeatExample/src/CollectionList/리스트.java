package CollectionList;

import java.util.*;

public class 리스트 {

	public static void main(String[] args) {
		// List는 모든 리스트의 상위객체
		List<String> data = new ArrayList<String>();
		// 변수명.add로 데이터 추가
		data.add("커피");
		data.add("딸기스무디");
		data.add("자허블");
		// 원하는 위치에 데이터 삽입
		data.add(2, "바닐랄라떼");

		// Vector라는 List자료구조 있긴함. 예전기술임
		// Vector는 저장공간이 정해진 갯수만큼 무조건 생성된다. 예) 11개의 자료 Vector 공간 10개면 공간 20개로 생성함
		// ArrayList와 Vector의 가장 큰 차이는 동기화가 있냐 없냐.
		// Vector에는 동기화가 되어있고 ArrayList는 동기화를 구현해줘야 한다
		
		//set 인터페이스라서 바로 생성 불가능
		
		HashSet<String> data2 = new HashSet<String>();
		data2.add("햄버거");
		data2.add("피자플레닛");
		data2.add("냉면");
		data2.add("콩나물국밥");
		Iterator<String> ite = data2.iterator();
		while (ite.hasNext()) {
			String str = ite.next();
			System.out.println(str);
		}
		System.out.println("STACK=====================================================================");

		Stack<String> data3 = new Stack<String>();
		
		data3.push("동그라미 그리기");
		data3.push("동그라미 빨갛게 색칠하기");
		data3.push("테두리 설정하기");
		data3.push("지우기");
		
		System.out.println(data3.pop()); //꺼내면 => 지워짐
		System.out.println(data3.pop());
		System.out.println(data3.pop());
		System.out.println(data3.pop());
	
		//Stack Overflow => 스택 넘침! 스택 과충전!
	
		System.out.println("QUEUE=====================================================================");
		
		Queue<String> data4 = new LinkedList<String>();
		
		data4.add("동그라미 그리기");
		data4.add("동그라미 빨갛게 색칠하기");
		data4.add("테두리 설정하기");
		data4.add("지우기");
		
		System.out.println(data4.poll()); //마찬가지로 지워짐
		System.out.println(data4.poll());
		System.out.println(data4.poll());
		System.out.println(data4.poll());
		
		//Stream은 Queue기반이라서 한쪽으로만 보낼 수 있음
		//전송스트림으로 수신할 수 없다
		//그래서 스트림을 두개 짜야한다
		//출력스트림=>Output(숫자용)/Writer(문자용)
		//입력스트림=>Input(숫자용)/Reader(문자용)
		
		//부가기능 OutputStream
		//FileOutputStream => 파일을 전송하는 스트림
		
	}

}