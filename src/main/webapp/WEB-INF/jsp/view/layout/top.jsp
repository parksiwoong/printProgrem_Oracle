<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="static/css/bottom.css">
        <link rel="stylesheet" href="static/css/index.css">
        <link rel="stylesheet" href="static/css/mapapp.css">
        <link rel="stylesheet" href="static/css/login.css">
        <link rel="stylesheet" href="static/css/list.css">
       <%-- <script type="text/javascript" src="scroll_menu.js"></script>--%>
       <%-- <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap">--%>
        <title>POLO</title>
    </head>
<body>
    <header>
        <link rel="stylesheet" href="">
        <nav class="clearfix">
            <div class="left">
                <p>위치:</p>
                <select><option>KOREA 한국어</option></select>
            </div>
            <div class="logo">
                <a href="/polo">
                    <img src="static/img/logo.webp" alt="">
                </a>
            </div>
            <div class="right" style="margin: 10px 0; ">
                <a href="/login"> <input class="button" type="button" value="l o g i n"></a>
                <a href="/register"> <input class="button" type="button" value="Sign Up"></a>
            </div>
        </nav>
        <div class="inb">
            <a href="/polo"><span>promotion</span> </a>
            <a href="/list/"><span>store</span></a>
            <a href="/kakaomap"><span>location</span> </a>
            <a href="/board?id=qna"><span> QNA </span> </a>
            <span></span>
        </div>
        <script type="text/javascript">
            let dir = window.location.pathname.split('/')[1].split('?')[0];
            let menus = window.document.body.querySelectorAll('.inb > a');
            switch (dir) {
                case 'list':
                    menus[1].classList.add('on');
                    break;
                case 'kakaomap':
                    menus[2].classList.add('on');
                    break;
                case 'board':
                    menus[3].classList.add('on');
                    break;
                default:
                    menus[0].classList.add('on');
            }
        </script>
    </header>



