package com.sutnws.dao;
import java.sql.SQLException;

import com.sutnws.bean.*;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class loginDao extends SqlMapClientDaoSupport{
   public Object querylogin(UserBean ub) throws SQLException
   {
	   return  getSqlMapClientTemplate().queryForObject("querylogin", ub);
   }
   
}
