<%-- 
    Document   : header
    Created on : Sep 7, 2021, 1:25:04 AM
    Author     : Acer
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-expand-lg d-flex justify-content-between container pt-1 pb-1 bgcolor fixed-top">
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ">
            <li class="nav-item mr-5">
                <a class="navbar-brand" href="<c:url value="/" />">
                    <img class="rounded-circle" src="<c:url value="/images/logo.png"/>" alt="Logo" style="width:50px;">
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/"/>">Trang chủ</a>
            </li>
            <sec:authorize access="hasAnyRole('ROLE_MANAGE', 'ROLE_ADMIN')">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/nhanVien/nguoiDungs"/>">Quản lý</a>
                </li>
            </sec:authorize>
            <sec:authorize access="hasAnyRole('ROLE_MANAGE', 'ROLE_ADMIN')">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/nhanVien/tours"/>">Thêm tour</a>
                </li>
            </sec:authorize>
            <li class="nav-item">
                <a class="nav-link" href="#lienHe">Liên hệ</a>
            </li>
        </ul>
    </div>
    <div class="mt-auto mb-auto mr-2">
        <a class="gioHang" href="<c:url value="/gioHang" />">
            <i class="fas fa-cart-arrow-down"></i>
            <span class="badge badge-danger" id="slTour">${demSLTour}</span>
        </a>
    </div>
    <div class="mt-auto mb-auto">
        <!--userPrincipal == null la chua dang nhap thanh cong-->
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <a class="btn btn-success " href="<c:url value="/dangNhap" />">Đăng nhập</a>
            <a class="btn btn-success ml-1" href="<c:url value="/dangKy" />">Đăng kí</a>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <a class="btn btn-success" href="<c:url value="/" />">${pageContext.request.userPrincipal.name}</a>
            <a class="btn btn-danger" href="<c:url value="/logout" />">Đăng xuất</a>
        </c:if>
    </div>
</nav>

