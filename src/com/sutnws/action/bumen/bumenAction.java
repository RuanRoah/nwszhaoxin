package com.sutnws.action.bumen;
import java.util.UUID;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sutnws.bean.UserBean;
import com.sutnws.bean.renyuanBean;
import com.sutnws.dao.*; 
@SuppressWarnings({ "serial", "unused" })
public class bumenAction extends ActionSupport{
	public static bumenDao bd;
	public static countDao cd;
	private List<renyuanBean> rl;
	private List<renyuanBean> rl_1;
	private List<renyuanBean> rl_2;
	private List<renyuanBean> rl_3;
	private int boynum;
	private int girlnum;
	private int jishunum;
	private int yingyinnum;
	private int xuanchuannum;
	private int caibiannum;
	private int cehuanum;
	private int waishinum;
	/*session*/
	private String ausername;
	private String arole;
	private String arolename;	
	private String azhuangtai;
	private String apingjia;
	private String axuehao;
	private String abanji;
	private String asex;
	private String atel;
	private String aqq;
	private String aintroduce;
	private String abumenmain;
	private String aname;
	
	
	
	public List<renyuanBean> getRl_1() {
		return rl_1;
	}

	public void setRl_1(List<renyuanBean> rl_1) {
		this.rl_1 = rl_1;
	}

	public List<renyuanBean> getRl_2() {
		return rl_2;
	}

	public void setRl_2(List<renyuanBean> rl_2) {
		this.rl_2 = rl_2;
	}

	public List<renyuanBean> getRl_3() {
		return rl_3;
	}

