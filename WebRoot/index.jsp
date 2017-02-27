<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>即将跳转</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/amazeui.min.css">
    <!-- Demo styles -->
    <!-- <style>
    html, body {
        position: relative;
        height: 100%;
    }
    body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color:#000;
        margin: 0;
        padding: 0;
    }
    .swiper-container {
        width: 100%;
        height: 100%;
        background: #000;
    }
    .swiper-slide {
        font-size: 18px;
        color:#fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        padding: 40px 60px;
    }
    .parallax-bg {
        position: absolute;
        left: 0;
        top: 0;
        width: 130%;
        height: 100%;
        -webkit-background-size: cover;
        background-size: cover;
        background-position: center;
    }
    .swiper-slide .title {
        font-size: 41px;
        font-weight: 300;
    }
    .swiper-slide .subtitle {
        font-size: 21px;
    }
    .swiper-slide .text {
        font-size: 14px;
        max-width: 400px;
        line-height: 1.3;
    }
    #demo1
    {
        background:url(img/1.jpg)
    }
    #demo2
    {
        background:url(img/2.jpg)
    }
    #demo3
    {
        background:url(img/3.jpg)
    }
    </style> -->
</head>
<body>
    <!-- Swiper -->
   <!--  <div class="swiper-container">
        <div class="parallax-bg" style="background-image:url(http://lorempixel.com/900/600/nightlife/2/)" data-swiper-parallax="-23%"></div>
        <div class="swiper-wrapper">
            <div id="demo1" class="swiper-slide">
                <div class="title" data-swiper-parallax="-100">对待技术，我们是苛刻的</div>
                <div class="subtitle" data-swiper-parallax="-200">Treatment of technology, we are harsh.</div>
                <div class="text" data-swiper-parallax="-300">
                    <p>这里是一大把介绍1</p>
                </div>
            </div>
            <div id="demo2" class="swiper-slide">
                <div class="title" data-swiper-parallax="-100">对待工作，我们使认真的</div>
                <div class="subtitle" data-swiper-parallax="-200">To work, we make serious.</div>
                <div class="text" data-swiper-parallax="-300">
                    <p>一大堆介绍2</p>
                </div>
            </div>
            <div id="demo3" class="swiper-slide" >
                <div class="title" data-swiper-parallax="-100" style=" width:auto; ">让我们开始吧</div>
                <div class="subtitle" data-swiper-parallax="-200"><a href="login.roah" class="am-btn am-btn-sm get-btn">管理入口</a></div>
                 <div class="subtitle" data-swiper-parallax="-200"><a href="index.roah" class="am-btn am-btn-sm get-btn">报名入口</a></div>
                <div class="text" data-swiper-parallax="-300">
                   
                </div>
            </div>
        </div>
        Add Pagination
        <div class="swiper-pagination swiper-pagination-white"></div>
        Add Navigation
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
    </div> -->

    <!-- Swiper JS -->
    <script src="js/swiper.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        parallax: true,
        speed: 600,
    });
    </script>
    <script type="text/javascript">
		 function ok(){
		    window.parent.parent.location.href='baoming.roah';
		 }
		 window.setTimeout("ok();",1000);
		 function countDown(secs){
		       jump.innerText=secs;
		       if(--secs>0)
		          setTimeout( "countDown(" +secs+ ")" ,1000);
		 }
    countDown(3);
</script>
</body>
</html>