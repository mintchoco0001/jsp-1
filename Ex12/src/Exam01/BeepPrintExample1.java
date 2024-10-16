package Exam01;

import java.awt.*;

public class BeepPrintExample1 {
	public static void main(String[] args) {
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		for (int i = 0; i < 5; i++) {
			toolkit.beep();
			try {
				Thread.sleep(500);

			} catch (Exception e) {
				// TODO: handle exception
			}

			for (int j = 0; j < 5; j++) {
				System.out.println("¶ò");
				try {
					Thread.sleep(500);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		}
	}

}
