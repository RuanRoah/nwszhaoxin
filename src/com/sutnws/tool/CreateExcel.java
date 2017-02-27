package com.sutnws.tool;
import java.io.File;
import java.io.IOException;

import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.format.UnderlineStyle;
import jxl.write.Label;
import jxl.write.NumberFormats;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

public class CreateExcel {
	 private final static CreateExcel create = new CreateExcel();

	 public static CreateExcel getInstance() {
	  return create;
	 }

	 public CreateExcel() {
	 }
	
	 public boolean createTable(String header, String[] body, String filePath) {
		  boolean createFlag = true;
		  WritableWorkbook book;
		  try {
		   // ����·������excel�ļ�
		   book = Workbook.createWorkbook(new File(filePath));
		    
		   // ����һ��sheet��Ϊ"���"
		   WritableSheet sheet = book.createSheet("���", 0);
		   // ����NO�п��
		   sheet.setColumnView(1, 5);
		   // ȥ������sheet�е�������
		   sheet.getSettings().setShowGridLines(false);
		   Label tempLabel = null;
		   // ��ͷ���
		   String[] headerArr = header.split(",");
		   int headerLen = headerArr.length;
		   // ѭ��д���ͷ����
		   for (int i = 0; i < headerLen; i++) {
		    tempLabel = new Label(1 + i, 1, headerArr[i],
		      getHeaderCellStyle());
		    sheet.addCell(tempLabel);
		   }
		   // �������
		   int bodyLen = body.length;
		   // ѭ��д���������
		   for (int j = 0; j < bodyLen; j++) {
		    String[] bodyTempArr = body[j].split(",");
		    for (int k = 0; k < bodyTempArr.length; k++) {
			     WritableCellFormat tempCellFormat = null;
			     tempCellFormat = getBodyCellStyle();
			     if (tempCellFormat != null) {
			      if (k == 0 || k == (bodyTempArr.length - 1)) {
			       tempCellFormat.setAlignment(Alignment.CENTRE);
			      }
			     }
		     tempLabel = new Label(1 + k, 2 + j, bodyTempArr[k],
		       tempCellFormat);
		     sheet.addCell(tempLabel);
		    }
		   }
		   book.write();
		   book.close();
		  } catch (IOException e) {
		   createFlag = false;
		   System.out.println("EXCEL����ʧ�ܣ�");
		   e.printStackTrace();
		  } catch (RowsExceededException e) {
		   createFlag = false;
		   System.out.println("EXCEL��Ԫ���ô���ʧ�ܣ�");
		   e.printStackTrace();
		  } catch (WriteException e) {
		   createFlag = false;
		   System.out.println("EXCELд��ʧ�ܣ�");
		   e.printStackTrace();
		  }
		
		  return createFlag;
	 }
	
	 public WritableCellFormat getHeaderCellStyle() {
	  WritableFont font = new WritableFont(WritableFont.createFont("����"), 10,
	    WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE);
	  WritableCellFormat headerFormat = new WritableCellFormat(
	    NumberFormats.TEXT);
	  try {
	   // �����������
	   headerFormat.setFont(font);
	   // ���õ�Ԫ�񱳾�ɫ����ͷΪ��ɫ
	   headerFormat.setBackground(Colour.YELLOW);
	   // ���ñ�ͷ���߿���ʽ
	   // ���������Ϊ���ߡ���ɫ
	   headerFormat.setBorder(Border.ALL, BorderLineStyle.THICK,
	     Colour.BLACK);
	   // ��ͷ����ˮƽ������ʾ
	   headerFormat.setAlignment(Alignment.CENTRE);
	  } catch (WriteException e) {
	   System.out.println("��ͷ��Ԫ����ʽ����ʧ�ܣ�");
	  }
	  return headerFormat;
	 }
	
	 public WritableCellFormat getBodyCellStyle() {
	  WritableFont font = new WritableFont(WritableFont.createFont("����"), 10,
	    WritableFont.NO_BOLD, false, UnderlineStyle.NO_UNDERLINE);
	  WritableCellFormat bodyFormat = new WritableCellFormat(font);
	  try {
	   // ���õ�Ԫ�񱳾�ɫ������Ϊ��ɫ
	   bodyFormat.setBackground(Colour.WHITE);
	   // ���ñ�ͷ���߿���ʽ
	   // ���������Ϊϸ�ߡ���ɫ
	   bodyFormat
	     .setBorder(Border.ALL, BorderLineStyle.THIN, Colour.BLACK);
	  } catch (WriteException e) {
	   System.out.println("���嵥Ԫ����ʽ����ʧ�ܣ�");
	  }
	  return bodyFormat;
	 }
	 
	 

	 /*
	  * 
	  * ���Ǳ��ʾ��
	  * 
	  * String header = "NO,����,�Ա�,�༶";
	   String[] body = new String[4];
	   body[0] = "1,����,��,�о���";
	   body[1] = "2,Ǯ��,��,��1404";
	   body[2] = "3,���,��,���1501";
	   body[3] = "4,��ƽ,��,��1304";
	   String filePath = "d:/demo.xls";
	   CreateExcel testJxl = CreateExcel.getInstance();
	   boolean flag = testJxl.createTable(header, body, filePath);
	 *
	 *
	 *
	 */
	 
	 
	 
}
