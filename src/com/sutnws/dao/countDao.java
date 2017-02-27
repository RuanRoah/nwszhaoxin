package com.sutnws.dao;
import java.sql.SQLException;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import com.sutnws.bean.renyuanBean;

public class countDao extends SqlMapClientDaoSupport{
	 public Object getAllrenshu(renyuanBean rb) throws SQLException
	    {
	    	return getSqlMapClientTemplate().queryForObject("Allrenshu", rb);
	    }
	 public Object getBumenrenshu(renyuanBean rb) throws SQLException
	    {
	    	return getSqlMapClientTemplate().queryForObject("Bumenrenshu", rb);
	    }
	 
	 public Object getAllsex(renyuanBean rb) throws SQLException
	    {
	    	return getSqlMapClientTemplate().queryForObject("Allsex", rb);
	    }
	 public Object getBumensex(renyuanBean rb) throws SQLException
	    {
	    	return getSqlMapClientTemplate().queryForObject("Bumensex", rb);
	    }
	 
	 public Object getbumenluqu(renyuanBean rb) throws SQLException
		 {
		 	return getSqlMapClientTemplate().queryForObject("bumenluqu", rb);
		 }	 
	 public Object getbumenbaoming(renyuanBean rb) throws SQLException
		 {
		 	return getSqlMapClientTemplate().queryForObject("bumenbaoming", rb);
		 }
	 
	 public Object getbumenrenshu(renyuanBean rb) throws SQLException
		 {
		 	return getSqlMapClientTemplate().queryForObject("bumenrenshu", rb);
		 }	 
}