<%-- 
    Document   : gioHang
    Created on : Sep 17, 2021, 11:33:44 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<div id="bg-tour" class="text-white">
    <div class="container mr-auto ml-auto">
        <h1 class="text-center">Đăng ký đặt tour</h1>
        <table class="table text-white">
            <tr class="text-center text-white h4 bg-tb">
                <th>Mã tour</th>
                <th>Tên tour</th>
                <th>Số lượng đặt/Số lượng còn</th>
                <th>Đơn giá</th>
                <th></th>
            </tr>
            <c:forEach var="c" items="${gioHangs}">
                <tr class="text-center">
                    <td>${c.tourId}</td>
                    <td>${c.tenTour}</td>
                    <td class="">
                        <div class="form-group">
                            <input id="soLuong" type="number" min="0" max="${c.soCho}" value="${c.soLuong}" class="so-luong text-center" 
                                   onblur="capNhatSLTour(this, ${c.tourId}, ${c.soCho})"/>
                            /${c.soCho}
                        </div>
                    </td>
                    <td class="giaTien">${c.gia}</td>
                    <td>
                        <input type="button" value="Xóa" onclick="xoaTourTrongGio(${c.tourId})" class="btn btn-danger"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <h4 class="alert alert-warning text-right">Tổng tiền: <span id="tongTien" class="giaTien">${tinhTien.tongTien}</span></h4>
            <c:if test="${nguoiDungDangNhap.id != null}">
            <input type="button" onclick="thanhToan(${nguoiDungDangNhap.id})" 
                   value="Đặt ngay" class="btn btn-info thanh-toan"
                   data-toggle="modal" data-target="#myModal"/>
        </c:if>
        <c:if test="${nguoiDungDangNhap.id == null}">
            <a data-toggle="popover" data-content="Bạn cần đăng nhập để đặt tour"
               class="btn btn-info thanh-toan">Đặt ngay</a>
        </c:if>
        <a href="<c:url value="/dsTour"/>" class="btn btn-info">
            Quay lại xem tour
        </a>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>