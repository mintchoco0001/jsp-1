package ex01;

public class user_DTO {
	// DTO? 데이터 전달용 클래스
	// DAO 와 DB 간에 데이터를 주고 받는 클래스
	// 로직은 가지지 않으며 순수한 데이터 객체인 ( getter & setter 만 가짐 )
	// 유저가 form에 데이터 입력함 -> DTO애 넣어서 전송함 ->
	// 해당 DTO를 받은 서버가 DAO를 이용해 DB에 저장

	String user_id;
	String user_pw;
	String name;
	String phone;
	String grade;
	int age;

	public user_DTO(String user_id, String user_pw, String name, String phone, String grade, int age) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.name = name;
		this.phone = phone;
		this.grade = grade;
		this.age = age;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getGrade() {
		return grade;
	}

	public int getAge() {
		return age;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return user_id + "\t" + user_pw + "\t" + name + "\t" + phone + "\t" + grade + "\t" + age;
	}

}
