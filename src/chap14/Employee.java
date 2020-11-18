package chap14;

import java.time.LocalDateTime;

public class Employee {
	private int eno;
	private String ename;
	private LocalDateTime hireDate;
	private int salary;
	private int salg;
	private String dname;
	private String job;
	private String manager;
	
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public int getSalg() {
		return salg;
	}
	public void setSalg(int salg) {
		this.salg = salg;
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
