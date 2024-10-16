package CollectionList;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class 파일리더 {
	   public static void main(String[] args) {
		      String path = "C:\\data\\"+"JavaCurri.txt";
		      
		      try {
		         //FileInputStream fis = new FileInputStream(new File(path));
		         FileReader fis = new FileReader(new File(path));
		         BufferedReader br = new BufferedReader(fis);
		         
		         /*int c = 0;
		         while((c = fis.read()) != -1){
		            System.out.print((char)c);
		         }*/
		         String str = "";
		         
		         while((str = br.readLine()) != null){
		            System.out.println(str);
		         }
		         
		         br.close();
		         fis.close();
		      } catch (FileNotFoundException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		      } catch (IOException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		      }
		   }
}
