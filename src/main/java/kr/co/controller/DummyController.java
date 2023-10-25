package kr.co.controller;

import javax.inject.Inject;
import java.util.List;
import java.util.HashMap;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Map;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import javax.servlet.http.HttpSession;
import kr.co.vo.Criteria;
import kr.co.service.BoardService;
import kr.co.vo.Employee;
import kr.co.vo.PageMaker;
import kr.co.vo.SearchCriteria;
import org.springframework.web.bind.annotation.ModelAttribute;


@Controller
@RequestMapping("/dummy/*")
public class DummyController {
	
	private static final Logger logger = LoggerFactory.getLogger(DummyController.class);
	
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
		return "redirect:/dummy/list";
	}
	
	// 직원 목록 조회
	@RequestMapping(value ="/list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		logger.info("list");
		model.addAttribute("list", service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		return "dummy/list";
	}
	
	// 직원 정보 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(Employee employee, Model model) throws Exception {
		logger.info("read");
		model.addAttribute("read", service.read(employee.getEmployee_id()));
		
		return "/dummy/readView";
	}
	
	// 직원 정보 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(Employee employee, Model model) throws Exception {
		logger.info("updateView");
		model.addAttribute("update", service.read(employee.getEmployee_id()));
		
		return "/dummy/updateView";
	}

	// 직원 정보 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Employee employee) throws Exception {
		logger.info("update");
		service.update(employee);
		return "redirect:/dummy/list";
	}
	
	// 직원 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(Employee employee) throws Exception {
		logger.info("delete");
		service.delete(employee.getEmployee_id());
		
		return "redirect:/dummy/list";
	}
	
	// ajax 연습
	@RequestMapping(value = "/ajaxRequest", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> ajaxRequest(@RequestBody Employee employee) throws Exception {
	    logger.info("ajaxRequest");

	    int employeeId = employee.getEmployee_id();
	    System.out.println(employeeId);
	    Map<String, String> response = new HashMap<>();
	    response.put("message", "Hello from Server");
	    response.put("employee_id", String.valueOf(employeeId));
	    //service.delete(employee.getEmployee_id());
	    //System.out.println(response);
	    return response;
	}

	
}
