<%-- 
    Document   : quanLyNguoiDung
    Created on : Sep 25, 2021, 6:39:25 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="bg-quan-ly" class="text-white">
    <div class="container">
        <h1 class="text-center text-black">Quản lý người dùng</h1>
        <table class="table text-white">
            <tr class="text-center">
                <th>Người dùng</th>
                <th>Tài khoản người dùng</th>
                <th>Số điện thoại</th>
                <th>Vai trò</th>
                <th></th>
            </tr>
            <c:forEach var="nguoiDung" items="${dsNguoiDung}">
                <tr class="text-center">
                    <c:if test="${nguoiDung.anh != null && nguoiDung.vaiTro.startsWith('http') == true}">
                        <td>
                            <img class="img-fluid rounded-circle" src="<c:url value="${nguoiDung.anh}"/>" alt="${nguoiDung.taiKhoan}"/>
                            ${nguoiDung.ho} ${nguoiDung.ten}
                        </td>
                    </c:if>
                    <c:if test="${nguoiDung.anh == null || nguoiDung.vaiTro.startsWith('http') == false}">
                        <td>
                            <img class="img-fluid rounded-circle" src="<c:url value="/images/21.jpg"/>" alt="${nguoiDung.taiKhoan}"/>
                            ${nguoiDung.ho} ${nguoiDung.ten}
                        </td>
                    </c:if>
                    <td>${nguoiDung.taiKhoan}</td>
                    <td>${nguoiDung.sdt}</td>
                    <c:if test="${nguoiDung.vaiTro != null && nguoiDung.vaiTro.startsWith('ROLE_A') == true}">
                        <td>Admin</td>
                    </c:if>
                    <c:if test="${nguoiDung.vaiTro != null && nguoiDung.vaiTro.startsWith('ROLE_U') == true}">
                        <td>Người dùng</td>
                    </c:if>
                    <c:if test="${nguoiDung.vaiTro != null && nguoiDung.vaiTro.startsWith('ROLE_M') == true}">
                        <td>Nhân viên</td>
                    </c:if>
                    <td>
                        <input type="button" value="Xóa" class="btn btn-danger"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

