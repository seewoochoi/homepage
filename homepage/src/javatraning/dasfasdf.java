package javatraning;

public class dasfasdf {

	public static void main(String[] args) {
		String[] movies = {"그래비티","맘마 미아","래미제라블","월터의 상상은 현실이 된다.","노아"
				,"앳지 오브 투모로우","트랜센던스","x-man"};
	
		int cnt = -1;
		
		System.out.println("배열의값의 갯수:" + movies.length);
		while(true) {
			cnt = cnt + 1;
			System.out.println(movies[cnt]);
			
			if(cnt==movies.length -1) {
				break;
			}
	}

	}

}
