package com.spring.graded;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.graded.model.Employee;
import com.spring.graded.service.EmployeeService;

@Controller
public class EmployeeController {

	private EmployeeService employeeService;

	@Autowired(required = true)
	@Qualifier(value = "employeeService")
	public void setemployeeService(EmployeeService ps) {
		this.employeeService = ps;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showEmployeeslist(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("listEmployees", this.employeeService.listEmployees());
		return "home";
	}
	
	@RequestMapping(value = "/addEmployee", method = RequestMethod.GET)
	public String newEmployee(Model model) {
	    model.addAttribute("employee", new Employee()); // Add an empty employee object to the model
	    return "employee"; // Return the view name
	}

	@RequestMapping(value = "/employees", method = RequestMethod.GET)
	public String listEmployees(Model model) {
		return "employee";
	}
	
	@RequestMapping(value = "/employeelist", method = RequestMethod.GET)
	public String employeeList(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("listEmployees", this.employeeService.listEmployees());
		return "emp-list";
	}
	
	
	
	
	@RequestMapping(value = "/processAddEmployee")
	public String processAddEmployee(@ModelAttribute("employee") Employee emp) {
		if (emp.getId() == 0) {
			// new employee, add it
			this.employeeService.addEmployee(emp);
		} else {
			// existing employee, call update
			this.employeeService.updateEmployee(emp);
		}
		return "redirect:/employeelist";
	}

	@RequestMapping("/remove/{id}")
	public String removeEmployee(@PathVariable("id") int id) {
		this.employeeService.removeEmployee(id);
		return "redirect:/employeelist";
	}

	@RequestMapping("/edit/{id}")
	public String editEmployee(@PathVariable("id") int id, Model model) {
		model.addAttribute("employee", this.employeeService.getEmployeeById(id));
		model.addAttribute("listEmployees", this.employeeService.listEmployees());
		return "edit";
	}

}
