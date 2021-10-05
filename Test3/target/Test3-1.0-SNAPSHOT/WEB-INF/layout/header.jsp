<%-- 
    Document   : header
    Created on : Sep 7, 2021, 1:25:04 AM
    Author     : Acer
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>



<nav class="navbar navbar-expand-lg navbar-dark bg-nav">
    <div class="container header">
        <a class="navbar-brand" href="<c:url value="/" />">
            <img class="rounded-circle" src="<c:url value="/images/logo.png"/>" alt="Logo" style="width:50px;">
        </a>
        <div class="navbar-toggler title">Du Lich</div>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/"/>">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#diaDiem">Tour</a>
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
                <sec:authorize access="!hasAnyRole('ROLE_MANAGE', 'ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="#lienHe">Liên hệ</a>
                    </li>
                </sec:authorize>
            </ul>
            <div class="nav-item dropdown d-flex">
                <div class="item-gio-hang">
                    <a class="gioHang" href="<c:url value="/gioHang" />">
                        <i class="fas fa-cart-arrow-down"></i>
                        <span class="badge badge-danger" id="slTour">${demSLTour}</span>
                    </a>
                </div>
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Tài khoản
                </a>
                <div class="dropdown-menu text-center" aria-labelledby="navbarDropdownMenuLink">
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <a class="btn btn-info mr-auto ml-auto" type="button" href="<c:url value="/dangNhap" />">Đăng nhập</a>
                        <div>
                            Chưa có tài khoản? <a href="<c:url value="/dangKy" />">Đăng kí</a> ngay
                        </div>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <div class="d-flex flex-column">
                            <div>
                                <c:if test="${nguoiDungDangNhap.anh != null && nguoiDungDangNhap.anh.startsWith('https') == true}">
                                    <img class="btn btn-success rounded-circle" src="<c:url value="${nguoiDungDangNhap.anh}"/>"
                                         alt="${pageContext.request.userPrincipal.name}" style="width:65px;" />
                                </c:if>
                                <c:if test="${nguoiDungDangNhap.anh == null || nguoiDungDangNhap.anh.startsWith('https') != true}">
                                    <a class="btn btn-success" href="<c:url value="/"/>" >${pageContext.request.userPrincipal.name}</a>
                                </c:if>
                            </div>
                            <div>
                                <a class="btn btn-danger" href="<c:url value="/logout" />">Đăng xuất</a>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</nav>