
public class sort {
	Student[] a;
public sort(Student[] a){
	
	this.a = a;
	
		

}
public void Bubble_sort(){//버블 정렬 알고리즘
for(int i = 0 ; i < 5 ; i++)
	
	for(int j = i+1 ; j < 5 ; j++ )
	{
		if(a[i].total > a[j].total)
		{
			Student temp = a[i];
			a[i] = a[j];
			a[j] = temp;
		}
	}
}
}
