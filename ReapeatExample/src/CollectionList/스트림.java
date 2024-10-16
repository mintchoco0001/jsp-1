package CollectionList;

import java.io.File;
import java.io.FileWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

public class 스트림 {
	public static void main(String[] args) {
		Long nowTime = System.currentTimeMillis();
		SimpleDateFormat sdf = new SimpleDateFormat("YY년MM월d일 HH시mm분ss초");
		String strTime = sdf.format(new Date(nowTime));

		System.out.println(strTime);

		String path = "C:\\data\\" + strTime + ".txt";

		try {
//       FileOutputStream fos = new FileOutputStream(new File(path));

			File file = new File("C:\\data\\" + strTime + ".txt");
			//File 은 파일(데이터)
			//FileOutputStream 은 스트림(통로) 
			//file.mkdir();//경로생성
			//file.isFile();//파일 있는지 확인
			//file.isDirectory();// 경로가 있는지 확인

			FileWriter fw = new FileWriter(file);
			fw.write("안녕하세요!!");
			fw.flush();
			fw.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
