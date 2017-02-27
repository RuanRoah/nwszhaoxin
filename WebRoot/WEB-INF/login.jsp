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
		    日期：2016/7/27
		    作业：注册
		    好吧。
    -->
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <style>
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
    </style>
</head>
<body>
    <div class="header">
        <div class="am-g">
            <h1>Login</h1>
            <p>Login By Roah<br/>作者：Roah</p>
        </div>
        <hr>
    </div>
    <div class="am-g">
    <div class="am-u-lg-8 am-u-md-10 am-u-sm-centered">
        <hr>
        <!--
        <div class="am-btn-group">
            <a href="#" class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-github am-icon-sm"></i> Github</a>
            <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-google-plus-square am-icon-sm"></i> Google+</a>
            <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-stack-overflow am-icon-sm"></i> stackOverflow</a>
        </div>
        -->
        <br>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-1'}">登录 Login<span class="am-icon-chevron-down am-fr" ></span></div>
            <div id="collapse-panel-1" class="am-panel-bd am-collapse am-in">
                <form action="loginyanzheng.roah" id="biaodan" method="post" class="am-form">
                    <label>用户名</label>
                    <input type="email" name="ausername" id="email" onblur="usrname()">
                    <br>
                    <div id="yzusername"></div>
                    <label for="passwd">密码:</label>
                    <input type="password" name="apasswd" id="passwd" onblur="passwds()">
                    <div id="yzpasswd"></div>
                    <div id="error">
                      <p style="color:red;">${errorinfo}</p>
                    </div>
                    <hr>
                    <div class="am-cf">
                        <button type="button"  onclick="doaction()" class="am-btn am-btn-primary am-btn-sm am-fl">登录</button>
                        <button type="button"  class="am-btn am-btn-default am-btn-sm am-fr">取消</button>
                    </div>
                </form>
            </div>
        </div>        
        <hr>
        <p>© 2014 Roah. Licensed under SUT license.</p>
    </div>
</div>
    <script type="text/javascript">
    function usrname(){
        if(document.getElementById("email").value!="")
        {
            document.getElementById("yzusername").innerHTML="";
            return true;
        }
        else
            document.getElementById("yzusername").innerHTML="<font color='red'>用户名不能为空</font>";
            return false;
    }
    function passwds(){
        if(document.getElementById("passwd").value!="")
        {
            document.getElementById("yzpasswd").innerHTML="";
            return true;
        }
        else
            document.getElementById("yzpasswd").innerHTML="<font color='red'>密码不能为空</font>";
        return false;
	    }	    
	function doaction()
	    {
        if(usrname()&&passwds())
        {         
                alert("前端验证通过");
                document.getElementById("biaodan").submit();
        }
        else
        alert("未满足条件。");
    }
    </script>
    <script src="js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>