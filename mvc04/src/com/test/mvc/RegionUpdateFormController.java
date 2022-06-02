
package com.test.mvc;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegionUpdateFormController implements Controller
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
		
		// 세션 처리과정 추가
		// 관리자
		try
		{
			String regionId = request.getParameter("regionId");
			Region region = new Region();
			
			region = dao.search(regionId);

			mav.addObject("region", region);

			
			mav.setViewName("/WEB-INF/view/RegionUpdateForm.jsp");
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return mav;

	}

}