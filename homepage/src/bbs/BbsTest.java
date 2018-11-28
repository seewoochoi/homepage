package bbs;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BbsTest {

	public static void main(String[] args) {
		BbsDAO dao = new BbsDAO();
		//list(dao);
		//create(dao);
		//read(dao);
		//update(dao);
		//upviewcnt(dao);
		//delete(dao);
		passwdCheck(dao);

	}

	private static void passwdCheck(BbsDAO dao) {
		Map map = new HashMap();
		map.put("bbsno", 2);
		map.put("passwd", "1234");
		if(dao.passCheck(map)) {

			p("올바른 비번입니다.");
	
		}else {
			p("잘못된 비번입니다.");
		}
		
	}

	private static void delete(BbsDAO dao) {
		if(dao.delete(1)) {
			p("성공");
			
		}else {
			p("실패");
		}
		
	}

	private static void upviewcnt(BbsDAO dao) {
		dao.upViewcnt(2);
		
	}

	private static void update(BbsDAO dao) {
		BbsDTO dto = new BbsDTO();
		dto.setBbsno(1);
		dto.setWname("아로미");
		dto.setTitle("게시판 수업중입니다.");
		dto.setContent("게시판에서는 페이징과 검색, 답변기능을 배웁니다.");
				
		if(dao.update(dto)) {
			p("성공");
		}else {
			p("실패");
		}
		
	}

	private static void read(BbsDAO dao) {
		BbsDTO dto = dao.read(1);
		p(dto);
		
	}

	private static void create(BbsDAO dao) {
		BbsDTO dto = new BbsDTO();
		dto.setWname("김길동");
		dto.setTitle("제목");
		dto.setContent("내용");
		dto.setPasswd("1234");
		if(dao.create(dto)) {
			p("성공");
		}else {
			p("실패");
		}
		
	}

	private static void list(BbsDAO dao) {

		List<BbsDTO> list = dao.list();
		
		Iterator<BbsDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			BbsDTO dto = iter.next();
			p(dto);
			p("----------------");
		}
		
	}

	private static void p(String string) {
		System.out.println(string);
		
	}

	private static void p(BbsDTO dto) {
		p("번호:"+dto.getBbsno());
		p("글쓴이:"+dto.getWname());
		p("제목:"+dto.getTitle());
		p("글내용:"+dto.getContent());
		p("조회수:"+dto.getViewcnt());
		p("등록날짜:"+dto.getWdate());
		p("grpno:"+dto.getGrpno());
		p("Indent"+dto.getIndent());
		p("ansnum:"+dto.getAnsnum());
		
	}

}
