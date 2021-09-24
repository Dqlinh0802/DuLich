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
            <div class="col-md-6">
                <c:if test="${tour.anh != null && tour.anh.startsWith('https') == true}">
                    <img src="${tour.anh}" alt="alt"/>
                </c:if>
                <c:if test="${tour.anh == null || tour.anh.startsWith('https') == false}">
                    <img class="img-fluid " src="<c:url value="/images/phongCanh3.jpg"/>" alt="${pro.tenTour}"/>
                </c:if>
            </div>
            <div class="col-md-6 text-white">
                <h3>${tour.tenTour}</h3>
                <p>Giá chỉ còn:<span class="text-danger"> ${tour.gia} </span> VND</p>
                <h4>Mô tả </h4>
                <p class="mo-ta">${tour.moTa}</p>
                <a href="javascript:;" class="btn btn-danger" onclick="themVaoGio(${tour.tourId})">Đặt tour</a>
            </div>
        </div>
            <form class="binh-luan">
                <textarea id='output' class="form-control" placeholder="Nhập bình luận"></textarea>
                <button type="submit" class="btn btn-info">Đăng bình luận</button>
            </form>
        <div class="cac-binh-luan">
            <div class="row">
                <div class="col-md-2">
                    <img class="img-fluid rounded-circle" src="${tour.anh}" alt="alt"/>
                </div>
                <div class="col-md-10">
                    <p>Đẹp đấy</p>
                    <i>25/9/2021 3:44</i>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <img class="img-fluid rounded-circle" src="${tour.anh}" alt="alt"/>
                </div>
                <div class="col-md-10">
                    <p>Đẹp đấy</p>
                    <i>25/9/2021 3:44</i>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <img class="img-fluid rounded-circle" src="${tour.anh}" alt="alt"/>
                </div>
                <div class="col-md-10">
                    <p>Đẹp đấy</p>
                    <i>25/9/2021 3:44</i>
                </div>
            </div>
        </div>
    </div>
</div>