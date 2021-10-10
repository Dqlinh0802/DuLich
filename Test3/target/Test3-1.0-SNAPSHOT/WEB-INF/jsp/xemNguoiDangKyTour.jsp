<%-- 
    Document   : xemNguoiDangKyTour
    Created on : Oct 7, 2021, 5:45:18 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div id="bg-quan-ly" class="">
    <div class="container mr-auto ml-auto">
        <h1 class="text-center">Quản lý đặt tour</h1>
        <table class="table bg-light">
            <tr class="text-white h5 bg-tb">
                <th class="text-center">Mã tour</th>
                <th class="text-center">Tên Tour</th>
                <th class="text-center">Người đặt</th>
                <th class="text-center">Số điện thoại</th>
                <th class="text-center">Ngày đặt</th>
                <th class="text-center">Tổng tiền</th>
                <th class="text-center"></th>
            </tr>
            <c:forEach var="nd" items="${nguoiDatTour}">
                <tr class="">
                    <td class="text-center">${nd[0]}</td>
                    <td class="text-center">${nd[1]}</td>
                    <td class="text-center">${nd[2]} ${nd[3]}</td>
                    <td class="text-center">${nd[4]}</td>
                    <td class="text-center">${nd[5]}</td>
                    <td class="text-center giaTien">${nd[6]}</td>
                    <td class="text-center">
                        <a href="">
                            <input type="button" value="Chi tiết" class="btn btn-success"/>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class="d-flex justify-content-between page mr-sm-5 ml-sm-5"> 
            <ul class="pagination">
                <c:forEach begin="1" end="${Math.ceil(slTourDuocDat/10)}" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/nhanVien/xemNguoiDangKyTour" />?page=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>