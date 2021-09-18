<%-- 
    Document   : gioHang
    Created on : Sep 17, 2021, 11:33:44 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div id="bg-tour" class="text-white">
    <div class="container mr-auto ml-auto">
        <h1 class="text-center">Giỏ hàng</h1>
        <table class="table text-white">
            <tr>
                <th>Mã sản phẩm</th>
                <th>tên sản phẩm</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
            </tr>
            <c:forEach var="c" items="${gioHangs}">
                <tr>
                    <td>${c.tourId}</td>
                    <td>${c.tenTour}</td>
                    <td>${c.gia}VND</td>
                    <td>${c.soLuong}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>