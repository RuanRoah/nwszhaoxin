<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="application/vnd.ms-excel; charset=utf-8" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>goto Excel</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
     <table>
         <thead>
         <tr>
             <th>ID</th><th>学号</th><th>姓名</th><th>所报部门</th><th>电话</th><th>QQ</th>
         </tr>
         </thead>
         <tbody>
         <% int i=0;%>
         <s:iterator value="rl" var="sb">
         <s:if test="#sb.bumenmain==ausername">
         <s:if test="#sb.zhuangtai==1">
         <tr>
         
         <td><%=++i%></td><td><s:property value="#sb.xuehao"/></td><td><s:property value="#sb.name"/></td><td><s:property value="arolename"/></td>
             <td>
               <s:property value="#sb.tel"/>
             </td>
             <td>
               <s:property value="#sb.qq"/>
             </td>
         </tr>   
          </s:if>
            </s:if> 
          </s:iterator>             
         </tbody>
     </table>
  </body>
</html>
