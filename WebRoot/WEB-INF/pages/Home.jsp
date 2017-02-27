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
    <title>欢迎来到NWS招新管理系统</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，本系统暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>欢迎来到NWS招新管理系统</strong><%--  <small>您是<s:property value="arole"/> --%></small>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">        
            <li class="am-dropdown" data-am-dropdown>
                <%-- <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    <span class="am-icon-users"></span>查找<span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">                    
                    <li>                    
                    <form action="bumenchazhao.roah" id="search" method="post" target="frame_page" onsubmit="return chazhao()">
			            <p><input type="text" name="atel" id="inputxuehao" class="am-form-field am-round" placeholder="输入一个电话"/></p>
                        <br><button class="am-btn am-btn-primary" type="submit">提交</button>
                    </form>
                    </li>                    
                </ul> --%>
             <li>            
            <a href="#"><span class="am-icon-first-order"></span><s:property value="arolename"/></a>
            </li>
            <li>            
            <a href="#"><span class="am-icon-power-off"></span> 退出</a>
            </li>
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
        </ul>        
    </div>
</header>
<div class="am-cf admin-main">
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <ul class="am-list admin-sidebar-list">
                <li><a href="homeonepage.roah" target="frame_page"><span class="am-icon-home"></span> 首页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                     <s:iterator value="rl" var="sa">
                     <s:if test="#sa.role==arole">                           
                         <li><a href="<s:property value="#sa.href"/>" target="frame_page"><s:property value="#sa.name"/></a></li>                     
                     </s:if>
                     </s:iterator>
                    </ul>
                </li>
            </ul>
            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-bookmark"></span> 公告</p>
                    <p>欢迎使用本系统！</p>
                </div>
            </div>
        </div>
    </div>
    <!-- sidebar end -->
    <div class="admin-content">       
       <iframe style="width: 100%;height: 99%;margin:0;padding:0;" frameborder="0" scrolling="auto" id="frame_page" name="frame_page" src="homeonepage.roah"></iframe>
</div>
</div>
<script type="text/javascript">

</script>
<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<script src="js/amazeui.min.js"></script>
<script src="js/app.js"></script>
</body>
</html>