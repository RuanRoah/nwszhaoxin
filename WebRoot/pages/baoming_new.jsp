<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
      <link rel="stylesheet" href="./css/amazeui.min.css" />
      <link rel="stylesheet" href="./css/fubutton.css" />
      <link rel="stylesheet" href="./css/bootstrap.min.css" />
      <style>
            
		      body{
		            /*background-color: green;*/
		            background: url("./hkh.jpg") no-repeat 80% center;
		            background-size:cover;
		      }
		      .am-g .am-panel{
		            background: rgba(255, 255, 255, 0) !important;
		            /* box-shadow: 0px 0px 30px #333; */
		            border:0px !important;
		            border-radius: 3px;
		            margin-top:-12vh;
		      }
              .header {
                    text-align: center;
              }

             .header h1 {
                   font-size: 200%;
                   color: #fff;
                   padding-top:10vh !important;
                 	font-family:arial !important;
             }

            .header p {
                  font-size: 14px;
            }
            input {
            box-shadow:0 0 0 !important;
                  border: 0px !important;
                  border-bottom: 1px solid #fff !important;
                  color: #fff !important;
                  font-weight: bold !important;
                  font-size: 14px !important;
                  margin-bottom: 10px !important;
                  background: rgba(248, 250, 247, 0) !important;
            }
            select{
                  border: 0px !important;
                  border-bottom: 1px solid #fff !important;
                  width: 85.3vw ;
                  color: #fff !important;
                  font-weight: bold !important;
                  font-size: 14px !important;
                  background: rgba(248, 250, 247, 0) !important;
            }
            .img{
                  margin-top: -20px;

            }
      </style>
</head>
<body>
      <div class="header">
            <div class="am-g"style="height:200px;">
            	<h1>
            	   工大网管欢迎加入
            	</h1>
            </div>
      </div>
      <div class="am-g">
            <div class="am-u-lg-8 am-u-md-10 am-u-sm-centered ">

                  <div class="am-panel am-panel-default">

                        <div id="collapse-panel-1" class="am-panel-bd am-collapse am-in">
                              <form method="post" id="biaodan" class="am-form" action="baomingyanzheng.roah" onsubmit="return doaction()">
                                     <label for="class">
				                         <font color='white'>学号</font>
				                    </label>
                                    <input class="input" type="text" name="axuehao" id="xuehao" onblur="yzxuehao()"  onfocus="javascript:if(this.value=='学号')this.value='';" placeholder="${xuehaoinfo}"/>
                                    <div id="yanzhengxuehao">
                                       <font color='red'>${xuehaoinfo}</font>
                                    </div>


									<label for="class">
				                        <font color='white'>姓名:</font>
				                    </label>
                                    <input type="text" id="nicheng" name="aname" id="nicheng" class="am-u-sm-12" onblur="nichengs()" onfocus="javascript:if(this.value=='姓名')this.value='';" placeholder="${nameinfo}">
                                    <div id="yanzhengnicheng">
                                         <font color='red'>${nameinfo}</font>
                                    </div>
										
                                    
                                    <label for="class"><font color="white">学院班级:</font></label>
				                    <input type="text" id="banji" name="abanji"  class="am-u-sm-12" onblur="yzbanji()">
				                    <div id="yanzhengbanji">
				                        <font color='red'>${banjiinfo}</font>
				                    </div>
				                    
				                    <label for="class"><font color="white">QQ:</font></label>
				                    <input type="text" id="qq" name="aqq"  class="am-u-sm-12" onblur="yzqq()">
				                    <div id="yanzhengqq">
				                        <font color='red'>${qqinfo}</font>
				                    </div>
				                    
				                    
				                    <label for="class"><font color="white">电话:</font></label>
				                    <input type="text" id="tel" name="atel"  class="am-u-sm-12" onblur="yztel()">
				                    <div id="yanzhengtel">
				                        <font color='red'>${telinfo}</font>
				                    </div>
                                    
                                    <div class="am-form-group am-form-select">

                                          <label>

                                              <select name="asex">
                                                  <option value="male"> 性别</option>
                                                  <option value="male">男</option>
                                                  <option value="female">女</option>
                                              </select>
                                          </label>
                                    </div>


                                    <div class="am-form-group am-form-select">
                                          <label>

                                              <select id="bumenmain" name="abumenmain">
                                                    <option >第一志愿</option>
                                                  <option value="jishubu">技术部</option>
                                                  <option value="yingyinbu">影音部</option>
                                                  <option value="xuanchuanbu">宣传部</option>
                                                   <option value="caibianbu">采编部</option>
                                                  <option value="cehuabu">策划部</option>
                                                  <option value="waishibu">外事部</option>
                                              </select>

                                          </label>
                                    </div>
                                    <div id="yanzhengbumen">
				                        <font color='red'>${bumenmaininfo}</font>
				                    </div>   
                                    
                                    
                                    <div class="am-form-group am-form-select">
                                          <label>

                                              <select id="bumen_1" name="abumen_1">
                                                    <option>调剂部门一(选填)</option>
                                                    <option value="jishubu">技术部</option>
                                                    <option value="yingyinbu">影音部</option>
                                                    <option value="xuanchuanbu">宣传部</option>
                                                    <option value="caibianbu">采编部</option>
                                                    <option value="cehuabu">策划部</option>
                                                    <option value="waishibu">外事部</option>
                                              </select>

                                          </label>
                                          <label>

                                              <select id="bumen_2" name="abumen_2">
                                                    <option >调剂部门二(选填)</option>
                                                    <option value="jishubu">技术部</option>
                                                    <option value="yingyinbu">影音部</option>
                                                    <option value="xuanchuanbu">宣传部</option>
                                                    <option value="caibianbu">采编部</option>
                                                    <option value="cehuabu">策划部</option>
                                                    <option value="waishibu">外事部</option>
                                              </select>

                                          </label>

                                    </div>

                                    <label>

                                    </label>

                                   <!--  <div class="am-form-group am-form-file img">
                                          <button type="button" class="am-btn am-btn-danger am-btn-sm">
					    <i class="am-icon-cloud-upload"></i> 选择要上传的照片</button>
                                          <input id="doc-form-file" type="file" id="fileToUpload" name="fileToUpload" onchange="getPhotoSize(this)">

                                    </div>
                                    <div id="file-list">

                                    </div> -->


