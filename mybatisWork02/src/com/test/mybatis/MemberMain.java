/*=======================================
	MemberMain.java
	- 컨트롤러
=======================================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberMain
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;
	/*
	public String memberList(Model model)
	{
		//IMemberDAO dao = (IMemberDAO)new MemberDAO();  이게 아니라
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		//dao.count();
		//dao.list();
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		return "WEB-INF/view/MemberList.jsp";
	}
	*/
	
	// 모델맵도 똑같다.
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String memberList(ModelMap model)
	{
		//IMemberDAO dao = (IMemberDAO)new MemberDAO();  이게 아니라
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		//dao.count();
		//dao.list();
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		return "WEB-INF/view/MemberList.jsp";
	}
	
	@RequestMapping(value = "/memberinsert.action", method = RequestMethod.POST)
	public String memberInsert(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.add(m);
		
		return "redirect:memberlist.action";
	}
	
	@RequestMapping(value = "/memberdelete.action", method = RequestMethod.GET)
	public String memberDelete(int mid)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		dao.remove(mid);
		
		return "redirect:memberlist.action";
	}
	
	@RequestMapping(value = "/membermodify.action", method = RequestMethod.GET)
	public String memberModify(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		System.out.println(m.getMid());
		System.out.println(m.getName());
		System.out.println(m.getTelephone());
		dao.modify(m);
		
		return "redirect:memberlist.action";
	}
}
