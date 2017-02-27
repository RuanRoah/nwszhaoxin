package com.sutnws.dao;
import java.sql.SQLException;
import java.util.List;

import com.sutnws.bean.*;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.sutnws.bean.renyuanBean;

public class adminDao extends SqlMapClientDaoSupport{
     public void qiangren(renyuanBean rb) throws SQLException
     {
    	 getSqlMapClientTemplate().update("qiangren", rb);
     }
    
	@SuppressWarnings("unchecked")
	public List<UserBean> lsbumen(UserBean ub) throws SQLException
	 {
		 return getSqlMapClientTemplate().queryForList("lsbumen",ub);
	 }
	public void guanli(renyuanBean rb) throws SQLException
	 {
		getSqlMapClientTemplate().update("qiangren",rb);
	 }
	@SuppressWarnings("unchecked")
	public List<renyuanBean> beixuan(renyuanBean rb) throws SQLException
	{
		return getSqlMapClientTemplate().queryForList("beixuan", rb);
	}
	public void adminupdate(renyuanBean rb) throws SQLException
	{
		getSqlMapClientTemplate().update("adminupdate",rb);
	}
	public void adminchuli(renyuanBean rb) throws SQLException
	{
		getSqlMapClientTemplate().update("adminchuli",rb);
	}
	@SuppressWarnings("unchecked")
	public List<renyuanBean>  lschuli(renyuanBean rb) throws SQLException
	 {
		 return getSqlMapClientTemplate().queryForList("lschuli",rb);
	 }
}