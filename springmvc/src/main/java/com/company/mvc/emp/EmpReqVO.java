package com.company.mvc.emp;

import java.sql.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class EmpReqVO {
	int employeeId;
	List<String> depts;
	String jobId;
	
	@DateTimeFormat(pattern = "yyyy-MM-DD")
	String sdt;
	@DateTimeFormat(pattern = "yyyy-MM-DD")
	String edt;
}
