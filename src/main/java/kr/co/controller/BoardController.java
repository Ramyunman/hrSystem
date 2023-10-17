package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;
import kr.co.vo.Employees;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 사원 등록 작성 화면
	@RequestMapping(value = "/createView", method = RequestMethod.GET)
	public void createView() throws Exception{
		logger.info("createView");
	}
	
	// 사원 등록
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(Employees employees) throws Exception {
		logger.info("create");
		service.create(employees);
		return "redirect:/";
	}

}
