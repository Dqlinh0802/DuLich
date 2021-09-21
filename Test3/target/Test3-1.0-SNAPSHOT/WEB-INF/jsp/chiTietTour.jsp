<%-- 
    Document   : chiTietTour
    Created on : Sep 20, 2021, 3:32:47 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="bg-tour" class="text-white">
    <div class="container mr-auto ml-auto">
        <h1 class="text-center">Chi tiết tour</h1>
        <div class="row">
            <div class="col-md-7">
                <c:if test="${tour.anh != null && tour.anh.startsWith('https') == true}">
                    <img src="${tour.anh}" alt="alt"/>
                </c:if>
                <c:if test="${tour.anh == null || tour.anh.startsWith('https') == false}">
                    <img class="img-fluid " src="<c:url value="/images/phongCanh3.jpg"/>" alt="${pro.tenTour}"/>
                </c:if>
            </div>
            <div class="col-md-3">
                <h3 class="text-white">${tour.tenTour}</h3>
                <p class="text-white">${tour.gia} VND</p>
            </div>
        </div>
    </div>
</div>