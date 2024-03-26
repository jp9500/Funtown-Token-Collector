package employeemvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import employeemvc.dao.EmployeeDao;
import employeemvc.dto.Employee;

@Controller
public class AppController {
	
	@Autowired
	EmployeeDao dao;
	
	@RequestMapping("/test")
	public void test(HttpServletResponse resp) throws IOException {
		PrintWriter pw = resp.getWriter();
		pw.print("hello World");
	}
	
	@RequestMapping("/signup")
	public ModelAndView signUp() {
		ModelAndView view = new ModelAndView();
		view.addObject("employee", new Employee());
		view.setViewName("signup.jsp");
		return view;
	}
	@RequestMapping("/save")
	public ModelAndView saveEmployee(@ModelAttribute Employee employee) {
		dao.saveEmp(employee);
		ModelAndView view = new ModelAndView();
		view.setViewName("login.jsp");
		return view;
	}
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String email, @RequestParam String pass) {
		Employee exiEmp = dao.findByEmail(email);
		if(exiEmp !=null) {
			if(exiEmp.getEmpPass().equals(pass)) {
				ModelAndView view = new ModelAndView();
				view.setViewName("home.jsp");
				return view;
			}
			return new ModelAndView("login.jsp");
		}
		return new ModelAndView("login.jsp");
	}
	
}
