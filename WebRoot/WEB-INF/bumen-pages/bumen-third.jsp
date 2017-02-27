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
    <title>Roah Admin</title>
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
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">第三志愿</strong> / <small>第三志愿如下</small><input type="hidden" value="<s:property value="ausername"/>"></div>
            </div>
            <div class="am-g">
                <div class="am-u-md-12">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}"><input type="hidden" value="<s:property value="ausername"/>"><span class="am-icon-chevron-down am-fr" ></span></div>
                        <div class="am-u-sm-12">
                            <table class="am-table am-table-bd am-table-striped admin-content-table">
                                <thead>
                                <tr>
                                    <th>ID</th><th>电话</th><th>姓名</th><th>所报部门</th><th>详情操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int i=0;%>
                                <s:iterator value="rl" var="sb">
                                <s:if test="#sb.bumen_2==ausername">
                                <s:if test="#sb.zhuangtai==0">
                                <tr>
                                
                                <td><%=++i%></td><td><s:property value="#sb.xuehao"/></td><td><s:property value="#sb.name"/></td><td><s:property value="arolename"/></td>
                                    <td>
                                        <div class="am-dropdown" data-am-dropdown>
                                           <a href="#" data-toggle="modal" data-target="#myModal<s:property value="#sb.tel"/>" >
											  查看详情
											</a>
											
											<!-- Modal -->
											<div class="modal fade" id="myModal<s:property value="#sb.tel"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
											      </div>
											      <div class="modal-body">
											         <form action="bumenpingjia_2.roah" method="post" onsubmit="return sure()">
											         <input type="hidden" name="atel" value="<s:property value="#sb.tel"/>">                      
											                               学号：<s:property value="#sb.xuehao"/>
											         
											         <br>姓名：<s:property value="#sb.name"/>
						                             <br>班级 ：<s:property value="#sb.banji"/>
						                             <br> 性别：<s:property value="#sb.sex"/>                     
						                             <br> 分志愿1:<s:property value="#sb.bumen_1"/>
													 
													 <br>分志愿2：<s:property value="#sb.bumen_2"/>
													 <br>评价1:<s:property value="#sb.pingjia_1"/>
													 <br>评价2:<s:property value="#sb.pingjia_2"/>
						                             <br> 电话：<s:property value="#sb.tel"/>
						         					 <br>QQ：<s:property value="#sb.qq"/>
						                             <br>自我介绍：<s:property value="#sb.introduce"/>
						                           
						                             <br>面试官评价<br>
						                             <textarea class="form-control" rows="3" name="apingjia"><s:property value="#sb.pingjia_2"/></textarea>
						                            <div class="modal-footer">
											        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
											        <button type="submit" class="btn btn-primary">保存信息</button>
											      </div>
						                           </form>                                                                              
											      </div>
											     
											    </div>
											  </div>
											</div>
                                           
                                            
                                                
                                                
                                          </div>
                                    </td>
                                   
                                    
                                </tr>   
                                 </s:if>
                                   </s:if> 
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
    	   if(window.confirm('您确定吗？')){
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