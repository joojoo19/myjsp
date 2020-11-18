package chap14;

import java.time.LocalDateTime;

public class Employee {
private int eno;
private String ename;
private LocalDateTime hireDate;
private String job;
private int grade;
private String managerEname;


public String getManagerEname() {
	return managerEname;
}
public void setManagerEname(String managerEname) {
	this.managerEname = managerEname;
}
public int getGrade() {
	return grade;
}
public void setGrade(int grade) {
	this.grade = grade;
}
public String getJob() {
	return job;
}
public void setJob(String job) {
	this.job = job;
}
public LocalDateTime getHireDate() {
	return hireDate;
}
public void setHireDate(LocalDateTime hireDate) {
	this.hireDate = hireDate;
}
public int getSalary() {
	return salary;
}
public void setSalary(int salary) {
	this.salary = salary;
}
public String getDname() {
	return dname;
}
public void setDname(String dname) {
	this.dname = dname;
}
private int salary;
private String dname;

public int getEno() {
	return eno;
}
public void setEno(int eno) {
	this.eno = eno;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}


}
