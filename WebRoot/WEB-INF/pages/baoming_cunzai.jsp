<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s"  uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head lang="en">
      <!--
	    作者：Roah
	    日期：2016/7/20
	    作业：注册
	    好吧。
    -->
      <meta charset="UTF-8">
      <title>用户已存在</title>
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="format-detection" content="telephone=no">
      <meta name="renderer" content="webkit">
      <meta http-equiv="Cache-Control" content="no-siteapp" />
      <link rel="stylesheet" href="./css/amazeui.min.css" />
      <style>
      body{
            /*background-color: green;*/
            background: url(1111.jpg) no-repeat;
            background-size: 100% 100%;
      }
            .header {
                  text-align: center;
            }

            .header h1 {
                  font-size: 200%;
                  color: #333;
                  margin-top: 30px;
            }

            .header p {
                  font-size: 14px;
            }
            .am-panel {
                  background: rgba(255, 255, 255, 0);
                  color: #fff;
            }
      </style>
</head>

<body>
      <div class="header">
            <div class="am-g" >
                  <h1 style="color:#fff">用户已存在</h1>

            </div>

      </div>
      <div class="am-g">
            <div class="am-u-lg-8 am-u-md-10 am-u-sm-centered">

                  <!--
        <div class="am-btn-group">
            <a href="#" class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-github am-icon-sm"></i> Github</a>
            <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-google-plus-square am-icon-sm"></i> Google+</a>
            <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-stack-overflow am-icon-sm"></i> stackOverflow</a>
        </div>
        -->
                  <br>
                  <div class="am-panel am-panel-default background:rgba(247, 249, 240, 0) !important;">

                  <div id="collapse-panel-1" class="am-panel-bd am-collapse am-in">
                  <h2>
                	     学号<s:property value="axuehao"/>
                  </h2>
                  <br>     
                  <h2>
                	     姓名<s:property value="aname"/>
                  </h2>
                  <br>
                  <h4>
                	请咨询相关工作人员
                	<s:property value="axuehao"/>
                  </h4>
                  </div>
                  </div>
                  <br><br>
                  
            </div>
      </div>

      <script src="./js/jquery.min.js"></script>
      <!--<![endif]-->
      <script src="./js/amazeui.min.js"></script>
      <script src="./js/app.js"></script>
</body>

</html>
