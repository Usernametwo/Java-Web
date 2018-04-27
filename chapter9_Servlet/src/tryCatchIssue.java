public class tryCatchIssue {
	public static void main(String []args) {
		Integer a = tryCatchIssue.aaa();
		System.out.println(a);
	}
	public static Integer aaa() {
		Integer a = 10;
		try {
			a= 9;
			int c = 10/0;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("第一次：" + a);
			return a;
		} finally {
			a += 8;
			System.out.println("第二次：" + a);
			
		}
		return 2;
	} 
}	
