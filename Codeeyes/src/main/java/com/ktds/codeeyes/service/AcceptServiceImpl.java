package com.ktds.codeeyes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ktds.codeeyes.dao.AcceptDAO;
import com.ktds.codeeyes.model.AcceptVO;

@Service
public class AcceptServiceImpl implements AcceptService {
	
	@Autowired
	private AcceptDAO acceptDAO;

	public List<AcceptVO> getAcceptList() throws Exception {
		return acceptDAO.getAcceptList();
	}
}
