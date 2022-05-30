/*=======================================
	EmployeeInsertController
	- 사용자 정의 컨트롤러 클래스
   	- 직원 데이터 입력 액션 수행... 후... employeelist.action 다시 요청할 수 있도록 안내
   	- DAO 객체에 대한 의존성 주입(DI)을 위한 준비
     	→ 인터페이스 형태의 자료형을 속성으로 구성
     	→ setter 메소드 구성
=======================================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// ※ Spring 의 『Controller 』인터페이스를 구현하는 방법을 통해
// 	  사용자 정의 컨트롤러 클래스를 구성한다.
public class EmployeeInsertController implements Controller
{
	private IEmployeeDAO dao;
	
    public void setDao(IEmployeeDAO dao)
    {
       this.dao = dao;
    }
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		ModelAndView mav = new ModelAndView();
		
		// 데이터 수신 → EmployeeInsertForm.jsp 로 부터...
		String name = request.getParameter("name");
		String ssn1 = request.getParameter("ssn1");
		String ssn2 = request.getParameter("ssn2");
		String birthday = request.getParameter("birthday");
		String lunar = request.getParameter("lunar");
		String telephone = request.getParameter("telephone");
		String regionId = request.getParameter("regionId");
		String departmentId = request.getParameter("departmentId");
		String positionId = request.getParameter("positionId");
		String basicPay = request.getParameter("basicPay");
		String extraPay = request.getParameter("extraPay");
		
		try
		{
			Employee employee = new Employee();
			
			employee.setName(name);
			employee.setSsn1(ssn1);
			employee.setSsn2(ssn2);
			employee.setBirthday(birthday);
			employee.setLunar(Integer.parseInt(lunar));
			employee.setTelephone(telephone);
			employee.setRegionId(regionId);
			employee.setDepartmentId(departmentId);
			employee.setPositionId(positionId);
			employee.setBasicPay(Integer.parseInt(basicPay));
			employee.setExtraPay(Integer.parseInt(extraPay));
			
			dao.employeeAdd(employee);
			
			//check~!!
			//mav.setViewName("EmployeeList.jsp");
			mav.setViewName("redirect:employeelist.action");
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}
	
}
