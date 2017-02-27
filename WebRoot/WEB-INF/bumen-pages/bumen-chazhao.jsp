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
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">查找人员</strong> / <small>就是你</small><input type="hidden" value="<s:property value="ausername"/>"></div>
            </div>
            <div class="am-g">
                <div class="am-u-md-12">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}"><input type="hidden" value="<s:property value="ausername"/>"><span class="am-icon-chevron-down am-fr" ></span></div>
                        <div class="am-u-sm-12">
                            <table class="am-table am-table-bd am-table-striped admin-content-table">
                                <thead>
                                <tr>
                                    <th>ID</th><th>学号</th><th>姓名</th><th>所报部门</th><th>详情操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                
                                <tr>
                                
                                <td>1</td><td><s:property value="axuehao"/></td><td><s:property value="aname"/></td><td><s:property value="arolename"/></td>
                                    <td>
                                        <div class="am-dropdown" data-am-dropdown>
                                           <a href="#" data-toggle="modal" data-target="#myModal<s:property value="atel"/>" >
											  查看详情
											</a>
											
											<!-- Modal -->
											<div class="modal fade" id="myModal<s:property value="atel"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">详情信息</h4>
											      </div>
											      <div class="modal-body">
											      
											                               学号：<s:property value="axuehao"/>
											         <input type="hidden" value="<s:property value="ausername"/>"/>
												      <input type="hidden" value="<s:property value="abumenmain"/>"/>
												      <input type="hidden" value="<s:property value="abumen_1"/>"/>
												      <input type="hidden" value="<s:property value="abumen_2"/>"/>
											         <br>姓名：<s:property value="aname"/>
						                             <br>班级 ：<s:property value="abanji"/>
						                             <br> 性别：<s:property value="asex"/>                     
						                             <br>主志愿 :<s:property value="abumenmain"/>
						                             <br> 分志愿：<s:property value="abumen_1"/>,<s:property value="#sb.bumen_2"/>
						                             <br> 电话：<s:property value="atel"/>
						         					 <br>QQ：<s:property value="aqq"/>
						                             <br>自我介绍：<s:property value="aintroduce"/>
						                             <s:if test="ausername==abumenmain">
						                                <form action="bumenqueding.roah" method="post" onsubmit="return sure()">
						                                   <input type="hidden"/>
						                                </form>
						                             </s:if>
						                             <s:if test="ausername==abumen_1">
						                             <s:if test="abumenmain!=abumen_1">
						                                 1
						                                 <form action="bumenpj_1.roah" method="post" onsubmit="return sure()">
						                                  <input type="hidden" name="atel" value="<s:property value="#sb.tel"/>">
						                                  <select name="azhuangtai" class="form-control">
														  <option value="1">已录取</option>
														  <option value="2">未录取</option>
													 	  </select>
													 	  <br>面试官评价<br>
						                                  <textarea class="form-control" rows="3" name="apingjia"></textarea>
						                                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						                                 </form>
						                             </s:if>
						                             </s:if>
						                             <s:if test="ausername==abumen_2">
			                                             <s:if test="abumen_2!=abumenmain">
			                                             2			                                
						                                 <form action="bumenpj_2.roah" method="post" onsubmit="return sure()">
						                                    <input type="hidden" name="atel" value="<s:property value="#sb.tel"/>">
						                                     
								                             <br>面试官评价<br>
								                             <textarea class="form-control" rows="3" name="apingjia"></textarea>
						                                     <button type="button" class="btn btn-default">提交</button>
						                                 </form>
						                                 </s:if>
						                             </s:if>                                                                       
											      </div>
											      
											        
											        
											      </div>
											    </div>
											  </div>
											</div>
                                           
                                          </div>
                                    </td>
                                   
                                    
                                </tr>   
                                           
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                </div>
                
                
                            
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
    	
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