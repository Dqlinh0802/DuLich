<%-- 
    Document   : gioHang
    Created on : Sep 17, 2021, 11:33:44 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<div id="bg-tour" class="text-white">
    <div class="container mr-auto ml-auto">
        <h1 class="text-center">Giỏ hàng</h1>
        <table class="table text-white">
            <tr class="text-center">
                <th>Mã tour</th>
                <th>Tên tour</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th></th>
            </tr>
            <c:forEach var="c" items="${gioHangs}">
                <tr class="text-center">
                    <td>${c.tourId}</td>
                    <td>${c.tenTour}</td>
                    <td>
                        <div class="form-group">
                            <input type="number" min="0" value="${c.soLuong}" class="so-luong text-center" 
                                   onblur="capNhatSLTour(this, ${c.tourId})"/>
                        </div>
                    </td>
                    <td>${c.gia} VND</td>
                    <td>
                        <input type="button" value="Xóa" onclick="xoaTourTrongGio(${c.tourId})" class="btn btn-danger"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <h4>Tổng tiền: <span id="tongTien">${tinhTien.tongTien}</span> VND</h4>
        <input type="button" onclick="thanhToan()" value="Thanh toán" class="btn btn-info"/>
    </div>
</div>