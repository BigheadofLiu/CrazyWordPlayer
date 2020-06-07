<%--
  Created by IntelliJ IDEA.
  User: 87131
  Date: 2019/12/15
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>

    <link rel="stylesheet" type="text/css" href="css/detailsmusic.css" />

</head>
<body>

<div class="music-lgin">

    <div class="music-lgin-all">
        <!--左手-->
        <div class="music-lgin-left ovhd">
            <div class="music-hand">
                <div class="music-lgin-hara"></div>
                <div class="music-lgin-hars"></div>
            </div>
        </div>

        <!--脑袋-->
        <div class="music-lgin-dh">
            <div class="music-lgin-alls">
                <div class="music-lgin-eyeleft">
                    <div class="music-left-eyeball yeball-l"></div>
                </div>
                <div class="music-lgin-eyeright">
                    <div class="music-right-eyeball yeball-r"></div>
                </div>
                <div class="music-lgin-cl"></div>
            </div>
            <!--鼻子-->
            <div class="music-nose"></div>
            <!--嘴-->
            <div class="music-mouth music-mouth-ds"></div>
            <!--肩-->
            <div class="music-shoulder-l">
                <div class="music-shoulder"></div>
            </div>
            <div class="music-shoulder-r">
                <div class="music-shoulder"></div>
            </div>
            <!--消息框-->
            <div class="music-news">来了,老弟！</div>
        </div>

        <!--右手-->
        <div class="music-lgin-right ovhd">
            <div class="music-hand">
                <div class="music-lgin-hara"></div>
                <div class="music-lgin-hars"></div>
            </div>
        </div>
    </div>
    <div><h2 align="center"><font color="#7fffd4" face="微软雅黑" >注册</font></h2>
    </div>

    <!--1-->
    <div class="music-lgin-text">
        <input class="inputname inputs" type="text" placeholder="用户名" >
    </div>
    <!--2-->
    <div class="music-lgin-text">
        <input type="password" class="mima inputs" placeholder="密码" />
    </div>
    <!--3-->
    <div class="music-lgin-text">
        <input type="password" class="mima1 inputs" placeholder="请再次输入密码" />
    </div>
    <div class="music-lgin-text">
        <div class="music-lgin-button">
            <input class="music-qd button" type="button" value="确定" /></div>
        <div class="music-lgin-button">
            <input class="button" onclick="TurntoLogin()" type="button" value="去登录" />
        </div>
    </div>

</div>

<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    function TurntoLogin() {
        window.location.href='Login.jsp';
    }
    //眼睛 密码部分
    $(".mima").focus(function() {
        $(".music-lgin-left").addClass("left-dh").removeClass("rmleft-dh");
        $(".music-lgin-right").addClass("right-dh").removeClass("right-rmdh");
        $(".music-hand").addClass("no");
    }).blur(function() {
        $(".music-lgin-left").removeClass("left-dh").addClass("rmleft-dh");
        $(".music-lgin-right").removeClass("right-dh").addClass("right-rmdh");
        $(".music-hand").removeClass("no");

    })
    //点击小人出来
    $(".inputname").focus(function() {
        $(".music-lgin-all").addClass("block");
        $(".music-news").addClass("no")
    })
    //点击小人消失

    //          $(".music-qd").focus(function(){
    //          	$(".music-lgin-all").removeClass("block")
    //          })


    //注册正则 简单判断

    $('.music-qd').click(function(){
        if(($('.inputname').val()=='')){
            $(".music-news").html("用户名，老弟！")
        }else if(($('.mima').val()=='')){
            $(".music-news").html("密码，老弟！")
            $(".music-news").addClass("block")
        }else if (($('.mima1').val()=='')){
            $(".music-news").html("两遍密码，老弟！")
            $(".music-news").addClass("block")
        }else if ($('.mima1').val()!==$('.mima').val()){
            $(".music-news").html("两次密码不一致，老弟！")
            $(".music-news").addClass("block")
        }else{
            $(".music-news").html("大公告成，老弟！")
            $(".music-news").addClass("block")
            alert("大公告成！老弟，即将跳转到登录界面");
            window.location.href='Login.jsp';
        }
    })




</script>

</body>
</html>
