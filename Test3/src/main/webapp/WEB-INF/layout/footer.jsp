<%-- 
    Document   : footer
    Created on : Sep 7, 2021, 1:25:40 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer text-center">
    <div class="container text-black">
        <div class="row pt-5 pb-5">
            <!--cot1-->
            <div class="col-4 text-left">
                <div class="mb-2">
                    <a href="<c:url value="/" />">
                        <img class="rounded-circle" src="<c:url value="/images/logo.png"/>" alt="Logo" style="width:50px;">
                    </a>
                </div>
                <p class="">
                    Công Ty TNHH Du Lịch DL 123 Hùng Vương, Sài Gòn, Việt Nam
                    <br />
                    <br />
                    <span class="font-weight-bold text-warning">Email: </span>
                    <span>dulich@gmail.com</span>
                    <br />
                    <span class="font-weight-bold text-warning">Phone: </span>
                    <span>(+84) 123 456</span>
                </p>
                <!--<a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>-->
                <!--<a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>-->
            </div>
            <!-- cot2-->
            <div class="col-4">
                <h4 class="text-uppercase mb-4 font-pacifico">Điểm đến</h4>
                <div class="mb-2">
                    <a  class="btn btn-outline-success " href="#diaDiem">Vịnh Hạ Long</a>
                    <a  class="btn btn-outline-info " href="#diaDiem">Đảo Phú Quốc</a>
                </div>
                <div>
                    <a  class="btn btn-outline-warning " href="#diaDiem">Đảo Cát Bà</a>
                    <a  class="btn btn-outline-danger " href="#diaDiem">SaPa</a>
                </div>
            </div>
            <!-- cot3-->
            <div class="col-4 ">
                <h4 class="text-uppercase mb-4 font-pacifico">Giới thiệu</h4>
                <p>Giấy chứng nhận Đăng ký Kinh doanh số: xxxxxx do Sở Kế hoạch và Đầu tư Thành phố Hồ Chí Minh cấp ngày 00/00/2012</p>
            </div>
        </div>
    </div>
    <div class="copyright py-4 text-center text-white">
        <div class="container "><small>Bản quyền &copy; 2021 DuLich.com</small></div>
    </div>
</div>
