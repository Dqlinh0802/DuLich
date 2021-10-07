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
        <div class="chi-tiet-tour">
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
                    <a href="javascript:;" class="btn btn-danger" onclick="themVaoGio(${tour.tourId}, '${tour.tenTour}', ${tour.gia})">Đặt tour</a>
                </div>
            </div>
            <form class="binh-luan">
                <textarea id="binhLuanId" class="form-control col-md-5" placeholder="Nhập bình luận"></textarea>
                <button type="submit" onclick="themBinhLuan(${tour.tourId})" class="btn btn-info">Đăng bình luận</button>
            </form>
        </div>
        <div class="cac-binh-luan">
            <div class="bg-bl" id="binhLuanArea">
                <c:forEach var="b" items="${binhLuans}">
                    <div class="row">
                        <div class="col-md-2 d-flex justify-content-end">
                            <img class="img-fluid rounded-circle" src="${tour.anh}" alt="alt"/>
                        </div>
                        <div class="col-md-10">
                            <p>${b.noiDung}</p>
                            <i class="ngayBL">${b.ngayBL}</i>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="d-flex justify-content-between page mr-sm-5 ml-sm-5">
                <ul class="pagination">
                    <c:forEach begin="1" end="${Math.ceil(slBinhLuan/5)}" var="i">  
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/tours/${tour.tourId}" />?page=${i}">${i}</a>
                        </li>
                    </c:forEach>
                </ul>
                <div> Tổng số bình luận ${slBinhLuan}</div> 
            </div>
        </div>
    </div>
</div>