	public void setRl_3(List<renyuanBean> rl_3) {
		this.rl_3 = rl_3;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getAbumenmain() {
		return abumenmain;
	}

	public void setAbumenmain(String abumenmain) {
		this.abumenmain = abumenmain;
	}

	public String getAbanji() {
		return abanji;
	}

	public void setAbanji(String abanji) {
		this.abanji = abanji;
	}

	public String getAsex() {
		return asex;
	}

	public void setAsex(String asex) {
		this.asex = asex;
	}

	public String getAtel() {
		return atel;
	}

	public void setAtel(String atel) {
		this.atel = atel;
	}

	public String getAqq() {
		return aqq;
	}

	public void setAqq(String aqq) {
		this.aqq = aqq;
	}

	public String getAintroduce() {
		return aintroduce;
	}

	public void setAintroduce(String aintroduce) {
		this.aintroduce = aintroduce;
	}

	public String getAxuehao() {
		return axuehao;
	}

	public void setAxuehao(String axuehao) {
		this.axuehao = axuehao;
	}

	public String getAzhuangtai() {
		return azhuangtai;
	}

	public void setAzhuangtai(String azhuangtai) {
		this.azhuangtai = azhuangtai;
	}

	public String getApingjia() {
		return apingjia;
	}

	public void setApingjia(String apingjia) {
		this.apingjia = apingjia;
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

	public String getArolename() {
		return arolename;
	}

	public void setArolename(String arolename) {
		this.arolename = arolename;
	}

	/*session结束*/
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

	public int getJishunum() {
		return jishunum;
	}

	public void setJishunum(int jishunum) {
		this.jishunum = jishunum;
	}

	public int getYingyinnum() {
		return yingyinnum;
	}

	public void setYingyinnum(int yingyinnum) {
		this.yingyinnum = yingyinnum;
	}

	public int getXuanchuannum() {
		return xuanchuannum;
	}

	public void setXuanchuannum(int xuanchuannum) {
		this.xuanchuannum = xuanchuannum;
	}

	public int getCaibiannum() {
		return caibiannum;
	}

	public void setCaibiannum(int caibiannum) {
		this.caibiannum = caibiannum;
	}

	public int getCehuanum() {
		return cehuanum;
	}

	public void setCehuanum(int cehuanum) {
		this.cehuanum = cehuanum;
	}

	public int getWaishinum() {
		return waishinum;
	}

	public void setWaishinum(int waishinum) {
		this.waishinum = waishinum;
	}

	public List<renyuanBean> getRl() {
		return rl;
	}

	public void setRl(List<renyuanBean> rl) {
		this.rl = rl;
	}

	public void setCd(countDao cd) {
		bumenAction.cd = cd;
	}

	public void setBd(bumenDao bd) {
		bumenAction.bd = bd;
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
	    return SUCCESS;
    }
   
    
    public String shuju()
    {
    	 HttpServletRequest request = ServletActionContext.getRequest();
	 	 HttpSession session = request.getSession();
	 	 UserBean ub = (UserBean)session.getAttribute("USER");
		 if(ub==null)
			 return "nologin";
		 ausername=ub.getUsername();
		 arole=ub.getRole();
		 arolename=ub.getRolename();
    	 return "shuju";
    }
    public String yizhiyuan() throws SQLException
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
		 rl=bd.listrenyuan(rb);
    	 return "yizhiyuan";
    }
    public String  erzhiyuan() throws SQLException
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
		 rl=bd.listrenyuan(rb);
    	return "erzhiyuan";
    }
    public String  sanzhiyuan() throws SQLException
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
		 rl=bd.listrenyuan(rb);
    	return "sanzhiyuan";
    }
    public String luqu() throws SQLException
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
		 rl=bd.listrenyuan(rb);
    	 return "luqu";
    }
    public String chazhao() throws SQLException
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
		 renyuanBean rb_2=new renyuanBean();
		 rb_2=(renyuanBean)bd.chazhao(rb);
		 if(rb_2==null)
			 return "meizhaodao";
		 System.out.println("daozhele");
		 axuehao=rb_2.getXuehao();
		 aname=rb_2.getName();
		 abanji=rb_2.getBanji();
		 asex=rb_2.getSex();
		 abumenmain=rb_2.getBumenmain();
		 atel=rb_2.getTel();
		 aqq=rb_2.getQq();
		 aintroduce=rb_2.getIntroduce();
		 return "chazhao";
    	 
    }
    public String  delete() throws SQLException
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
    	return "delete";
    }
    public String queding() throws SQLException
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
		 rb.setPingjiamain(apingjia);
		 System.out.println(azhuangtai);
		 System.out.println(apingjia);
		 bd.upzhuangtai(rb);
    	return "queding";
    }
    public String pingjia_1() throws SQLException
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
		 rb.setPingjia_1(apingjia);
		 bd.pj_1(rb);
    	return "pingjia_1";
    }
    public String pingjia_2() throws SQLException
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
		 rb.setPingjia_2(apingjia);
		 bd.pj_2(rb);
    	return "pingjia_2";
    }
    public String beixuan() throws SQLException
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
		 rl=bd.listrenyuan(rb);
    	return "beixuan";
    }
    public String toexcel() throws SQLException
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
		 rl=bd.listrenyuan(rb);
		 /*
		  * 
		  * 这是表格示例
		  * 
		  * String header = "NO,姓名,性别,班级";
		   String[] body = new String[4];
		   body[0] = "1,落落,男,研究生";
		   body[1] = "2,钱程,男,软工1404";
		   body[2] = "3,刘宇航,男,软件1501";
		   body[3] = "4,方平,男,软工1304";
		   String filePath = "d:/demo.xls";
		   CreateExcel testJxl = CreateExcel.getInstance();
		   boolean flag = testJxl.createTable(header, body, filePath);
		 *
		 *
		 *
		 *
		 *
		 *
		 */
		 
    	return "toexcel";
    }
    public String yimianshi() throws SQLException
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
			 rb.setZhuangtai("1");
			 rb.setBumenmain(abumenmain);
			 rl_1=bd.yms_1(rb);
			 rl_2=bd.yms_2(rb);
			 rl_3=bd.yms_3(rb);		 	 
	   	 return "yimianshi";
    }
    public String cancel()
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
		 bd.cancel(rb);
    	return "cancel";
    }
}