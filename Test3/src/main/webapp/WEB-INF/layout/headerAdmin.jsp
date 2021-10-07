<%-- 
    Document   : headerAdmin
    Created on : Oct 7, 2021, 2:47:44 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <div class="container justify-content-start">
        <a class="navbar-brand" href="#">
            <img class="rounded-circle" src="<c:url value="/images/logo.jpg" />" style="width: 50px; height: 50px;" alt="logo" />
        </a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <div class="nav-link p-0">
                    <i class="fas fa-chevron-left" style="font-size: 12px;"></i> 
                    <a href="<c:url value="/" />">Trở về trang chủ</a>
                </div>
            </li>
        </ul>
    </div>
</nav>