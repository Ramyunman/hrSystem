package kr.co.controller;

import javax.inject.Inject;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;


import kr.co.service.BoardService;
import kr.co.vo.Employee;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 직원 등록 작성 화면
	@RequestMapping(value = "/createView", method = RequestMethod.GET)
	public void createView() throws Exception{
		logger.info("createView");
	}
	
	// 직원 등록
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(Employee employee) throws Exception {
		logger.info("create");
		service.create(employee);
		return "redirect:/board/list";
	}
	
	// 직원 목록 조회
	@RequestMapping(value ="/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		logger.info("list");
		model.addAttribute("list", service.list());
		return "board/list";
	}
	
	// 직원 정보 조회
	@RequestMapping(value = "/readView/{employee_id}", method = RequestMethod.GET)
	public String read(@PathVariable("employee_id") int employee_id, Model model) throws Exception {
		logger.info("read");
		model.addAttribute("read", service.read(employee_id));
		return "/board/readView";
	}
	
	// 직원 정보 수정뷰
	@RequestMapping(value = "/beforeUpdate/{employee_id}", method = RequestMethod.GET)
	public String beforeUpdate(@PathVariable("employee_id") int employee_id, Model model) throws Exception {
		logger.info("beforeUpdate");
		model.addAttribute("beforeUpdate", service.beforeUpdate(employee_id));
		return "/board/beforeUpdate";
	}

	// 직원 정보 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Employee employee) throws Exception {
		logger.info("update");
		service.update(employee);
		return "redirect:/board/list";
	}
	
	// 직원 정보 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(Employee employee) throws Exception {
		logger.info("delete");
		service.delete(employee.getEmployee_id());
		return "redirect:/board/list";
	}
}
