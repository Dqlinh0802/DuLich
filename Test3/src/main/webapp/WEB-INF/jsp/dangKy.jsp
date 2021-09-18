<%-- 
    Document   : dangKy
    Created on : Sep 8, 2021, 4:17:09 PM
    Author     : Acer
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:url value="/dangKy" var="actionPost"/>
<div id="background">
    <div class="dangNhap dangKy">
        <h1 class="text-center">Đăng ký</h1>
        <c:if test="${err != null}">
            <div class="alert alert-danger">
                ${err}
            </div>
        </c:if>
        <form:form method="POST" action="${actionPost}"
                               modelAttribute="nguoiDung">
                               <%--enctype="multipart/form-data">--%>
            <div class="form-group">
                <label class="text-white" for="ho">Họ và tên đệm</label>
                <form:input type="text" placeholder="Họ và tên đệm" 
                            cssClass="form-control" id="ho" path="ho"/>
            </div>
                <form:errors path="ho" class="err" element="div"/>
            <div class="form-group">
                <label class="text-white" for="ten">Tên</label>
                <form:input type="text" placeholder="Tên" 
                            cssClass="form-control"  id="ten" path="ten"/>
                
            </div>
                <form:errors path="ten" class="err" element="div"/>
            <div class="form-group">
                <label class="text-white" for="email">Email</label>
                <form:input type="Email" placeholder="name@gmail.com" 
                            cssClass="form-control" id="email" path="email"/>
                
            </div>
                <form:errors path="email" class="err" element="div"/>
            <div class="form-group">
                <label class="text-white" for="taiKhoan">Tài khoản</label>
                <form:input type="text" placeholder="Tên đăng nhập" 
                            cssClass="form-control" id="taiKhoan" path="taiKhoan"/>
                
            </div>
                <form:errors path="taiKhoan" class="err" element="div"/>
            <div class="form-group">
                <label class="text-white" for="matKhau">Mật khẩu</label>
                <form:input type="password" placeholder="Mật khẩu" 
                            cssClass="form-control" id="matKhau" path="matKhau"/>
                
            </div>
                <form:errors path="matKhau" class="err" element="div"/>
            <div class="form-group">
                <label class="text-white" for="xacThucMatKhau">Nhập lại mật khẩu</label>
                <form:input type="password" id="xacThucMatKhau" path="xacThucMatKhau"
                            placeholder="Nhập lại mật khẩu" cssClass="form-control" />
                
            </div>
                <form:errors path="xacThucMatKhau" class="err" element="div"/>
            <div class="form-group">
                <label class="text-white" for="sdt">Số điện thoại</label>
                <form:input type="text" placeholder="Số điện thoại" path="sdt" 
                            cssClass="form-control" id="sdt" />
                
            </div>
                <form:errors path="sdt" class="err" element="div"/>
            <div class="form-group d-flex justify-content-center">
                <a class="btn btn-success " href="<c:url value="/" />">Trang chủ</a>
                <input type="submit" value="Đăng ký" class="btn btn-success"/>
                <a class="btn btn-success " href="<c:url value="/dangNhap" />">Đăng nhập</a>
            </div> 
        </form:form>

    </div>
</div>