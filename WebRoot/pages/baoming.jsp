<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <!--
		    作者：Roah
		    日期：2016/9/4
    -->
    <meta charset="UTF-8">
    <title>新生报名</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="./css/amazeui.min.css"/>
    <link rel="stylesheet" href="./css/fubutton.css"/>
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <script type="text/javascript" src="./js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="./js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="./js/ajaxfileupload.js"></script>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/amazeui.min.js"></script>
    <script src="./js/app.js"></script>
     
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
            <h1>新生报名</h1>
            <p>校团委网络管理中心<br/>新生报名</p>
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
            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-1'}"> 报名<span class="am-icon-chevron-down am-fr" ></span></div>
            <div id="collapse-panel-1" class="am-panel-bd am-collapse am-in">
                <form action="baomingyanzheng.roah" id="biaodan" method="post" class="am-form" onsubmit="return doaction()">
                 <!-- onsubmit="return doaction()" -->
                    <label>
                         <font color='white'>学号</font>
                    </label>
                    <input type="text" name="axuehao" id="xuehao" onblur="yzxuehao()">
                    <div id="yanzhengxuehao">
                       <font color='red'>${xuehaoinfo}</font>
                    </div>
                    <br>
                    <label for="class">
                        <font color='white'>姓名:</font>
                    </label>
                    <input type="text" id="nicheng" name="aname" id="nicheng"  class="am-u-sm-12" onblur="nichengs()">
                    <div id="yanzhengnicheng" class="am-padding">
                       <font color='red'>${nameinfo}</font>
                    </div>
                    <br>
                    <div></div>
                    <label for="class"><font color='white'>班级:</font></label>
                    <input type="text" id="banji" name="abanji"  class="am-u-sm-12" onblur="yzbanji()">
                    <div id="yanzhengbanji">
                        <font color='red'>${banjiinfo}</font>
                    </div>
                    
                    <label for="class"><font color='white'>QQ:</font></label>
                    <input type="text" id="qq" name="aqq"  class="am-u-sm-12" onblur="yzqq()">
                    <div id="yanzhengqq">
                        <font color='red'>${qqinfo}</font>
                    </div>
                    
                    
                    <label for="class"><font color='white'>电话:</font></label>
                    <input type="text" id="tel" name="atel"  class="am-u-sm-12" onblur="yztel()">
                    <div id="yanzhengtel">
                        <font color='red'>${telinfo}</font>
                    </div>
                    
                    
                    <div class="am-form-group am-form-select">
                        <label>
                                                                                         性别
                            <select id="select1" name="asex">
                                <option value="weizhi">未知</option>
                                <option value="male">男</option>
                                <option value="female">女</option>
                            </select>
                        </label>
                        <div class="yanzhengsex">
                          <font color='red'>${sexinfo}</font>
                        </div>
                    </div>
                    <br>                    
                                
                                
                       <div class="am-form-group">
			      <label for="class"><font color='white'>主志愿:</font></label>
			      <select id="doc-select-1" name="abumenmain" id="bumenmain">
			                  <option value="null">未选择</option>
                              <option value="jishubu">技术部</option>
                              <option value="yingyinbu">影音部</option>
                              <option value="xuanchuanbu">宣传部</option>
                              <option value="caibianbu">采编部</option>
                              <option value="cehuabu">策划部</option>
                              <option value="waishibu">外事部</option>
				      </select>
				      <span class="am-form-caret"></span>
				    </div>
                       <font color='red'>${bumenmaininfo}</font>
                    <div id="yanzhengbumen">
                        <font color='red'>${banjiinfo}</font>
                    </div>                    
                    <div class="am-form-group am-form-select">
                        <label>
                             <font color='white'>分志愿:</font>
                        </label>     
                            <select id="doc-select-1" name="azhiyuan_1">
                                <option value="">不选择</option>
                                <option value="male">技术部</option>
                                <option value="male">影音部</option>
                                <option value="female">宣传部</option>
                                <option value="male">采编部</option>
                                <option value="male">策划部</option>
                                <option value="female">外事部</option>
                            </select>                            
                        
                        <label>
                        </label>                                                                                                  
                            <select id="select1" name="azhiyuan_2">
                                <option value="null">不选择</option>
                                <option value="jishubu">技术部</option>
                                <option value="yingyinbu">影音部</option>
                                <option value="xuanchuanbu">宣传部</option>
                                <option value="caibianbu">采编部</option>
                                <option value="cehuabu">策划部</option>
                                <option value="waishibu">外事部</option>
                            </select>                            
                                                
                    </div>                    
					<!-- <label>
                                                                                照片(选填)
                    </label>	
                     -->
					<!-- div class="am-form-group am-form-file">
					 <div style="line-height:100px;text-align:center;border: 1px solid #000000;width: 180px;height: 180px;">
					<img id="loading" src="img/loading.gif" onload="AutoResizeImage(180,180,this)" style="border:0;display: none;"  >
					width:50px;height:50px;display: none;
					</div>
					<input type="file" id="fileToUpload" name="fileToUpload"
					style="width: 200px;" class="input" onchange="uploadimg()"/>
					<br>
					</div>										
					<input type="hidden" id="piclujing">            -->  
                    <div class="am-form-group">                    
                    <label for="class">                                                            
                          <font color="white">  验证码(必填)</font>
                    </label>
                       <img src="yanzhengma.roah"  onclick="changeValidateCode(this)" title="点击图片刷新验证码"/>  
                       <input type="text" name="code" id="yanzhengma" onblur="yzyanzhengma()" class="am-u-sm-12">
                                        
                    </div>    
                    <div id="yzyzm">
                     <font color='red'>  ${codeinfo} </font>
                    </div>      
                    <label for="class">
                        <font color="white">自我介绍(必填)</font>
                    </label>                    
		            <textarea id="introduce" name="aintroduce" style="margin-top: 0px; margin-bottom: 0px; height: 113px;" placeholder="自我介绍" onblur="yzintroduce()"></textarea>
                    <div id="yanzhengintroduce">                        
                    </div>                    
                    <hr>                                        
                    <div class="am-cf">
                        <button type="submit"  class="am-btn am-btn-primary am-btn-sm am-fl">确认报名</button>
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
       
	 function yzbanji(){
            if(document.getElementById("banji").value!="")
            {
                document.getElementById("yanzhengbanji").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengbanji").innerHTML="<font color='red'>班级不能为空</font>";
                return false;
        }
        
        function yzxuehao(){
        	
            
            var xuehao=document.getElementById("xuehao").value; 
        	if(document.getElementById("xuehao").value!="")
            {
                document.getElementById("yanzhengxuehao").innerHTML="";
                return true;
            }
              
              
              
            else
                document.getElementById("yanzhengxuehao").innerHTML="<font color='red'>学号不能为空</font>";
                
            return false;
        }
        
        function yzsex()
        {
            if(document.getElementById("sex").value!="")
            {
                document.getElementById("yanzhengsex").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengsex").innerHTML="<font color='red'>您确定性别不详？</font>";
                return false;
        }
        
        function yzbumenmain()
        {
        if(document.getElementById("bumenmain").value!="")
            {
                document.getElementById("yanzhengbumen").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengbumen").innerHTML="<font color='red'>用户名不能为空</font>";
                return false;
        }
        
        function nichengs()
        {
            if(document.getElementById("nicheng").value!="")
            {
                document.getElementById("yanzhengnicheng").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengnicheng").innerHTML="<font color='red'>姓名不能为空</font>";
            return false;
        }
        
        
        function yzyanzhengma()
        {
            if(document.getElementById("yanzhengma").value!="")
            {
                document.getElementById("yzyzm").innerHTML="";
                return true;
            }
            else
                document.getElementById("yzyzm").innerHTML="<font color='red'>学号不能为空</font>";
                
            return false;
        }
        function yzintroduce()
        {
            if(document.getElementById("introduce").value!="")
            {
                document.getElementById("yanzhengintroduce").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengintroduce").innerHTML="<font color='red'>自我介绍不能为空</font>";                
            return false;
        }
        function yzqq()
        {
            if(document.getElementById("qq").value!="")
            {
                document.getElementById("yanzhengqq").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengqq").innerHTML="<font color='red'>QQ不能为空</font>";                
            return false;           
        }
        function yztel()
        {
            if(document.getElementById("tel").value!="")
            {
                document.getElementById("yanzhengtel").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengtel").innerHTML="<font color='red'>电话不能为空</font>";                
            return false;
        }
        function doaction()
        {
            if(yzxuehao()&&yzbanji()&&nichengs()&&yzxuehao()&&yzbumenmain()&&yzyanzhengma())
            {
               alert("前端验证通过");
                return true;         
               alert("没提交");
            }
            else
            alert("条件不满足");
            return false;
        }
      </script>
</body>
</html>