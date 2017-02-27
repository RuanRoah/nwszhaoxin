package com.sutnws.dao;
import java.sql.SQLException;
import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import com.sutnws.bean.renyuanBean;
public class bumenDao extends SqlMapClientDaoSupport{
    public void insertrenyuan(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().insert("insertrenyuan",rb);	   
    }
    public void deleterenyuan(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().delete("deleterenyuan", rb);
    }
    public void updaterenyuan(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().update("updaterenyuan", rb);
    }    
    public void pj_1(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().update("pj_1", rb);
    }
    public void pj_2(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().update("pj_2", rb);
    }
    public void upzhuangtai(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().update("upzhuangtai", rb);
    }
    @SuppressWarnings("unchecked")
	public List<renyuanBean> listrenyuan(renyuanBean rb) throws SQLException
    {
    	return getSqlMapClientTemplate().queryForList("renyuan", rb);
    }
    public void updatezhu(renyuanBean rb) throws SQLException
    {
    	getSqlMapClientTemplate().update("upzhu", rb);
    }
    public Object chazhao(renyuanBean rb) throws SQLException
    {
    	return getSqlMapClientTemplate().queryForObject("chazhao", rb);
    }
    /*这个部分是已面试人员的Dao部分*/
    @SuppressWarnings("unchecked")
	public List<renyuanBean>  yms_1(renyuanBean rb) throws SQLException
	 {
		 return getSqlMapClientTemplate().queryForList("yms_1",rb);
	 }
    @SuppressWarnings("unchecked")
	public List<renyuanBean>  yms_2(renyuanBean rb) throws SQLException
	 {
		 return getSqlMapClientTemplate().queryForList("yms_2",rb);
	 }
    @SuppressWarnings("unchecked")
	public List<renyuanBean>  yms_3(renyuanBean rb) throws SQLException
	 {
		 return getSqlMapClientTemplate().queryForList("yms_3",rb);
	 }
	public void cancel(renyuanBean rb)
	{
		getSqlMapClientTemplate().delete("cancel", rb);
	}
}