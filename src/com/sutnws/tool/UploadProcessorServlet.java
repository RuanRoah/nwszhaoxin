package com.sutnws.tool;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadProcessorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String PATH_FOLDER = "/";
	private static String TEMP_FOLDER = "/";

	/**
	 * Constructor of the object.
	 */
	public UploadProcessorServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	private FileItem getUploadFileItem(List<FileItem> list) {
		for (FileItem fileItem : list) {
			if(!fileItem.isFormField()) {
				return fileItem;
			}
		}
		return null;
	}
	
	private String getUploadFileName(FileItem item) {
		String value = item.getName();
		int start = value.lastIndexOf("\\");
		String filename = value.substring(start + 1);
		return filename;
	}
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("��������dopost");
		request.setCharacterEncoding("utf-8"); // ���ñ���
		((ServletRequest) response).setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		// ��ô����ļ���Ŀ����
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		// ���û�����������õĻ����ϴ�����ļ���ռ�úܶ��ڴ棬
		// ������ʱ��ŵĴ洢�� ,����洢��,���Ժ����մ洢�ļ���Ŀ¼��ͬ
		/**
		 * ԭ�� �����ȴ浽 ��ʱ�洢�ң�Ȼ��������д�� ��ӦĿ¼��Ӳ���ϣ� ������˵ ���ϴ�һ���ļ�ʱ����ʵ���ϴ������ݣ���һ������ .tmp
		 * ��ʽ�� Ȼ���ٽ�������д�� ��ӦĿ¼��Ӳ����
		 */
		factory.setRepository(new File(TEMP_FOLDER));
		// ���� ����Ĵ�С�����ϴ��ļ������������û���ʱ��ֱ�ӷŵ� ��ʱ�洢��
		factory.setSizeThreshold(1024 * 1024);

		// ��ˮƽ��API�ļ��ϴ�����
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		try {
			// �ύ��������Ϣ�������list����
			// ����ζ�ſ����ϴ�����ļ�
			// ��������֯����
			List<FileItem> list = upload.parseRequest(request);
			// ��ȡ�ϴ����ļ�
			FileItem item = getUploadFileItem(list);
			// ��ȡ�ļ���
			String filename = getUploadFileName(item);

			System.out.println("���Ŀ¼:" + PATH_FOLDER);
			System.out.println("�ļ���:" + filename);

			// ����д��������
			item.write(new File(PATH_FOLDER, filename)); // �������ṩ��
                                // �����Ϣ,ǰ��ҳ���ȡ,�����õ�json��ʽ			
 			PrintWriter writer = response.getWriter();
			
			writer.print("{");
			writer.print("msg:\"�ļ���С:"+item.getSize()+",�ļ���:"+filename+"\"");
			writer.print("}");
			
			writer.close();
		
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init(ServletConfig config) throws ServletException {
		// Put your code here
		System.out.println("��������init");
		ServletContext servletCtx = config.getServletContext();
		System.out.println(servletCtx);
		// ��ʼ��·��
		// �����ļ���Ŀ¼
		
		PATH_FOLDER = servletCtx.getRealPath("/upload");
		System.out.println(PATH_FOLDER);
		// �����ʱ�ļ���Ŀ¼,���xxx.tmp�ļ���Ŀ¼
		TEMP_FOLDER = servletCtx.getRealPath("/uploadTemp");
		System.out.println(TEMP_FOLDER);
	}

}
