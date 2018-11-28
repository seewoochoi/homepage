package member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class membertest {

	public static void main(String[] args) {
		memberDAO dao = new memberDAO();
		
		list(dao);
		//create(dao);
		//update(dao);
		//delete(dao);
	//	total(dao);
		//read(dao);
	
	}

	
	


	private static void total(memberDAO dao) {
		Map map = new HashMap();
		 
		map.put("col", "id");
		map.put("word", "user");
		
		int total = dao.total(map);
		p(total);
	}
 

	private static void p(int total) {
		System.out.println(total);
		
	}


	private static void read(memberDAO dao) {
		memberDTO dto = dao.read("bear");
		p(dto);
		
	}


	private static void delete(memberDAO dao) {
		if(dao.delete("user15")) {
			p("성공");
		}else {
			p("실패");
		}
		
 
		
	}


	private static void update(memberDAO dao) {
		memberDTO dto = dao.read("user15");
				
		dto.setPasswd("1234");
		dto.setTel("987-987-456");
		dto.setEmail("adfk@naver.com");
		dto.setZipcode("123");
		dto.setAddress1("경기도");
		dto.setAddress2("포천시");
		dto.setJob("sql");
		
		
		if(dao.update(dto)) {
			p("성공");
		}else {
			p("실패");
		}
	}


	private static void create(memberDAO dao) {
		memberDTO dto = new memberDTO();
		dto.setId("user14");
		dto.setPasswd("1234");
		dto.setMname("김갑수");
		dto.setTel("123-1234-12345");
		dto.setEmail("email134@mail.com");
		dto.setZipcode("456-789");
		dto.setAddress1("서울시");
		dto.setAddress2("노원구");
		dto.setJob("jsp");
		if(dao.create(dto)) {
			p("성공");
		}else {
			p("실패");
		}
		
	}

 
	private static void list(memberDAO dao, Map map) {
		List<memberDTO> list  = dao.list(map);
		
		for(int i = 0; i<list.size(); i++) {
			memberDTO dto = list.get(i);
			
			p(dto);
			p("------------------------------------");
		}
		 
	}

	private static void p(String str) {
		System.out.println(str);
		
	}
 
	private static void p(memberDTO dto) {
		p("아이디:" + dto.getId());
		p("이름:"+ dto.getMname());
		p("전화번호:"+ dto.getTel());
		p("이메일:"+ dto.getEmail());
		p("우편번호:"+ dto.getZipcode());
		p("주소1:"+ dto.getAddress1());
		p("주소2:"+ dto.getAddress2());
		p("부서명:"+ dto.getFname());
		
	}

}
