<%-- 
    Document   : tour
    Created on : Sep 14, 2021, 7:22:36 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--modelAttribute="tour" la duoi tourController-->
<!--enctype=" la cua thang multipart-->
<!--path="file" trong Tour.clas-->

<div id="bg-tour">
    <c:if test="${tour.tourId > 0}">
        <h1 class="text-center">Sửa tour</h1>
    </c:if>
    <c:if test="${tour.tourId <= 0}">
        <h1 class="text-center">Thêm tour</h1>
    </c:if>
        
    <div id="#jumbotron">
        <c:if test="${errMsg != null}">
            <div class="alert alert-danger">${errMsg}</div>
        </c:if>
        <div class="container info-tour">
            <div  class="form-tour">
                <form:form method="POST" 
                           modelAttribute="tour" 
                           enctype="multipart/form-data">
                    <form:errors path="*" cssClass="alert alert-danger" element="div"/>
                    <div class="form-group">
                        <label class="text-white" for="tenTour">Tên tour</label>
                        <form:input type="text" cssClass="form-control" id="tenTour" path="tenTour"/>
                        <form:errors path="tenTour" cssClass="text-danger" element="div"/>
                    </div>
                    <div class="form-group">
                        <label class="text-white" for="gia">Giá</label>
                        <form:input type="text" cssClass="form-control" id="gia" path="gia"/>
                        <form:errors path="gia" cssClass="text-danger" element="div"/>
                    </div>
                    <div class="form-group">
                        <label class="text-white" for="ngayBD">Ngày bắt đầu</label>
                        <form:input type="date" cssClass="form-control" id="ngayBD" path="ngayBD"/>
                        <form:errors path="ngayBD" cssClass="text-danger" element="div"/>
                    </div>
                    <div class="form-group">
                        <label class="text-white" for="ngayKT">Ngày kết thúc</label>
                        <form:input type="date" cssClass="form-control" id="ngayKT" path="ngayKT"/>
                        <form:errors path="ngayKT" cssClass="text-danger" element="div"/>
                    </div>
                    <div class="form-group">
                        <label class="text-white" for="moTa">Mô tả</label>
                        <form:textarea path="moTa" id="moTa" rows="5" cols="52" />
                        <form:errors path="moTa" cssClass="text-danger" element="div"/>
                    </div>
                    <%--<c:if test="${tour.tourId <= 0}">--%>
                        <div class="form-group">
                            <label class="text-white" for="file">Hình ảnh</label>
                            <form:input type="file" cssClass="form-control" id="file" path="file"/>
                        </div>
                    <%--</c:if>--%>
                    <div class="form-group">
                        <form:hidden path="tourId" />
                        <c:if test="${tour.tourId > 0}">
                            <input type="submit" value="Sửa tour" class="btn btn-success"/>
                        </c:if>
                        <c:if test="${tour.tourId <= 0}">
                            <input type="submit" value="Thêm tour" class="btn btn-success"/>
                        </c:if>
                    </div>
                </form:form>
            </div>
        </div>

    </div>
</div>