<%-- 
    Document   : chiTietTour
    Created on : Sep 20, 2021, 3:32:47 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="bg-tour" class="">
    <div class="container mr-auto ml-auto">
        <h1 class="text-center" data-aos="fade-down" data-aos-duration="1500">
            Chi tiết tour
        </h1>
        <div class="chi-tiet-tour">
            <div class="row">
                <div class="col-md-6" data-aos="fade-right" data-aos-duration="2000">
                    <c:if test="${tour.anh != null && tour.anh.startsWith('https') == true}">
                        <img src="${tour.anh}" alt="alt"/>
                    </c:if>
                    <c:if test="${tour.anh == null || tour.anh.startsWith('https') == false}">
                        <img class="img-fluid " src="<c:url value="/images/phongCanh3.jpg"/>" alt="${tour.tenTour}"/>
                    </c:if>
                </div>
                <div class="col-md-6">
                    <h2>${tour.tenTour}</h2>
                    <h4 class="text-pink">Mô tả </h4>
                    <p class="mo-ta">${tour.moTa}</p>
                    <div class="margin-50"></div>
                    <div>
                        <i class="fas fa-calendar-alt text-pink h5"></i> 
                        Ngày bắt đầu: <span class="font-weight-bold ngay-thang-nam">${tour.ngayBD}</span> 
                        <br>
                        <i class="fas fa-calendar-check text-pink h5"></i> 
                        Ngày kết thúc: <span class="font-weight-bold ngay-thang-nam">${tour.ngayKT}</span>
                    </div>
                    <c:if test="${tour.soCho > 0}">
                        <div><i class="fas fa-chair text-pink h5"></i> 
                            Số chỗ còn nhận: <span class="text-danger font-weight-bold">${tour.soCho}</span></div>
                    </c:if>
                    <c:if test="${tour.soCho <= 0}">
                        <div><span class="text-danger font-weight-bold">Hết chỗ</span></div>
                    </c:if>
                    <p>Giá chỉ còn: <span class="text-success giaTien font-weight-bold"> ${tour.gia} </span></p>
                    <c:if test="${tour.soCho > 0}">
                        <a href="javascript:;" class="btn btn-info" 
                           onclick="themVaoGio(${tour.tourId}, '${tour.tenTour}', ${tour.gia}, ${tour.soCho})"
                           data-toggle="modal" data-target="#myModal" >Đặt tour</a>
                    </c:if>
                </div>
            </div>
            <form class="binh-luan">
                <textarea id="binhLuanId" class="form-control col-md-5" placeholder="Nhập bình luận"></textarea>
                <c:if test="${nguoiDungDangNhap.id != null}">
                    <button type="submit" onclick="themBinhLuan(${tour.tourId}, ${nguoiDungDangNhap.id})"
                            class="btn btn-info">Đăng bình luận</button>
                </c:if>
                <c:if test="${nguoiDungDangNhap.id == null}">
                    <a data-toggle="popover" data-content="Bạn cần đăng nhập để bình luận"
                       class="btn btn-info">Đăng bình luận</a>
                </c:if>
                <a href="<c:url value="/dsTour"/>" class="btn btn-info">
                Quay lại xem tour
                </a>
            </form>
        </div>
        <div class="cac-binh-luan">
            <div class="bg-bl" id="binhLuanArea">
                <c:forEach var="b" items="${binhLuans}">
                    <div class="row" data-aos="fade-up" data-aos-duration="1000">   
                        <div class="col-md-2 d-flex justify-content-end">
                            <c:if test="${b[3] != null && b[3].startsWith('https') == true}">
                                <img class="img-fluid rounded-circle" src="${b[3]}"  alt="alt"/>
                            </c:if>
                            <c:if test="${b[3] == null || b[3].startsWith('https') == false}">
                                <div class="img-fluid rounded-circle d-flex flex-column text-center">
                                    <i class="fas fa-user-secret"></i>
                                    <span class="an-danh">Ẩn danh</span>
                                </div>
                            </c:if>
                        </div>
                        <div class="col-md-10">
                            <p>${b[1]}</p>
                            <i class="ngayBL">${b[2]}</i>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="d-flex justify-content-between page mr-sm-5 ml-sm-5">
                <ul class="pagination">
                    <c:forEach begin="1" end="${Math.ceil(slBinhLuan/5)}" var="i">  
                        <li class="page-item">
                            <a class="page-link" 
                               href="<c:url value="/chiTietTour/${tour.tourId}" />?page=${i}">${i}
                            </a>
                        </li>
                    </c:forEach>
                </ul>
                <div> Tổng số bình luận ${slBinhLuan}</div> 
            </div>
        </div>
    </div>
</div>

<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                Đã thêm tour vào giỏ hàng
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <a href="<c:url value="/gioHang" />" class="btn btn-success">Tới giỏ hàng</a>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
            </div>

        </div>
    </div>
</div>      
<script>
    $(document).ready(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>