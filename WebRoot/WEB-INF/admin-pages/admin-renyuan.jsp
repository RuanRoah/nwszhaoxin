<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s"  uri="/struts-tags" %>
<!doctype html>
<html class="no-js fixed-layout">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/echarts.js"></script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，本系统暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->
    <!-- content start -->
        <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">欢迎管理员</strong> / <small>这里是所有的新生信息</small><input type="hidden" value="<s:property value="ausername"/>"></div>
            </div>
            <div class="am-g">
                <div class="am-u-md-12">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}"><input type="hidden" value="<s:property value="ausername"/>"><span class="am-icon-chevron-down am-fr" ></span></div>
                        <div class="am-u-sm-12">
                            <table class="am-table am-table-bd am-table-striped admin-content-table">
                                <thead>
                                <tr>
                                    <th>ID</th><th>学号</th><th>姓名</th><th>详情操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int i=0;%>
                                <s:iterator value="rl" var="sb">
                                
                                <tr>                                
                                <td><%=++i%></td><td><s:property value="#sb.xuehao"/></td><td><s:property value="#sb.name"/></td>
                                    <td>
                                        <div class="am-dropdown" data-am-dropdown>
                                           <a href="#" data-toggle="modal" data-target="#myModal<s:property value="#sb.xuehao"/>" >
											  查看详情
											</a>											
											<!-- Modal -->
											<div class="modal fade" id="myModal<s:property value="#sb.xuehao"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">人员详情</h4>
											      </div>
											      <div class="modal-body">
											      <form action="adminupdate.roah" method="post" onsubmit="return sure()">
											         <h4>电话:<s:property value="#sb.tel"/></h4><br>
											         <input type="hidden" value="<s:property value="#sb.tel"/>" name="atel">
											                                学号:
											         <input type="text" class="form-control" name="axuehao" value="<s:property value="#sb.xuehao"/>">
											         
											         <br>姓名:
											         <input type="text" class="form-control" name="aname" value="<s:property value="#sb.name"/>">
											         
						                             <br>班级 :
						                             <input type="text" class="form-control" name="abanji" value="<s:property value="#sb.banji"/>">
						                             
						                             <br> 性别:
						                             <input type="text" class="form-control" name="asex" value="<s:property value="#sb.sex"/>">
						                              						                             						                                                 
						                             <br>主志愿 :
						                             
						                              <select class="form-control" name="abumenmain">		                                                    
		                                                    <option value="<s:property value="#sb.bumenmain"/>">原部门：<s:property value="#sb.bumenmain"/></option>
		                                                    <option value="jishubu">技术部</option>
		                                                    <option value="yingyinbu">影音部</option>
		                                                    <option value="xuanchuanbu">宣传部</option>
		                                                    <option value="caibianbu">采编部</option>
		                                                    <option value="cehuabu">策划部</option>
		                                                    <option value="waishibu">外事部</option>
		                                              </select>
						                             
						                             <br> 分志愿:
						                              <select class="form-control" name="abumen_1">		                                                    
		                                                    <option value="<s:property value="#sb.bumen_1"/>">原部门：<s:property value="#sb.bumen_1"/></option>
		                                                    <option value="jishubu">技术部</option>
		                                                    <option value="yingyinbu">影音部</option>
		                                                    <option value="xuanchuanbu">宣传部</option>
		                                                    <option value="caibianbu">采编部</option>
		                                                    <option value="cehuabu">策划部</option>
		                                                    <option value="waishibu">外事部</option>
		                                              </select>
						                             
						                             <br>
						                              <select class="form-control" id="bumen_2" name="abumen_2">		                                                    
		                                                    <option value="<s:property value="#sb.bumen_2"/>">原部门：<s:property value="#sb.bumen_2"/></option>
		                                                    <option value="jishubu">技术部</option>
		                                                    <option value="yingyinbu">影音部</option>
		                                                    <option value="xuanchuanbu">宣传部</option>
		                                                    <option value="caibianbu">采编部</option>
		                                                    <option value="cehuabu">策划部</option>
		                                                    <option value="waishibu">外事部</option>
		                                              </select>
						                             
						                             
						         					 <br>QQ:
						         					 <input type="text" class="form-control" name="aqq" value="<s:property value="#sb.qq"/>">
						         					 
						                             <br>自我介绍:<br>
						                             <s:property value="#sb.introduce"/>
						                             <br>
						                                                                                                     更改录取状态:<br>
						                             <select name="azhuangtai" class="form-control">
														  <option value="0">待定</option>
														  <option value="1">已录取</option>
														  <option value="2">未录取</option>
													 </select>
						                             <br>面试官评价:<br>
						                             <s:property value="#sb.pingjiamain"/>
						                             <br>
						                             <br>面试官评价_1:<br>
						                             <s:property value="#sb.pingjia_1"/>
						                             <br>
						                             <br>面试官评价_2:<br>
						                             <s:property value="#sb.pingjia_2"/>
						                             <br>
						                           <div class="modal-footer">
											        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
											        <button type="submit" class="btn btn-primary">保存数据</button>
											      </div>
						                           </form>                                                                                      
											      </div>  
											    </div>
											  </div>
											</div>                                           
                                          </div>
                                    </td>                                   
                                 </tr>                                  
                                 </s:iterator>             
                                </tbody>
                            </table>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    	function sure()
    	{
    	   if(window.confirm('你确定更改状态了吗？')){
                 //alert("确定");
                 return true;
              }else{
                 //alert("取消");
                 return false;
             } 	
    	}    	
    </script>
    <!-- content end -->
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<%-- <script src="js/amazeui.min.js"></script> --%>
<script src="js/bootstrap.min.js"></script>
<script src="js/app.js"></script>
<script src="js/echarts.min.js"></script>
</body>
</html>