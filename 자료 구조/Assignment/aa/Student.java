
public class Student {
	private int hakbun = 0;
	private String name;
	private int java = 0;
	private int cobol = 0;
	private int fortran = 0;
	public int total = 0;
	private double average = 0.0;//변수들을 private로 선언하지만 total 변수는 sort 클래스에서 쓰이기 때문에 public으로 선언
	public Student(int hakbun, String name, int java, int cobol, int fortran)
	{
		this.hakbun=hakbun;
		this.name = name;
		this.java = java;
		this.cobol = cobol;
		this.fortran = fortran;
		this.total = (java + cobol + fortran);
		this.average = this.total/3;
	};//생성자로 값을 입력받음
	public void Print_sungjuk(){
		System.out.println(	hakbun + " " + 
							name + " " + 
							java + " " + 
							cobol + " " + 
							fortran + " " + 
							total + " " + 
							average + " " );
	
	};//성적 출력 메소드
	
}
