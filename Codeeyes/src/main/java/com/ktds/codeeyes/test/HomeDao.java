package com.ktds.codeeyes.test;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<HomeDto> select() {
		return sqlSession.selectList("sql.sel");
	}
}
