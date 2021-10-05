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
                <a class="btn btn-success " href="#">Xem tour</a>
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
        <div>
            <h3>Danh sách các tour</h3>
            <form class="form-inline row" action="">
                <input class="form-control col-xs-1 col-md-4 mr-sm-2 mb-2" name="kw" type="search" placeholder="Bạn muốn đi đâu?" aria-label="Search">
                <input type="submit" class="btn btn-info mb-2 font-weight-bold" value="Tìm kiếm"/>
            </form>
            <div class="d-flex justify-content-between">
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_MANAGE')">
                    <div class="so-luong-tour">Tổng số tour: ${slTour}</div>
                </sec:authorize>
                <ul class="pagination">
                    <c:forEach begin="1" end="${Math.ceil(slTour/18)}" var="i">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/" />?page=${i}#diaDiem">${i}</a>
                        </li>
                    </c:forEach> 
                </ul>
            </div>
            <div id="dsTour">
                <div class="info-img">  
                    <div class="row">
                        <c:forEach var="pro" items="${tours}">   
                            <div class="col-xs-12 col-sm-6 col-md-4" id="pro${pro.tourId}">
                                <div>
                                    <a href="<c:url value="/tours/${pro.tourId}"/>">
                                        <div>

                                            <c:if test="${pro.anh != null && pro.anh.startsWith('https') == true}">
                                                <img class="img-fluid " src="<c:url value="${pro.anh}"/>" alt="${pro.tenTour}"/>
                                            </c:if>
                                            <c:if test="${pro.anh == null || pro.anh.startsWith('https') == false}">
                                                <img class="img-fluid " src="<c:url value="/images/macDinh.gif"/>" alt="${pro.tenTour}"/>
                                            </c:if>

                                        </div>
                                    </a>
                                    <div class="info-tour">
                                        <div>
                                            <h3>${pro.tenTour}</h3>
                                        </div>
                                        <div class="margin-5">
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <a href="javascript:;" class="btn btn-info" onclick="themVaoGio(${pro.tourId}, '${pro.tenTour}', ${pro.gia})">Đặt tour</a>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_MANAGE')">
                                                <div class="btn-seting d-inline-block mt-1">
                                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                        <a href="javascript:;" onclick="xoaTour(${pro.tourId})">
                                                            <i class="fas fa-trash-alt text-danger"></i>
                                                        </a>
                                                    </sec:authorize>
                                                    <a href="<c:url value="/nhanVien/tours/?tourId=${pro.tourId}" />">
                                                        <i class="fas fa-wrench text-warning"></i>
                                                    </a>
                                                </div>
                                            </sec:authorize>
                                        </div>
                                        <div class="gia d-flex justify-content-end">
                                            <span class="giaTien">${pro.gia}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div>
                <ul class="pagination d-flex justify-content-end">
                    <c:forEach begin="1" end="${Math.ceil(slTour/18)}" var="i">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/" />?page=${i}#diaDiem">${i}</a>
                        </li>
                    </c:forEach> 
                </ul>
            </div>
        </div>
    </div>
</section>


