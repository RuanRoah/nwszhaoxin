package com.sutnws.dao;
import java.sql.SQLException;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import com.sutnws.bean.*;
public class homeDao extends SqlMapClientDaoSupport{
    @SuppressWarnings("unchecked")
	public List<roleBean> caidan(roleBean rob) throws SQLException
    {
    	return getSqlMapClientTemplate().queryForList("menu", rob);
    }
}
