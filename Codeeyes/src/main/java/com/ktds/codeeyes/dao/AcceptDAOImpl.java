package com.ktds.codeeyes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ktds.codeeyes.model.AcceptVO;

@Repository
public class AcceptDAOImpl implements AcceptDAO {
	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<AcceptVO> getAcceptList() throws Exception {
		return sqlSession.selectList("AcceptMapper.getAcceptList");
	}

}
