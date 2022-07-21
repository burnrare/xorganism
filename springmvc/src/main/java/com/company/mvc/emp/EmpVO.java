package com.company.mvc.emp;

import java.sql.Date;

import lombok.Data;

@Data
public class EmpVO {
	private String firstName;
	private String lastName;
	private int employeeId;
	private String email;
	private Date hireDate;
	private String jobId;
	private int salary;
	private String DepartmentId;
}
