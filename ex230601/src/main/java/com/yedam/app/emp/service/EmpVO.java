package com.yedam.app.emp.service;

import java.sql.Date;

import lombok.Data;

@Data
public class EmpVO {
	String employeeId;
	String firstName;
	String lastName;
	String email;
	Date hireDate;
	String jobId;
	String departmentId;
	String orderColumn;
	
	String[] getDeptArr() {
		return departmentId.split(",");
	}
}
