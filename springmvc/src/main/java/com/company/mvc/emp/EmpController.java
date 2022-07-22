package com.company.mvc.emp;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {

	@Autowired
	EmpMapper map;
	Logger logger = LoggerFactory.getLogger(EmpController.class);

	//단건 조회
	@RequestMapping("/emp")
	public String emp(EmpVO vo, Model model, HttpServletRequest request) {
		// model.addAttribute("emp", map.getEmp(vo));
		request.setAttribute("emp", map.getEmp(vo));
		return "emp/emp";
	}

	//목록
	@RequestMapping("/empList")
	public String emplist(Model model, EmpReqVO vo) {
		model.addAttribute("empList", map.getEmpList(vo));
		return "emp/empList";
	}
	
	//등록
	@GetMapping("/empInsert")
	public String empInsert() {
		return "emp/empInsert";
	}
	
	//등록 처리
	@PostMapping("/empInsert")
	public String empInsertProc(EmpVO vo) {
		logger.debug(vo.toString());
		System.out.println(vo);
		System.out.println(vo.getEmployeeId() + "사번 등록");
		map.getEmpInsert(vo);
		return "redirect:empList";
	}
	
	//수정페이지
	@RequestMapping("/empUpdate/{employeeId}")
	public String empUpdateForm(Model model, EmpVO vo, @PathVariable int employeeId) {
		vo.setEmployeeId(employeeId);
		model.addAttribute("emp", map.getEmp(vo));
		return "emp/empUpdate";
	}
	//수정 처리
	@PostMapping("/empUpdate")
	public String empUpdateProc(EmpVO vo) {
		logger.debug(vo.toString());
		map.getEmpUpdate(vo);
		return "redirect:empList";
	}
	
	//삭제
	@RequestMapping("/empDelete")
	public String empDeleteProc(EmpVO vo) {
		map.getEmpDelete(vo);
		return "redirect:empList";
	}
	
}
