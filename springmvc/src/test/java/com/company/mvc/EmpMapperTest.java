package com.company.mvc;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.company.mvc.emp.EmpMapper;
import com.company.mvc.emp.EmpVO;

public class EmpMapperTest {
	
	GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("file:C:\\Dev\\workspace\\springmvc\\src\\main\\webapp\\WEB-INF\\spring\\root-context.xml");
	@Autowired EmpMapper map;
	public void test() {
		EmpVO param = new EmpVO();
		param.setEmployeeId(100);
		Map<String, Object> result = map.getEmp(param);
		System.out.println(result.get("name"));
	}
	
	// @Test 
	public void list() {
		// to do
		EmpVO param = new EmpVO();
		param.setDepartmentId("40");
		List<EmpVO> result = map.getEmpList();
		System.out.println(result);
	}

}
