package com.company.mvc.emp;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class EmpVO {
	private String firstName;
	private String lastName;
	private int employeeId;
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-DD")
	private String hireDate;
	private String jobId;
	private int salary;
	private String DepartmentId;
}
