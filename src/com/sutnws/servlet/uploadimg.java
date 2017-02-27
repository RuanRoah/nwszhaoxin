package com.sutnws.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
/*import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;*/
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.alibaba.fastjson.JSONObject;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
public class uploadimg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().println("ppppppppppppppppppp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request);
		request.setCharacterEncoding("utf-8"); // 设置编码
		((ServletRequest) response).setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		//需要返回的fileName
		String fileName = null;
		
		//参考资料  http://commons.apache.org/proper/commons-fileupload/using.html
		// Check that we have a file upload request
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		System.out.println(isMultipart);
		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Configure a repository (to ensure a secure temp location is used)
		ServletContext servletContext = this.getServletConfig().getServletContext();
		File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//Date dt=new Date();//如果不需要格式,可直接用dt,dt就是当前系统时间
		//DateFormat df = new SimpleDateFormat("yyyy-MM-ddHH:mm:ss");//设置显示格式
		//String nowTime="";
		//nowTime= df.format(dt);//用DateFormat的format()方法在dt中获取并以yyyy/MM/dd HH:mm:ss格式显示
		//System.out.println(nowTime);
		// Parse the request
		try {
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item : items) {
				//其他参数
				String type = item.getContentType();
				if(type == null) {
//					System.out.println(item.getString(item.getFieldName()));
					continue;
				}
				
				//文件参数
				fileName = item.getName();
				if (fileName=="")
                {
					response.reset();                                                                            
					response.setContentType("text/html;charset=utf-8");
					PrintWriter pw = response.getWriter();
					pw.print("<script>alert('请你选择图片');</script>");
					pw.flush();
					pw.close();
					return;
                }
				String extension = FilenameUtils.getExtension(fileName);
				if (!extension.equals("gif") && !extension.equals("jpg") && !extension.equals("png") && !extension.equals("bmp"))
                {
					response.reset();                                                                            
					response.setContentType("text/html;charset=utf-8");
					PrintWriter pw = response.getWriter();
					pw.print("<script>alert('你上传的文件格式不正确！上传格式有(.gif、.jpg、.png、.bmp)');</script>");
					pw.flush();
					pw.close();
					return;
                }
				if (item.getSize() > 5048576)//5048576
                {
					response.reset();                                                                            
					response.setContentType("text/html;charset=utf-8");
					PrintWriter pw = response.getWriter();
					pw.print("<script>alert('你上传的文件不能大于5M!请重新上传！');</script>");
					pw.flush();
					pw.close();
					return;
                }
				fileName = UUID.randomUUID().toString()+"."+extension;
				//设置保存文件路径
				String realPath = getServletContext().getRealPath("/images");
				File dir = new File(realPath);
				File f = new File(dir, fileName);
				
				if(f.exists()) {
					f.delete();
				}
				f.createNewFile();
				
				//保存
				item.write(f);
				
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//返回结果
		JSONObject obj = new JSONObject();
		obj.put("fileName", fileName);
		response.getWriter().print(obj.toJSONString());
	}

}

