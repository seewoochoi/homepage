package team;

public class ADFASFADF {

	public static void main(String[] args) {
		TeamDTO dto = new TeamDTO();
		
		list(dao);

	}
	private static void list(TeamDAO dao) {
		List<TeamDTO> list = dao.list();
		
		for(int i=0; i<list.size(); i++)
	}
}
