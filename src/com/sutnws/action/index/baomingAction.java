package com.sutnws.action.index;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sutnws.bean.UserBean;
import com.sutnws.bean.renyuanBean;
import com.sutnws.dao.baomingDao;

import java.io.ByteArrayInputStream;  
import java.sql.SQLException;
import java.util.Map;  
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;  
import java.io.File;  
import java.io.FileInputStream;  
import java.io.FileNotFoundException;
import java.io.FileOutputStream;  
import java.io.IOException;
import java.io.InputStream;  
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@SuppressWarnings("serial")

public class baomingAction extends ActionSupport implements SessionAware{
	 private Map<String,Object> session;
	 public void setSession(Map<String, Object> session) {
			this.session = session;
		}
	 /*文件所需*/
	private File upload;  
	private String uploadContentType; 
	private String uploadFileName; 
    private String result;
    
	
	 /*文件结束*/
	
	public File getUpload() {
		return upload;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFilename(String uploadFilename, String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	
	private String aname;
	private String asex;
	private String axuehao;
	private String code;
	private String abanji;
	private String abumenmain;
	private String abumen_1;
	private String abumen_2;
	private String apic;
	private String aintroduce; 	
	private String xuehaoinfo;
	private String banjiinfo;
	private String sexinfo;
	private String zhiyuaninfo;
    private String nameinfo;
    private String atouxiang;
    private String codeinfo;
    private String bumenmaininfo;
    private String azhuangtai;
    private String aqq;
    private String atel;
    private String qqinfo;
    private String telinfo;
    
    
    
    public String getAintroduce() {
		return aintroduce;
	}

	public void setAintroduce(String aintroduce) {
		this.aintroduce = aintroduce;
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

	public String getQqinfo() {
		return qqinfo;
	}

	public void setQqinfo(String qqinfo) {
		this.qqinfo = qqinfo;
	}

	public String getTelinfo() {
		return telinfo;
	}

	public void setTelinfo(String telinfo) {
		this.telinfo = telinfo;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getAzhuangtai() {
		return azhuangtai;
	}

	public void setAzhuangtai(String azhuangtai) {
		this.azhuangtai = azhuangtai;
	}

	public String getBumenmaininfo() {
		return bumenmaininfo;
	}

	public void setBumenmaininfo(String bumenmaininfo) {
		this.bumenmaininfo = bumenmaininfo;
	}

	public String getCodeinfo() {
		return codeinfo;
	}

	public void setCodeinfo(String codeinfo) {
		this.codeinfo = codeinfo;
	}

	public String getAtouxiang() {
    	return atouxiang;
    }

    public void setAtouxiang(String atouxiang) {
    	this.atouxiang = atouxiang;
    }
    
	public String getNameinfo() {
		return nameinfo;
	}


	public void setNameinfo(String nameinfo) {
		this.nameinfo = nameinfo;
	}


	public String getAxuehao() {
		return axuehao;
	}


	public void setAxuehao(String axuehao) {
		this.axuehao = axuehao;
	}


	public String getAname() {
		return aname;
	}


	public void setAname(String aname) {
		this.aname = aname;
	}


	public String getAsex() {
		return asex;
	}


	public void setAsex(String asex) {
		this.asex = asex;
	}


	public String getAbanji() {
		return abanji;
	}


	public void setAbanji(String abanji) {
		this.abanji = abanji;
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


	public String getApic() {
		return apic;
	}


	public void setApic(String apic) {
		this.apic = apic;
	}


	


	public String getXuehaoinfo() {
		return xuehaoinfo;
	}


	public void setXuehaoinfo(String xuehaoinfo) {
		this.xuehaoinfo = xuehaoinfo;
	}


	public String getBanjiinfo() {
		return banjiinfo;
	}


	public void setBanjiinfo(String banjiinfo) {
		this.banjiinfo = banjiinfo;
	}


	public String getSexinfo() {
		return sexinfo;
	}


	public void setSexinfo(String sexinfo) {
		this.sexinfo = sexinfo;
	}


	public String getZhiyuaninfo() {
		return zhiyuaninfo;
	}

	public void setZhiyuaninfo(String zhiyuaninfo) {
		this.zhiyuaninfo = zhiyuaninfo;
	}
	public static baomingDao bd;	
	public void setBd(baomingDao bd) {
		baomingAction.bd = bd;
	}
		
	public String getCode() {     
	    return code;     
	}     
	public void setCode(String code) {     
		this.code = code;     
	} 
     
   public String execute()
   { 
	   
	   return SUCCESS;	   
   }
   @SuppressWarnings("unused")
   public String yanzheng() throws IOException
   {	
	   
	   String sessionCode=(String)(ActionContext.getContext().getSession().get("sessionCode"));
	   String path=ServletActionContext.getServletContext().getRealPath("/images");
	   renyuanBean rb=new renyuanBean();
	   renyuanBean rb_2=new renyuanBean();
       rb.setXuehao(axuehao);
	   rb.setName(aname);
	   rb.setBanji(abanji);
	   rb.setBumenmain(abumenmain);
	   rb.setBumen_1(abumen_1);
	   rb.setBumen_2(abumen_2);
	   
	   rb.setSex(asex);
	   rb.setQq(aqq);
	   rb.setTel(atel);
	   azhuangtai="0";
	   rb.setZhuangtai(azhuangtai);
	   rb.setIntroduce(aintroduce);
	   System.out.println("textarea"+aintroduce);
	   if(aname==""||aname==null)
	   {
		  nameinfo="姓名不能为空";   
		   return "baomingerror";
	   }
	   
	   System.out.println("smg1");
	   if(abanji==""||abanji==null)
	   {
		   banjiinfo="班级名不能为空";
		   return "baomingerror";
	   }
	   System.out.println("smg2");
	   if(asex==""||asex==null)
	   {
		   sexinfo="确定不详？";
		   return "baomingerror";
	   }
	   System.out.println("smg3");
	   if(abumenmain=="null"||asex==null)
	   {
		   bumenmaininfo="部门未选择";
		   return "baomingerror";
	   }
	   System.out.println("smg4");
	   if(aqq==""||aqq==null)
	   {
		   qqinfo="没录qq或者微信";
		   return "baomingerror";
	   }
	   System.out.println("smg5");
	   if(atel==""||atel==null)
	   {
		   telinfo="没留电话";
		   return "baomingerror";
	   }
	   System.out.println("smg6");
	   if(!sessionCode.equals(this.getCode())) {
		   codeinfo="验证码错误";   
		   return "baomingerror";     
       }
	   System.out.println("smg7");
	   System.out.println("001");
	   try {
		rb_2=(renyuanBean) bd.cunzai(rb);
	    } catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	   }
	 
	   if(rb_2!=null)
	   {
		   this.session.put("baoming", rb_2);
		   return "cunzai";
	   }

	   /*File f=new File(new File(path),this.getUploadFileName());
	   if(!f.getParentFile().exists())
	   {
		  f.mkdir();
	   }
	   System.out.println("dao1");
	   FileUtils.copyFile(upload,f);
	   result="success";*/
	   rb.setTouxiang(uploadFileName);
	   String uuid = UUID.randomUUID().toString();
	   rb.setBaomingid(uuid);
	   try {
			  bd.baoming(rb);
		   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   }
		
       return "bmsuccess";            	   
   }
   
   public String cunzai()
   {
	   HttpServletRequest request = ServletActionContext.getRequest();
		 HttpSession session = request.getSession();
		 renyuanBean srb = (renyuanBean)session.getAttribute("USER");
		 if(srb==null)
			 return "tiaozhuanerror";
		 renyuanBean rb_3=new renyuanBean();
		 try {
			rb_3=(renyuanBean) bd.cunzai(rb_3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		aname=rb_3.getName();
		asex=rb_3.getSex();
	    axuehao=rb_3.getXuehao();
		atel=rb_3.getTel();
		
	   return "yicunzai";
   }
}