<%-- 
    Document   : footer
    Created on : Sep 7, 2021, 1:25:40 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer text-center" id="lienHe">
    <div class="container text-black">
        <div class="row pt-5 pb-5">
            <!--cot1-->
            <div class="col-4 text-left">
                <div class="mb-2">
                    <a href="<c:url value="/" />">
                        <img class="rounded-circle" src="<c:url value="/images/logo.jpg"/>" alt="Logo" style="width:50px;">
                    </a>
                </div>
                <div class="">
                    Công Ty TNHH Du Lịch DL 123 Hùng Vương, tp Hồ Chí Minh, Việt Nam
                    <br />
                    <span class="font-weight-bold text-warning">Email: </span>
                    <span>dulich@gmail.com</span>
                    <br />
                    <span class="font-weight-bold text-warning">Phone: </span>
                    <span class="text-danger font-weight-bold h4">(+84) 123 456</span>
                    
                </div>
                <div>
                    <br />
                    <a class="btn btn-outline-dark btn-social mx-1" href="https://www.facebook.com/dqlinh0802/"
                       data-aos="fade-up" data-aos-duration="1000">
                        <i class="fab fa-fw fa-facebook-f"></i>
                    </a>
                    <a class="btn btn-outline-dark btn-social mx-1" href="https://www.instagram.com/d__q__l/"
                       data-aos="fade-up" data-aos-duration="1500">
                        <i class="fab fa-fw fa-instagram"></i>
                    </a>
                    <a class="btn btn-outline-dark btn-social mx-1" href="https://github.com/Dqlinh0802"
                       data-aos="fade-up" data-aos-duration="2000">
                        <i class="fab fa-fw fa-github"></i>
                    </a>
                </div>
            </div>
            <!-- cot2-->
            <div class="col-4">
                <h4 class="text-uppercase mb-4 font-pacifico mx-auto">Điểm đến</h4>
                <div class="">
                    <a  class="btn btn-success mb-1" href="#diaDiem"
                        data-aos="fade-up" data-aos-duration="1000">
                        Vịnh Hạ Long
                    </a>
                    <a  class="btn btn-info mb-1" href="#diaDiem"
                        data-aos="fade-up" data-aos-duration="1700">
                        Đảo Phú Quốc
                    </a>
                    <a  class="btn btn-warning mb-1" href="#diaDiem"
                        data-aos="fade-up" data-aos-duration="1700">
                        Đảo Cát Bà
                    </a>
                    <a  class="btn btn-danger mb-1" href="#diaDiem"
                        data-aos="fade-up" data-aos-duration="2500">
                        SaPa
                    </a>
                </div>
            </div>
            <!-- cot3-->
            <div class="col-4 ">
                <h4 class="text-uppercase mb-4 font-pacifico mx-auto">Giới thiệu</h4>
                <p>Giấy chứng nhận Đăng ký Kinh doanh số: xxxxxx do Sở Kế hoạch và Đầu tư Thành phố Hồ Chí Minh cấp ngày 00/00/2012</p>
            </div>
        </div>
    </div>
    <div class="copyright py-4 text-center text-white">
        <div class="container"><small>Bản quyền &copy; 2021 DuLich.com</small></div>
    </div>
</div>

