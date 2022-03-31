package com.ktds.codeeyes.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ktds.codeeyes.dao.AcceptDAO;
import com.ktds.codeeyes.model.AcceptVO;
import com.ktds.codeeyes.service.AcceptService;

@Controller
public class AcceptController {
	
	@Autowired
	private AcceptService acceptService;
	@Autowired
	private AcceptDAO acceptDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(AcceptController.class);

	@RequestMapping(value="/getAcceptList", method=RequestMethod.GET) 
	public String getAcceptList(Model model) throws Exception {
		
		List<AcceptVO> list = acceptDAO.getAcceptList();
		
		for(int i=0; i<list.size(); i++){
			
			model.addAttribute("acceptList", acceptService.getAcceptList());

			logger.info("============== 수용신청 리스트 " + (i+1) + " ===============");
			logger.info(list.get(i).toString());

		}
		
		
		return "codeeyes/list";
		
	}
	
}
