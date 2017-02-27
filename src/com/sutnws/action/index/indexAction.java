package com.sutnws.action.index;

import java.sql.SQLException;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sutnws.bean.UserBean;
import com.sutnws.dao.loginDao;

@SuppressWarnings("serial")
public class indexAction extends ActionSupport implements SessionAware{
   private Map<String,Object> session;
   public void setSession(Map<String, Object> session) {
	this.session = session;
   }
   private String ausername;
   private String apasswd; 
   private static loginDao ld;
   private String errorinfo;
   private String code;     
   public String getCode() {     
       return code;     
   }     
   public void setCode(String code) {     
	   this.code = code;     
   }
   public String getErrorinfo() {
	return errorinfo;
    }
	public void setErrorinfo(String errorinfo) {
		this.errorinfo = errorinfo;
	}
	
    public  void setLd(loginDao ld) {
		indexAction.ld = ld;
	}
	public String getAusername() {
	return ausername;
	}
	public void setAusername(String ausername) {
		this.ausername = ausername;
	}
	public String getApasswd() {
		return apasswd;
	}
	public void setApasswd(String apasswd) {
		this.apasswd = apasswd;
	}
	public String execute()
   {
	  return SUCCESS;   
   }
   @SuppressWarnings("unused")
   public String yanzheng() throws SQLException
   {
	   UserBean lb=new UserBean();
	   UserBean lb_2=new UserBean();
	   lb.setUsername(ausername);
	   lb_2=(UserBean) ld.querylogin(lb);
	   
	   String sessionCode=(String)(ActionContext.getContext().getSession().get("sessionCode"));      
	   
	   
	   if(lb==null)
	   {
		   errorinfo = "≤ª¥Ê‘⁄";
		   return "loginerror";
	    }else if(!lb_2.getPasswd().equals(apasswd)){
			errorinfo = "√‹¬Î¥ÌŒÛ";
			return "loginerror";
		}
	   
	   this.session.put("USER", lb_2);
	   //if()	   if(true)
	   return "loginsuccess";
   
   }

}
