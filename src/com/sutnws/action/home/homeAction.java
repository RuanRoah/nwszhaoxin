package com.sutnws.action.home;
import java.util.UUID;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sutnws.bean.*;
import com.sutnws.dao.*;
@SuppressWarnings({ "serial", "unused" })
public class homeAction extends ActionSupport{
	private static homeDao hd;
	private List<roleBean> rl;
	private String ausername;
	private String arole;
	private String arolename;
	private String atel;
	
    public String getAtel() {
		return atel;
	}

	public void setAtel(String atel) {
		this.atel = atel;
	}

	public String getArolename() {
		return arolename;
	}

	public void setArolename(String arolename) {
		this.arolename = arolename;
	}

	public String getAusername() {
		return ausername;
	}

	public void setAusername(String ausername) {
		this.ausername = ausername;
	}

	public String getArole() {
		return arole;
	}

	public void setArole(String arole) {
		this.arole = arole;
	}

	public List<roleBean> getRl() {
		return rl;
	}

	public void setRl(List<roleBean> rl) {
		this.rl = rl;
	}

	public void setHd(homeDao hd) {
		homeAction.hd = hd;
	}
    
	public String execute()
    {
		HttpServletRequest request = ServletActionContext.getRequest();
		 HttpSession session = request.getSession();
		 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
	   roleBean rb=new roleBean();
	   try {
		rl=hd.caidan(rb);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return SUCCESS;
    }
	public String onepage()
	{
		HttpServletRequest request = ServletActionContext.getRequest();
		 HttpSession session = request.getSession();
		 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";		 
		 return "onepage";
	}
}