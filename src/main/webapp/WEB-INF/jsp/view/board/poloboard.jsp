<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file = "../layout/top.jsp" %>
<script>
    funtion

    function boardlist() {

    }

    data(boardlist){
        $.ajax({
            url:'board/poloboard.jsp',
            contentType:"application/x-www-form-urlencoded; charset=UTF-8",
            dataType:'json',
            data: "boardlist" + boardlist,
            type:"POST",
            success:list(jqXHR)
        });
    };

    funtion list(){

    }

</script>
    <link rel="stylesheet" href="">
    <nav class="clearfix" >
        <div class="left">
            <p>위치:</p>
            <select>
                <option>KOREA 한국어</option></select>
         </div>
        <div class="logo"><a href="/polo"><img src="/img/logo.webp" alt=""></a>
        </div>
        <table class="board_view">
            <caption>상세보기</caption>
            <colgroup>
                <col width="15%">
                <col width="35%">
                <col width="15%">
                <col width="*">
            </colgroup>
            <tbody>
            <c:forEach var="board" items="${boardlist}">
                <tr>
                    <th>제목</th>
                    <td>${board.bbsSn}</td>
                    <th>조회수</th>
                    <td>${board.bbsTt }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </nav>
</header>

<%@ include file = "../layout/bottom.jsp" %>
