package CollectionList;

import java.io.File;
import java.io.FileWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

public class ��Ʈ�� {
	public static void main(String[] args) {
		Long nowTime = System.currentTimeMillis();
		SimpleDateFormat sdf = new SimpleDateFormat("YY��MM��d�� HH��mm��ss��");
		String strTime = sdf.format(new Date(nowTime));

		System.out.println(strTime);

		String path = "C:\\data\\" + strTime + ".txt";

		try {
//       FileOutputStream fos = new FileOutputStream(new File(path));

			File file = new File("C:\\data\\" + strTime + ".txt");
			//File �� ����(������)
			//FileOutputStream �� ��Ʈ��(���) 
			//file.mkdir();//��λ���
			//file.isFile();//���� �ִ��� Ȯ��
			//file.isDirectory();// ��ΰ� �ִ��� Ȯ��

			FileWriter fw = new FileWriter(file);
			fw.write("�ȳ��ϼ���!!");
			fw.flush();
			fw.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
