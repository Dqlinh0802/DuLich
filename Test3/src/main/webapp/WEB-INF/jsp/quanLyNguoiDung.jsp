<%-- 
    Document   : quanLyNguoiDung
    Created on : Sep 25, 2021, 6:39:25 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div id="bg-quan-ly" class="text-white">
    <div class="container">
        <h1 class="text-center text-black">Quản lý người dùng</h1>
        <form class="form-inline d-flex justify-content-end mb-3" action="">
            <input class="form-control mr-sm-2" name="taiKhoan" type="search" placeholder="Nhập tên tài khoản..." aria-label="Search">
            <input type="submit" class="btn btn-info" value="Search" />
        </form>
        <table class="table text-white">
            <tr class="text-center">
                <th>Người dùng</th>
                <th>Tài khoản người dùng</th>
                <th>Số điện thoại</th>
                <th>Vai trò</th>
                    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_MANAGE')">
                    <th></th>
                    </sec:authorize>
            </tr>
            <c:forEach var="nguoiDung" items="${dsNguoiDung}">
                <tr class="text-center">
                    <c:if test="${nguoiDung.anh != null && nguoiDung.anh.startsWith('https') == true}">
                        <td>
                            <img class="img-fluid rounded-circle " src="<c:url value="${nguoiDung.anh}"/>" alt="${nguoiDung.taiKhoan}"/>
                            <div class="ten-nguoi-dung">
                                ${nguoiDung.ho} ${nguoiDung.ten}
                            </div>
                        </td>
                    </c:if>
                    <c:if test="${nguoiDung.anh == null || nguoiDung.anh.startsWith('https') == false}">
                        <td>
                            <img class="img-fluid rounded-circle" src="<c:url value="/images/21.jpg"/>" alt="${nguoiDung.taiKhoan}"/>
                            <div class="ten-nguoi-dung">
                                ${nguoiDung.ho} ${nguoiDung.ten}
                            </div>
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
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <td>
                            <input type="button" value="Xóa" class="btn btn-danger"/>
                            <input type="button" value="Sửa" class="btn btn-success"/>
                        </td>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_MANAGE')">
                        <c:if test="${nguoiDung.vaiTro != null && nguoiDung.vaiTro.startsWith('ROLE_U') == true}">
                            <td>
                                <input type="button" value="Xóa" class="btn btn-danger"/>
                                <input type="button" value="Sửa" class="btn btn-success"/>
                            </td>
                        </c:if>
                        <c:if test="${nguoiDung.vaiTro != null && nguoiDung.vaiTro.startsWith('ROLE_U') != true}">
                            <td>
                                <div class="alert alert-danger mb-0">Bạn không có quyền</div>
                            </td>
                        </c:if>
                    </sec:authorize>
                </tr>
            </c:forEach>
        </table>
        <div class="d-flex justify-content-between page">
            <div> 6 - trong tổng ${slNguoiDung} mục</div>
            <ul class="pagination">
                <c:forEach begin="1" end="${Math.ceil(slNguoiDung/6)}" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/nhanVien/nguoiDungs" />?page=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
