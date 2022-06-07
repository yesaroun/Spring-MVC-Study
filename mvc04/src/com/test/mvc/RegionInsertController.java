/*
   RegionInsertController.java
*/

package com.test.mvc; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// ※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//    사용자 정의 컨트롤러 클래스를 구현한다.
public class RegionInsertController implements Controller
{

   private IRegionDAO dao;
	
   public void setDao(IRegionDAO dao)
   {
      this.dao = dao;
   }
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("name")==null) 
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if(session.getAttribute("admin")==null)	 
		{
			mav.setViewName("redirect:logout.action");	
			return mav;
		}
		
		// 데이터 수신
		String regionName = request.getParameter("regionName");
		
		try
		{
			Region region = new Region();
			
			region.setRegionName(regionName);
			
			dao.add(region);	
			
			mav.setViewName("redirect:regionlist.action");
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;

	}

}