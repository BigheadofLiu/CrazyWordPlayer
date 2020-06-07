<%--
  Created by IntelliJ IDEA.
  User: 87131
  Date: 2019/12/21
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎你来到打字练习</title>

    <link href="css/style.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

</head>
<body>

<div class="lvc-wrap" id="lvc-nav">
    <ul class="lvc-nav">
        <li class="nav-pic1 next-layer" title="键盘练习">
            <a>键盘练习</a>
            <ol>
                <li onclick="
                TurnKey01()">指法练习</li>
                <li onclick="
                TurnKey02()">键位练习</li>
            </ol>
        </li>
        <li class="nav-pic2 next-layer" title="文章练习">
            <a>文章练习</a>
            <ol>
                <li onclick="
                TurnDown03()">中文练习</li>
                <li>英文练习</li>
            </ol>
        </li>
        <li class="nav-pic3" title="盲打练习">
            <a onclick="
            TurnDown04()">盲打练习</a>
        </li>
        <li class="nav-pic4 next-layer" title="打字小游戏">
            <a>打字小游戏</a>
            <ol>
                <li onclick="
                TurnGame1()">小游戏1</li>
                <li onclick="
                TurnGame02()" >小游戏2</li>
            </ol>
        </li>
        <li class="nav-pic5" title="打字速度测试" onclick="
        TurnDown02()"><a>打字速度测试</a></li>

        <li class="nav-pic12 next-layer " title="个人中心">
            <a>个人中心</a><ol>
            <li onclick="TurnOut()">退出登录</li>
            <li>密码更改</li>
        </ol></li>
    </ul>
    <button type="button" class="btn-nav"></button>
</div>

<script type="text/javascript">
    function TurnGame1() {
        alert("请活动好双手，即将进入游戏1")
        window.location.href='Game/Game01/Game01.html';
    }
    function TurnOut() {
        alert("即将退出")
        window.location.href='Login.jsp';
    }
    function TurnKey01() {
        window.location.href='KeyDown/KeyDown01_1/KeyDown01_1.html';
    }
    function TurnKey02() {
        window.location.href='KeyDown/KeyDown01_2/KeyDown01_2.html';
    }
    function TurnGame02() {
        alert("做好准备了吗？游戏即将开始！")
        window.location.href='Game/Game02/Game02.html';
    }
    function TurnDown02() {
        window.location.href='KeyDown/KeyDown02/KeyDown02.html';
    }
    function TurnDown04() {
        window.location.href='KeyDown/KeyDown04/KeyDown04.html';
    }
    function TurnDown03() {
        window.location.href='KeyDown/KeyDown03/KeyDown03.html';
    }
    $(document).ready(function(){
        //展开收起
        $(".btn-nav").click(function () {
            $(".lvc-wrap").toggleClass("lvc-close")
            $("ol").toggleClass("small-ol")
            $(".next-layer ol").hide()

            if($("#lvc-nav").hasClass('lvc-close')){
                $(".next-layer ").removeClass("arrow")
            }
        })

        //选中状态
        $(".lvc-nav li").click(function () {
            $(this).siblings().find('ol').hide()
            $(this).addClass("active").siblings().removeClass("active")
        })

        //选中子集清除父级active
        $("ol>li").click(function (e) {
            console.log('ol>li clicked')
            e.stopPropagation()
            $(this).parent().parent().removeClass("active")
        })

        //二级导航展开收起
        $(".next-layer").click(function () {
            $(this).children("ol").toggle();
            $(this).toggleClass("arrow").siblings().removeClass("arrow")
        })


        $("ol li").click(function () {
            if($("ol").hasClass('small-ol')) {
                $(".small-ol").hide();
                $(this).parent().parent().addClass("active")
            }
        })
    })
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>
</body>
</html>