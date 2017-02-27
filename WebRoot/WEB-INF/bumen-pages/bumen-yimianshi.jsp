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
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css">
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
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">已面试人员</strong> / <small>已面试人员管理</small></div>
            </div>
            <div class="am-g">
                <div class="am-u-md-12">
                    <!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
					  <li role="presentation" class="active"><a href="#first" role="tab" data-toggle="tab">主志愿</a></li>
					  <li role="presentation"><a href="#second" role="tab" data-toggle="tab">二志愿</a></li>
					  <li role="presentation"><a href="#third" role="tab" data-toggle="tab">三志愿</a></li>					 
					</ul>					
					<!-- Tab panes -->
					<div class="tab-content">
					  <div role="tabpanel" class="tab-pane active" id="first">
					  	<!-- 这是第一个标签栏 -->
					  	 <table class="am-table am-table-bd am-table-striped admin-content-table">
                                <thead>
                                <tr>
                                    <th>ID</th><th>电话</th><th>姓名</th><th>所报部门</th><th>详情操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int i=0;%>
                                <s:iterator value="rl_1" var="sb_1">
                                <s:if test="#sb_1.bumenmain==ausername">
                                <s:if test="#sb_1.zhuangtai!=1">
                                <tr>                                
                                <td><%=++i%></td><td><s:property value="#sb_1.tel"/></td><td><s:property value="#sb_1.name"/></td><td><s:property value="arolename"/></td>
                                    <td>
                                        <div class="am-dropdown" data-am-dropdown>
                                           <a href="#" data-toggle="modal" data-target="#myModala<s:property value="#sb_1.tel"/>" >
											  查看详情
											</a>											
											<!-- Modal -->
											<div class="modal fade" id="myModala<s:property value="#sb_1.tel"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">人员详情</h4>
											      </div>
											      <div class="modal-body">
											      <form action="bumenqueding.roah" method="post" onsubmit="return sure()">
											         <input type="hidden" name="atel" value="<s:property value="#sb_1.tel"/>">                      
											                               学号：<s:property value="#sb_1.xuehao"/>
											         
											         <br>姓名：<s:property value="#sb_1.name"/>
						                             <br>班级 ：<s:property value="#sb_1.banji"/>
						                             <br> 性别：<s:property value="#sb_1.sex"/> 						                             
						                                                 
						                             <br>主志愿 :<s:property value="#sb_1.bumenmain"/>
						                             <br> 分志愿：<s:property value="#sb_1.bumen_1"/>,<s:property value="#sb_1.bumen_2"/>
						                             <br> 电话：<s:property value="#sb_1.tel"/>
						         					 <br>QQ：<s:property value="#sb_1.qq"/>
						                             <br>自我介绍：<s:property value="#sb_1.introduce"/>
						                            
						                             <select name="azhuangtai" class="form-control">
													      <option value="0">待定</option>
														  <option value="1">已录取(I want you!)</option>
														  <option value="2">未录取(抢人)</option>
													 </select>
													  参考评价1:<s:property value="#sb_1.pingjia_1"/>
													 <br>参考评价2:<s:property value="#sb_1.pingjia_2"/>
													 <br>
						                             <br>面试官评价<br>
						                             <textarea class="form-control" rows="3" name="apingjia"><s:property value="#sb_1.pingjiamain"/></textarea>
						                           <div class="modal-footer">
											        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
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
					  <div role="tabpanel" class="tab-pane" id="second">
					  	<!-- 这是第二个 -->
					  	
					  	
					  	<table class="am-table am-table-bd am-table-striped admin-content-table">
                                <thead>
                                <tr>
                                    <th>ID</th><th>电话</th><th>姓名</th><th>所报部门</th><th>详情操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int j=0;%>
                                <s:iterator value="rl_2" var="sb_2">
                                <s:if test="#sb_2.bumen_1==ausername">
                                <s:if test="#sb_2.zhuangtai!=1">
                                <tr>
                                
                                <td><%=++j%></td><td><s:property value="#sb_2.tel"/></td><td><s:property value="#sb_2.name"/></td><td><s:property value="arolename"/></td>
                                    <td>
                                        <div class="am-dropdown" data-am-dropdown>
                                           <a href="#" data-toggle="modal" data-target="#myModalb<s:property value="#sb_2.tel"/>" >
											  查看详情
											</a>
											
											<!-- Modal -->
											<div class="modal fade" id="myModalb<s:property value="#sb_2.tel"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">人员详情</h4>
											      </div>
											      <div class="modal-body">
											         <form action="bumenpingjia_1.roah" method="post" onsubmit="return sure()">
											         <input type="hidden" name="atel" value="<s:property value="#sb_2.tel"/>">                      
											                               学号:<s:property value="#sb_2.xuehao"/>
											         
											         <br>姓名:<s:property value="#sb_2.name"/>
						                             <br>班级 :<s:property value="#sb_2.banji"/>
						                             <br> 性别:<s:property value="#sb_2.sex"/>
													 
						                             <br>主志愿 :<s:property value="#sb_2.bumenmain"/>
						                             <br> 分志愿1:<s:property value="#sb_2.bumen_1"/>
													 
													 <br>分志愿2：<s:property value="#sb_2.bumen_2"/>
													 <br>评价1:<s:property value="#sb_2.pingjia_1"/>
													 <br>评价2:<s:property value="#sb_2.pingjia_2"/>
						                             <br> 电话:<s:property value="#sb_2.tel"/>
						         					 <br>QQ:<s:property value="#sb_2.qq"/>
						                             <br>自我介绍:<s:property value="#sb_2.introduce"/>
						     
						                             
						                             <br>面试官评价<br>
						                             <textarea class="form-control" rows="3" name="apingjia"><s:property value="#sb_2.pingjia_1"/></textarea>
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
					  <div role="tabpanel" class="tab-pane" id="third">
					  	<!-- 这是第三个标签栏 -->
					  	<table class="am-table am-table-bd am-table-striped admin-content-table">
                                <thead>
                                <tr>
                                    <th>ID</th><th>电话</th><th>姓名</th><th>所报部门</th><th>详情操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int k=0;%>
                                <s:iterator value="rl_3" var="sb_3">
                                <s:if test="#sb_3.bumen_2==ausername">
                                <s:if test="#sb_3.bumen_1==ausername">
                                <tr>
                                
                                <td><%=++k%></td><td><s:property value="#sb_3.xuehao"/></td><td><s:property value="#sb_3.name"/></td><td><s:property value="arolename"/></td>
                                    <td>
                                        <div class="am-dropdown" data-am-dropdown>
                                           <a href="#" data-toggle="modal" data-target="#myModalc<s:property value="#sb_3.tel"/>" >
											  查看详情
											</a>
											
											<!-- Modal -->
											<div class="modal fade" id="myModalc<s:property value="#sb_3.tel"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">人员详情</h4>
											      </div>
											      <div class="modal-body">
											         <form action="bumenpingjia_2.roah" method="post" onsubmit="return sure()">
											         <input type="hidden" name="atel" value="<s:property value="#sb_3.tel"/>">                      
											                               学号：<s:property value="#sb_3.xuehao"/>
											         
											         <br>姓名：<s:property value="#sb_3.name"/>
						                             <br>班级 ：<s:property value="#sb_3.banji"/>
						                             <br> 性别：<s:property value="#sb_3.sex"/>                     
						                             <br> 分志愿1:<s:property value="#sb_3.bumen_1"/>
													 
													 <br>分志愿2：<s:property value="#sb_3.bumen_2"/>
													 <br>评价1:<s:property value="#sb_3.pingjia_1"/>
													 <br>评价2:<s:property value="#sb_3.pingjia_2"/>
						                             <br> 电话：<s:property value="#sb_3.tel"/>
						         					 <br>QQ：<s:property value="#sb_3.qq"/>
						                             <br>自我介绍：<s:property value="#sb_3.introduce"/>
						                           
						                             <br>面试官评价<br>
						                             <textarea class="form-control" rows="3" name="apingjia"><s:property value="#sb_3.introduce"/></textarea>
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
    	function showmodal()
    	{
    	    	
    	}    	
    </script>
    <!-- content end -->
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->

<script src="js/bootstrap.min.js"></script>
<script src="js/app.js"></script>
<script src="js/echarts.min.js"></script>
</body>
</html>