
public class Assignment {
	public static void main(String[] args){
	Student[] Student_array;	 //Student 객체를 배열로 선언
	Student_array = new Student[5]; //Student 객체 배열은 5개의 1차원 배열이다.
	
	Student_array[0] = new Student(8001 , "Boo,Chang-Mee" , 99 , 88 , 77); 	
	Student_array[1] = new Student(8002 , "Ko,Yoo-Jin" , 100 , 90 , 95  );
	Student_array[2] = new Student(8003 , "Ko,Soo-Jee" , 70 , 85 , 90);
	Student_array[3] = new Student(8004 , "Han,Dae-Ji" , 60 , 65, 70 );
	Student_array[4] = new Student(8005 , "Ha,Sa-Rang" , 80 , 80 , 80  );// 값을 대입
	System.out.println("** sungjukpyo(before ascending sort) **\n\n----------------------------------------------\nhakbun  name java  cobol fortran total average\n---------------------------------------------");

	for(int i = 0 ; i < 5 ; i++)//for문을 이용해서 성적을 출력
	{
		Student_array[i].Print_sungjuk();
	
	}
	System.out.println("\n");
	sort A = new sort(Student_array);//정렬 객체를 선언
	A.Bubble_sort();// 정렬 객체의 메소드인 버블 정렬 메소드를 사용
	System.out.println("** sungjukpyo(after ascending sort) **\n\n----------------------------------------------\nhakbun  name java  cobol fortran total average\n---------------------------------------------");
	for(int i = 0 ; i < 5 ; i++)//for문을 이용해서 성적을 출력
	{
		Student_array[i].Print_sungjuk();
		
	}

	}
	
}