<!-- 
                                    <input type="hidden" id="piclujing"> -->
                                    <div class="am-form-group">

                                    <label>
				                       <input type="text" name="code" class="am-u-sm-12"   style="width:50%;">
				                       <img src="yanzhengma.roah"  onclick="changeValidateCode(this)" title="点击图片刷ccc码" style="width:50%;" placeholder="${codeinfo}"/>
				                    </label>
                                    </div>
                                    <label>

                    				</label>
                                    <div>
                                       <font color='red'>${codeinfo}</font>
                                    </div>
                                    <textarea id="introduce"  style="margin-top: -15px; margin-bottom: 0px; height: 113px; background: rgba(248, 250, 247, 0.05) !important;" placeholder="自我介绍"></textarea>
                                    <input type="hidden" id="gettextarea" name="aintroduce">
                                    <div id="yzsex"></div>
                                    <br>

                                    <div class="am-cf">
                                          <button type="submit" class="am-btn am-btn-primary am-btn-sm am-fl">确认报名</button>
                                          <button type="button" class="am-btn am-btn-default am-btn-sm am-fr">取消</button>
                                    </div>
                              </form>
                        </div>
                  </div>
                  <br>
                  <p>© 2014 Roah&&JS. Licensed under SUT license.</p>

            </div>
      </div>
      <script type="text/javascript">
            function changeValidateCode(obj) {
                  var timenow = new Date().getTime();
                  obj.src = "yanzhengma.roah?d=" + timenow;
            }
      </script>
      <script>
            function getPhotoSize(obj) {
                  photoExt = obj.value.substr(obj.value.lastIndexOf(".")).toLowerCase(); //获得文件后缀名
                  if (photoExt != '.jpg') {
                        alert("请上传后缀名为jpg的照片!");
                        return false;
                  }
                  var fileSize = 0;
                  var isIE = /msie/i.test(navigator.userAgent) && !window.opera;
                  if (isIE && !obj.files) {
                        var filePath = obj.value;
                        var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
                        var file = fileSystem.GetFile(filePath);
                        fileSize = file.Size;
                  } else {
                        fileSize = obj.files[0].size;
                  }
                  fileSize = Math.round(fileSize / 1024 * 100) / 100; //单位为KB
                  if (fileSize >= 10) {
                        alert("照片最大尺寸为10KB，请重新上传!");
                        return false;
                  }
            }
      </script>
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
        	
            var check=/^16[0-1][0-9]0[0-6]1?\d[0-5]\d$/;
            var xuehao=document.getElementById("xuehao").value; 
            var yz=xuehao.match(check);
            if(yz==null)
            {
                console.log("xuehaogeshi");           
                document.getElementById("yanzhengxuehao").innerHTML="<font color='red'>请验证学号格式</font>";
                return false;
            }
 
        	if(document.getElementById("xuehao").value!="")
            {
                console.log("xuehaosuccess");
                document.getElementById("yanzhengxuehao").innerHTML="";
                return true;
            }                            
            else
                document.getElementById("yanzhengxuehao").innerHTML="<font color='red'>学号不能为空</font>";                
                console.log("xuehaonull");
            return false;
        }        
        function yzsex()
        {
            if(document.getElementById("sex").value!="")
            {
                console.log("sessuccess");
                document.getElementById("yanzhengsex").innerHTML="";
                return true;
            }
            
            else
            console.log("seerror");
                document.getElementById("yanzhengsex").innerHTML="<font color='red'>您确定性别不详？</font>";
                return false;
        }
        
        function yzbumenmain()
        {
        if(document.getElementById("bumenmain").value!="第一志愿")
            {
                document.getElementById("yanzhengbumen").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengbumen").innerHTML="<font color='red'>第一志愿不能为空</font>";
                return false;
        }
        
        function nichengs()
        {
            if(document.getElementById("nicheng").value!="")
            {
            console.log("namesuccess");
                document.getElementById("yanzhengnicheng").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengnicheng").innerHTML="<font color='red'>姓名不能为空</font>";
            return false;
        }
        
        
 
        function yzintroduce()
        {
            if(document.getElementById("introduce").value!="")
            {
            console.log("insuccess");
                document.getElementById("yanzhengintroduce").innerHTML="";
                return true;
            }
            else
            console.log("inerror");
                document.getElementById("yanzhengintroduce").innerHTML="<font color='red'>自我介绍不能为空</font>";                
            return false;
        }
        function yzqq()
        {
            var check=/^\d{5,10}$/;
            var qq=document.getElementById("qq").value; 
            var yz=qq.match(check);
           	
            if(yz==null)
            {
            console.log("geshierror");
                document.getElementById("yanzhengqq").innerHTML="<font color='red'>请验证QQ格式</font>";
                return false;
            }
            document.getElementById("yanzhengqq").innerHTML="";
            if(document.getElementById("qq").value!="")
            {
            console.log("qqerror");
                document.getElementById("yanzhengqq").innerHTML="";
                return true;
            }
            else
            console.log("qqerror");
                document.getElementById("yanzhengqq").innerHTML="<font color='red'>QQ不能为空</font>";                
            return false;           
        }
        function yztel()
        {
            var check=/^(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;
            var tel=document.getElementById("tel").value; 
            var yz=tel.match(check);
           	
            if(yz==null)
            {
            console.log("telgeshi");
                document.getElementById("yanzhengtel").innerHTML="<font color='red'>请验证电话格式</font>";
                return false;
            }
            document.getElementById("yanzhengtel").innerHTML="";
            if(document.getElementById("tel").value!="")
            {
            
                console.log("telnull");
                document.getElementById("yanzhengtel").innerHTML="";
                return true;
            }
            else
            console.log("telerror");
                document.getElementById("yanzhengtel").innerHTML="<font color='red'>电话不能为空</font>";                
            return false;
        }
        function doaction()
        {
            if(yzbanji()&&nichengs()&&yzbumenmain()&&yzqq()&&yztel())
            {
               var a=document.getElementById("introduce").value;
               document.getElementById("gettextarea").value=a;
              
               console.log("allsuccess");
               return true;
            }
            else
            console.log("error");
            alert("条件不满足");
            return false;
        }
        
      </script>
      <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
      <script type="text/javascript" src="../js/jquery-migrate-1.2.1.min.js"></script>
      <script type="text/javascript" src="../js/ajaxfileupload.js"></script>
      <script src="./js/jquery.min.js"></script>
      <!--<![endif]-->
      <script src="./js/amazeui.min.js"></script>
      <script src="./js/app.js"></script>

      <script type="text/javascript">
            var a=$('#xuehao').css('width');
            $('#select1').css('cssText','width:'+ a + '!important;');
            $('#select2').css('cssText','width:'+ a + '!important;');
            $('#select3').css('cssText','width:'+ a + '!important;');
            $('#select4').css('cssText','width:'+ a + '!important;');
      </script>


</body>
</html>