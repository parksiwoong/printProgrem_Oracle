<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file = "../layout/top.jsp" %>
<script>
/* 체크박스에 맞게 리스트 프린트부분 크기에 맞춰
    페이징까지 */
</script>
    <link rel="stylesheet" href="">
    <nav class="clearfix" >
        <ul>
            <li>
                <div class="allCheck">
                    <input type="checkbox" name="allCheck" id="allCheck"/>
                    <label for="allCheck">모두선택</label>
                </div>
                <div>
                    <button type="button" class="selectdelete_btn">선택 삭제</button>
                </div>
            </li>
        </ul>
        <table class="board_view" >
            <caption>PC상세보기</caption>
            <colgroup>
                <col width="15%">
                <col width="35%">
                <col width="15%">
                <col width="*">
            </colgroup>
            <tbody>
            <tr style="font-weight: 900;">
                <th>check</th>
                <th>pcName</th>
                <th>CPU</th>
                <th>MEM</th>
                <th>SSD</th>
                <th>HDD</th>
            </tr>
            </tbody>
                 <c:forEach var="data" items="${datalist}">
                    <tr style=" font-weight: 100; ">
                        <th class="checkBox"><input type="checkbox" name="chBox" id="chBox" class="chBox" data_no="${data.bno}"></th>
                        <th>${data.pcname}</th>
                        <th>${data.cpu }GHz</th>
                        <th>${data.mem}</th>
                        <th>${data.ssd}GB</th>
                        <th>${data.hdd }GB</th>
                        <th><button type="button" class="delete_btn"  data_no="${data.bno}">삭제</button></th>
                    </tr>
                 </c:forEach>
            </tbody>
        </table>
        <div>
            <ul class="page_info" id="page_info">
                <c:if test="${pageMarker.prev}">
                    <li><a href="pclist?page=${pageMarker.startPage - 1}">이전</a></li>
                </c:if>

                <c:forEach begin="${pageMarker.startPage}" end="${pageMarker.endPage}" var="idx">
                    <li <c:out value="${pageMarker.criteria.page == idx ? 'class=active' : ''}"/>>
                        <a href="pclist?page= ${idx}">${idx}</a>
                    </li>
                </c:forEach>
                <c:if test="${pageMarker.next && pageMarker.endPage > 0}">
                    <li><a href="pclist?page=${pageMarker.endPage + 1}">다음</a></li>
                </c:if>
                <%--  <c:if test="${pageMarker.prev}">
                    <li><a href="pclist${pageMarker.makeQuery(pageMarker.startPage - 1)}">이전</a></li>
                </c:if>

                <c:forEach begin="${pageMarker.startPage}" end="${pageMarker.endPage}" var="idx">
                    <li><a href="pclist ${pageMarker.makeQuery(idx)}">${idx}</a></li>
                </c:forEach>

                <c:if test="${pageMarker.next && pageMarker.endPage > 0}">
                    <li><a href="pclist${pageMarker.makeQuery(pageMarker.endPage + 1)}">다음</a></li>
                </c:if>--%>
            </ul>
        </div>
    </nav>


<%@ include file = "../layout/bottom.jsp" %>
