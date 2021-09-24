<%-- 
    Document   : index
    Created on : Sep 7, 2021, 1:01:42 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>



<div id="jumbotron">
    <div class="container">
        <div class="info">
            <h1>Welcome to <span class="ten-ct">DuLich</span></h1>
            <p class="text-white">
                Tận hưởng những chuyến đi...
            </p>
            <div>
                <a class="btn btn-success" href="#">Xem tour</a>
                <a class="btn btn-success ml-2" href="#">Đặt tour</a>
            </div>
        </div>
    </div>
</div>
<!--banner-->

<section class="">
    <div class="container info-sec">
        <div id = "diaDiem">
            <div class="info-location d-block">
                <h3 class="text-center">Điểm đến nổi bật</h3>
                <p class=""><span>" </span>Là một con dân nước Việt Nam nhưng mấy ai 
                    đã đặt chân hết các vùng miền đất Việt tươi đẹp.
                    Nếu có cơ hội bạn hãy đến top các địa điểm du lịch 
                    nổi tiếng đẹp nhất ở Việt Nam bạn sẽ biết ở Việt 
                    Nam có những thiên đường thật sự, truyền thống,
                    văn hóa dân tộc được hòa quyện hoàn hảo với thiên
                    nhiên đất trời<span> "</span>
                </p>
            </div>
        </div>
        <form class="form-inline" action="">
            <input class="form-control mr-sm-2" name="kw" type="search" placeholder="Nhập thứ bạn cần tìm kiếm..." aria-label="Search">
            <input type="submit" class="btn btn-info" value="Search" />
        </form>
        <div>
            <div>Tổng số tour: ${slTour}</div>
            <ul class="pagination">
                <c:forEach begin="1" end="${Math.ceil(slTour/6)}" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/" />?page=${i}#diaDiem">${i}</a>
                    </li>
                </c:forEach> 
            </ul>
        </div>
        <div id="dsTour">
            <div class="info-img">  
                <div class="row d-flex justify-content-center">
                    <c:forEach var="pro" items="${tours}">   
                        <div class="card col-md-3"  id="pro${pro.tourId}">
                            <div class="card">
                                <a href="<c:url value="/tours/${pro.tourId}"/>">
                                    <div class="card-header">
                                        <c:if test="${pro.anh != null && pro.anh.startsWith('https') == true}">
                                            <img class="img-fluid " src="<c:url value="${pro.anh}"/>" alt="${pro.tenTour}"/>
                                        </c:if>
                                        <c:if test="${pro.anh == null || pro.anh.startsWith('https') == false}">
                                            <img class="img-fluid " src="<c:url value="/images/phongCanh3.jpg"/>" alt="${pro.tenTour}"/>
                                        </c:if>
                                    </div>
                                </a>
                                <div class="card-body d-flex justify-content-between">
                                    <div>
                                        <h3 class="text-white">${pro.tenTour}</h3>
                                        <p class="text-white">${pro.gia} VND</p>
                                    </div>
                                    <div class="Dat-Them-Tour">
                                        <div>
                                            <a href="javascript:;" class="btn btn-info" onclick="themVaoGio(${pro.tourId}, '${pro.tenTour}', ${pro.gia})">Đặt tour</a>
                                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                <a href="javascript:;" class="btn btn-info bg-danger" onclick="xoaTour(${pro.tourId})">Xóa tour</a>
                                            </sec:authorize>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
        <div>
            <ul class="pagination">
                <c:forEach begin="1" end="${Math.ceil(slTour/6)}" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/" />?page=${i}#diaDiem">${i}</a>
                    </li>
                </c:forEach> 
            </ul>
        </div>
        <c:forEach var="tour" items="${tours}">
            <h3 class="d-inline-block ml-3">${tour.tenTour}</h3>
        </c:forEach>

    </div>
</section>


