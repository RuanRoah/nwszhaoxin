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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">数据统计</strong> / <small>你想看的都在这</small></div>
      </div>
      <ul class="am-avg-sm-1 am-avg-md-3 am-margin am-padding am-text-center admin-content-list ">
        <li><a href="#" class="am-text-success"><span class="am-icon-btn am-icon-file-text"></span><br/>技术部<br/><s:property value="js_2"/></a></li>
        <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>影音部<br/><s:property value="yy_2"/></a></li>
        <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>宣传部<br/><s:property value="xc_2"/></a></li>
      </ul>      
      <ul class="am-avg-sm-1 am-avg-md-3 am-margin am-padding am-text-center admin-content-list ">
        <li><a href="#" class="am-text-success"><span class="am-icon-btn am-icon-file-text"></span><br/>策划部<br/><s:property value="ch_2"/></a></li>
        <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>采编部<br/><s:property value="cb_2"/></a></li>
        <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>外事部<br/><s:property value="ws_2"/></a></li>
      </ul>      
      <div class="am-g">
        <div class="am-u-md-6">
          <div class="am-panel am-panel-default">
            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-1'}">分布统计<span class="am-icon-chevron-down am-fr" ></span></div>
            <div class="am-panel-bd am-collapse am-in" id="collapse-panel-1">
                <div id="main" style="width: 300px;height:400px;margin-left: auto;
margin-right: auto;"></div>
         <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
         var myChart = echarts.init(document.getElementById('main'));
         option = {
		    /*title: {
		        text: '基础雷达图'
		    },*/
		    tooltip: {},
		    legend: {
		        data: ['报名总数', '实际录取']
		    },
		    radar: {
		        // shape: 'circle',
		        indicator: [
		           { name: '技术部', max: 100},
		           { name: '影音部', max: 100},
		           { name: '宣传部', max: 100},
		           { name: '采编部', max: 100},
		           { name: '策划部', max: 100},
		           { name: '外事部', max: 100}
		           
		        ]
		    },
		    series: [{
		        name: '人数统计',
		        type: 'radar',
		        // areaStyle: {normal: {}},
		        data : [
		            {
		                value : [<s:property value="js_2"/>, <s:property value="yy_2"/>, <s:property value="xc_2"/>, <s:property value="cb_2"/>, <s:property value="ch_2"/>, <s:property value="ws_2"/>],
		                name : '报名总数'
		            },
		             {
		                value : [<s:property value="js_0"/>, <s:property value="yy_0"/>, <s:property value="xc_2"/>, <s:property value="cb_2"/>, <s:property value="ch_2"/>, <s:property value="ws_2"/>],
		                name : '实际录取'
		            }
		        ]
		    }]
		};
          myChart.setOption(option);
         </script>
                
            </div>
          </div>
          
          <div class="am-panel am-panel-default">
            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-2'}">分配比例<span class="am-icon-chevron-down am-fr" ></span></div>
            <div id="collapse-panel-2" class="am-in">
             <div id="fenpei" style="width: 300px;height:200px;margin-left: auto;
margin-right: auto;"></div>  
               <script type="text/javascript">
                var myChart = echarts.init(document.getElementById('fenpei'));
                option = {
			    series : [
			        {
			            name: '部门比例',
			            type: 'pie',
			            radius: '55%',
			            roseType: 'angle',
			            data:[
			                {value:235, name:'<s:property value="js_0"/>'},
			                {value:274, name:'<s:property value="yy_0"/>'},
			                {value:310, name:'<s:property value="xc_0"/>'},
			                {value:335, name:'<s:property value="cb_0"/>'},
			                {value:335, name:'<s:property value="ch_0"/>'},
			                {value:400, name:'<s:property value="ws_0"/>'}
			            ]
			        }
			    ]
			};
             myChart.setOption(option);  
               </script>
               
            </div>
          </div>
        </div>
        <div class="am-u-md-6">
          <div class="am-panel am-panel-default">
            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-4'}">男女校区比例<span class="am-icon-chevron-down am-fr" ></span></div>
            <div id="collapse-panel-4" class="am-panel-bd am-collapse am-in">
               <div id="nannv" style="width: 300px;height:200px;margin-left: auto;
margin-right: auto;"></div>
              <!-- <div id="xiaoqu" style="width: 300px;height:200px;"></div>               -->
               <script type="text/javascript">
		        // 基于准备好的dom，初始化echarts实例
		         var myChart = echarts.init(document.getElementById('nannv'));
		         option = {
					    title : {
					        text: '男女比例',
					        subtext: '男女比例？',
					        x:'center'
					    },
					    tooltip : {
					        trigger: 'item',
					        formatter: "{a} <br/>{b} : {c} ({d}%)"
					    },
					    legend: {
					        orient: 'vertical',
					        left: 'left',
					        data: ['男','女']
					    },
					    series : [
					        {
					            name: '访问来源',
					            type: 'pie',
					            radius : '55%',
					            center: ['50%', '60%'],
					            data:[
					
					                {value:<s:property value="girlnum"/>, name:'女'},
					                {value:<s:property value="boynum"/>, name:'男'}
					            ],
					            itemStyle: {
					                emphasis: {
					                    shadowBlur: 10,
					                    shadowOffsetX: 0,
					                    shadowColor: 'rgba(0, 0, 0, 0.5)'
					                }
					            }
					        }
					    ]
					};
		          myChart.setOption(option);
         		</script>
               
            </div>
          </div>

          <div class="am-panel am-panel-default">
            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}">日期热度<span class="am-icon-chevron-down am-fr" ></span></div>
            <div class="am-panel-bd am-collapse am-in am-cf" id="collapse-panel-3">
               <div id="datehot" style="width: 300px;height:400px;margin-left: auto;
margin-right: auto;"></div>
               <script type="text/javascript">
               	var myChart = echarts.init(document.getElementById('datehot'));
               	

				option = {
				    color: ['#3398DB'],
				    tooltip : {
				        trigger: 'axis',
				        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				        }
				    },
				    grid: {
				        left: '3%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				    xAxis : [
				        {
				            type : 'category',
				            data : ['第一天', '第二天', '第三天', '第四天', '第五天', '第六天'],
				            axisTick: {
				                alignWithLabel: true
				            }
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'最后录取人数',
				            type:'bar',
				            barWidth: '60%',
				            data:[70, 52, 60, 70, 30, 50]
				        }
				    ]
				};
               myChart.setOption(option);
               </script>
               
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="admin-content-footer">
      <hr>
      <p class="am-padding-left">© 2016 SUTNWS. 版权所有.</p>
    </footer>
  </div>
  <!-- content end -->
</div>
<[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="js/amazeui.ie8polyfill.min.js"></script>
<![endif]>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<script src="js/amazeui.min.js"></script>
<script src="js/app.js"></script>
<script src="js/echarts.min.js"></script>
</body>
</html>