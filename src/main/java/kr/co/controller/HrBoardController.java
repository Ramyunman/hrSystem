package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.hrBoardService;
import kr.co.vo.Employees;

@Controller
@RequestMapping("/vit/hrBoard/*")
public class HrBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HrBoardController.class);
	
	@Inject
	hrBoardService service;
	
	// 사원 추가 작성 화면
	@RequestMapping(value = "/vit/hrBoard/addEmployeeView", method = RequestMethod.GET)
	public void addEmployeeView() throws Exception{
		logger.info("addEmployeeView");
	}
	
	// 사원 추가
	@RequestMapping(value = "/vit/hrBoard/addEmployee", method = RequestMethod.POST)
	public String addEmployee(Employees employees) throws Exception {
		logger.info("addEmployee");
		service.addEmployee(employees);
		return "redirect:/vit";
	}
	

}
