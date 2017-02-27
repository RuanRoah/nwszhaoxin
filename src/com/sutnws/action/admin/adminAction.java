package com.sutnws.action.admin;
import java.util.UUID;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sutnws.bean.UserBean;
import com.sutnws.bean.renyuanBean;
import com.sutnws.dao.adminDao;
import com.sutnws.dao.baomingDao;
import com.sutnws.dao.bumenDao;
import com.sutnws.dao.countDao;
@SuppressWarnings({ "serial", "unused" })
public class adminAction extends ActionSupport {
    private static countDao cd_1;
    private  static baomingDao bd_1;
	private static bumenDao bmd;
	private static adminDao ad;
    /*session start*/
    private String ausername;
	private String arole;
	private String arolename;
	private List<renyuanBean> rl;
	private List<renyuanBean> dl;
	private String abumenmain;
	private String abumen_1;
	private String abumen_2;
	private String azhuangtai;
	private String asex;
	private String aqq;
	private String atel;
	private String axuehao;
	private String abanji;
	private String aname;
    /*session finish*/
	
	/*这里是统计部分*/
	private int boynum;
	private int girlnum;
	private int js_0;
	private int yy_0;
	private int xc_0;
	private int ch_0;
	private int cb_0;
	private int ws_0;
	private int js_1;
	private int yy_1;
	private int xc_1;
	private int ch_1;
	private int cb_1;
	private int ws_1;
	private int js_2;
	private int yy_2;
	private int xc_2;
	private int ch_2;
	private int cb_2;
	private int ws_2;
	
	
	public int getBoynum() {
		return boynum;
	}
	public void setBoynum(int boynum) {
		this.boynum = boynum;
	}
	public int getGirlnum() {
		return girlnum;
	}
	public void setGirlnum(int girlnum) {
		this.girlnum = girlnum;
	}
	public int getJs_0() {
		return js_0;
	}
	public void setJs_0(int js_0) {
		this.js_0 = js_0;
	}
	public int getYy_0() {
		return yy_0;
	}
	public void setYy_0(int yy_0) {
		this.yy_0 = yy_0;
	}
	public int getXc_0() {
		return xc_0;
	}
	public void setXc_0(int xc_0) {
		this.xc_0 = xc_0;
	}
	public int getCh_0() {
		return ch_0;
	}
	public void setCh_0(int ch_0) {
		this.ch_0 = ch_0;
	}
	public int getCb_0() {
		return cb_0;
	}
	public void setCb_0(int cb_0) {
		this.cb_0 = cb_0;
	}
	public int getWs_0() {
		return ws_0;
	}
	public void setWs_0(int ws_0) {
		this.ws_0 = ws_0;
	}
	public int getJs_1() {
		return js_1;
	}
	public void setJs_1(int js_1) {
		this.js_1 = js_1;
	}
	public int getYy_1() {
		return yy_1;
	}
	public void setYy_1(int yy_1) {
		this.yy_1 = yy_1;
	}
	public int getXc_1() {
		return xc_1;
	}
	public void setXc_1(int xc_1) {
		this.xc_1 = xc_1;
	}
	public int getCh_1() {
		return ch_1;
	}
	public void setCh_1(int ch_1) {
		this.ch_1 = ch_1;
	}
	public int getCb_1() {
		return cb_1;
	}
	public void setCb_1(int cb_1) {
		this.cb_1 = cb_1;
	}
	public int getWs_1() {
		return ws_1;
	}
	public void setWs_1(int ws_1) {
		this.ws_1 = ws_1;
	}
	public int getJs_2() {
		return js_2;
	}
	public void setJs_2(int js_2) {
		this.js_2 = js_2;
	}
	public int getYy_2() {
		return yy_2;
	}
	public void setYy_2(int yy_2) {
		this.yy_2 = yy_2;
	}
	public int getXc_2() {
		return xc_2;
	}
	public void setXc_2(int xc_2) {
		this.xc_2 = xc_2;
	}
	public int getCh_2() {
		return ch_2;
	}
	public void setCh_2(int ch_2) {
		this.ch_2 = ch_2;
	}
	public int getCb_2() {
		return cb_2;
	}
	public void setCb_2(int cb_2) {
		this.cb_2 = cb_2;
	}
	public int getWs_2() {
		return ws_2;
	}
	public void setWs_2(int ws_2) {
		this.ws_2 = ws_2;
	}
	/*统计部分结束*/
	public void setBmd(bumenDao bmd) {
		adminAction.bmd = bmd;
	}
	public List<renyuanBean> getDl() {
		return dl;
	}
	public void setDl(List<renyuanBean> dl) {
		this.dl = dl;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAxuehao() {
		return axuehao;
	}
	public void setAxuehao(String axuehao) {
		this.axuehao = axuehao;
	}
	public String getAbanji() {
		return abanji;
	}
	public void setAbanji(String abanji) {
		this.abanji = abanji;
	}
	public void setAd(adminDao ad) {
		adminAction.ad = ad;
	}
	public String getAusername() {
		return ausername;
	}
	public List<renyuanBean> getRl() {
		return rl;
	}
	public void setRl(List<renyuanBean> rl) {
		this.rl = rl;
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
	public String getArolename() {
		return arolename;
	}
	public void setArolename(String arolename) {
		this.arolename = arolename;
	}
	public void setBd_1(baomingDao bd_1) {
		adminAction.bd_1 = bd_1;
	}
	public void setCd_1(countDao cd_1) {
		adminAction.cd_1 = cd_1;
	}
	
	public String getAbumenmain() {
		return abumenmain;
	}
	public void setAbumenmain(String abumenmain) {
		this.abumenmain = abumenmain;
	}
	public String getAbumen_1() {
		return abumen_1;
	}
	public void setAbumen_1(String abumen_1) {
		this.abumen_1 = abumen_1;
	}
	public String getAbumen_2() {
		return abumen_2;
	}
	public void setAbumen_2(String abumen_2) {
		this.abumen_2 = abumen_2;
	}
	public String getAzhuangtai() {
		return azhuangtai;
	}
	public void setAzhuangtai(String azhuangtai) {
		this.azhuangtai = azhuangtai;
	}
	public String getAsex() {
		return asex;
	}
	public void setAsex(String asex) {
		this.asex = asex;
	}
	public String getAqq() {
		return aqq;
	}
	public void setAqq(String aqq) {
		this.aqq = aqq;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	public String execute() throws SQLException
     {    	 
		 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
		 	 return "nologin";
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();		 
    	 return SUCCESS;
     }
     public String qiangren() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin"; 
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
		 renyuanBean rb=new renyuanBean();
		 rl=bmd.listrenyuan(rb);
    	 return "qiangren";
     }
     public String result() throws SQLException
     {
     	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
		 renyuanBean rb=new renyuanBean();
		 rl=bmd.listrenyuan(rb);
    	 return "result";
     }
     public String count() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
		 renyuanBean rb=new renyuanBean();
		 renyuanBean rb_1=new renyuanBean();
		 renyuanBean rb_2=new renyuanBean();
		 renyuanBean rb_3=new renyuanBean();
		 renyuanBean rb_4=new renyuanBean();
		 renyuanBean rb_5=new renyuanBean();
		 renyuanBean rb_6=new renyuanBean();
		 renyuanBean rb_7=new renyuanBean();
		 renyuanBean rb_8=new renyuanBean();
		 renyuanBean rb_9=new renyuanBean();
		 rb_1.setSex("0");
		 rb_2.setSex("0");
		 boynum=(Integer) cd_1.getAllsex(rb_1);
		 girlnum=(Integer) cd_1.getAllsex(rb_2);
		 rb_3.setBumenmain("jishubu");
		 rb_4.setBumenmain("yiingyinbu");
		 rb_5.setBumenmain("xuanchuanbu");
		 rb_6.setBumenmain("cehuabu");
		 rb_7.setBumenmain("caibianbu");
		 rb_8.setBumenmain("waishibu");
		 js_2=(Integer) cd_1.getbumenrenshu(rb_3);
		 yy_2=(Integer) cd_1.getbumenrenshu(rb_4);
		 xc_2=(Integer) cd_1.getbumenrenshu(rb_5);
		 ch_2=(Integer) cd_1.getbumenrenshu(rb_6);
		 cb_2=(Integer) cd_1.getbumenrenshu(rb_7);
		 ws_2=(Integer) cd_1.getbumenluqu(rb_8);
		 
		 rb_3.setZhuangtai("1");
		 rb_4.setZhuangtai("1");
		 rb_5.setZhuangtai("1");
		 rb_6.setZhuangtai("1");
		 rb_7.setZhuangtai("1");
		 rb_8.setZhuangtai("1");
		 js_0=(Integer) cd_1.getbumenrenshu(rb_3);
		 yy_0=(Integer) cd_1.getbumenluqu(rb_4);
		 xc_0=(Integer) cd_1.getbumenluqu(rb_5);
		 ch_0=(Integer) cd_1.getbumenluqu(rb_6);
		 cb_0=(Integer) cd_1.getbumenluqu(rb_7);
		 ws_0=(Integer) cd_1.getbumenluqu(rb_8);
		 
		 return "count";
     }
     public String update() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	     UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 renyuanBean rb=new renyuanBean();
		  rb.setXuehao(axuehao);
		   rb.setName(aname);
		   rb.setBanji(abanji);
		   rb.setBumenmain(abumenmain);
		   rb.setBumen_1(abumen_1);
		   rb.setBumen_2(abumen_2);
		   rb.setSex(asex);
		   rb.setQq(aqq);
		   rb.setTel(atel);
		   rb.setBumenmain(abumenmain);
		   rb.setBumen_1(abumen_1);
		   rb.setBumen_2(abumen_2);
		   rb.setZhuangtai(azhuangtai);
		   renyuanBean rb_2=new renyuanBean();
		   ad.adminupdate(rb);		   
		 return "update";
     }
     public String delete() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	     UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";		 
		 return "delete"; 
     }
     public String qiangrendo() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
		 renyuanBean rb=new renyuanBean();
		 rb.setTel(atel);
		 rb.setZhuangtai(azhuangtai);
		 rb.setBumenmain(abumenmain);
		 System.out.println(azhuangtai);
		 System.out.println(abumenmain);
		 ad.qiangren(rb);
		 
    	 return "qiangrendo";
     }
     public String chuli() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin"; 
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
		 renyuanBean rb=new renyuanBean();
		 rb.setZhuangtai("0");
		 dl=ad.lschuli(rb);
    	 return "chuli";
     }
     
     public  String chulido() throws SQLException
     {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
		 renyuanBean rb=new renyuanBean();
		 rb.setTel(atel);
		 rb.setZhuangtai(azhuangtai);
		 rb.setBumenmain(abumenmain);
		 System.out.println(azhuangtai);
		 System.out.println(abumenmain);
		 ad.qiangren(rb);
		 
    	 return "chulido";
     }
}