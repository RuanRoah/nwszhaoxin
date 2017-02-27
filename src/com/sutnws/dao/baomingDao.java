package com.sutnws.dao;

import java.sql.SQLException;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.sutnws.bean.renyuanBean;

public class baomingDao extends SqlMapClientDaoSupport{
    public void baoming(renyuanBean rb) throws SQLException
    {
    	 getSqlMapClientTemplate().insert("baoming", rb);
    }
    public Object cunzai(renyuanBean rb) throws SQLException
    {
    	 return getSqlMapClientTemplate().queryForObject("cunzai", rb);
    }
}
