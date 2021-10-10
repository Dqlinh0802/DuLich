<%-- 
    Document   : doanhThu
    Created on : Oct 6, 2021, 6:40:43 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="text-center mt-3 text-success">Thống kê doanh thu theo tour</h1>
<div class="d-flex justify-content-center form">
    <form action="" class="text-center">
        <div class="d-flex align-items-center mt-2 mb-2">
            <input type="date" name="ngayBD" class="form-control"/>
            <span class="mx-2">-</span>
            <input type="date" name="ngayKT" class="form-control"/>
        </div>
        <input type="submit" value="Thống kê" class="btn btn-info"/>
    </form>
</div>
<div>
    <canvas id="myChart"></canvas>
</div>
<table class="table">
    <tr class="text-white h5 bg-tb">
        <th class="text-center">Mã tour</th>
        <th class="text-center">Tên tour</th>
        <th class="text-center">Doanh thu</th>
    </tr>
    <c:forEach var="pro" items="${thongKeTour}">
        <tr>
            <td class="text-center">${pro[0]}</td>
            <td class="text-center">${pro[1]}</td>
            <td class="giaTien text-center">${pro[2]}</td>
        </tr>
    </c:forEach>
</table>
<!--tra ve pro[0] vi ben kia tra ve kieu Object-->

<script>
    let tourLaels = [], tourInfo = [];
    <c:forEach var="pro" items="${thongKeTour}">
    tourLaels.push('${pro[1]}')
    tourInfo.push(${pro[2]})
    </c:forEach>

    window.onload = function () {
        bieuDoTour("myChart", tourLaels, tourInfo)
        let gia = document.getElementsByClassName("giaTien")

        //dau phay trong tien
        var formatter = new Intl.NumberFormat('vi', {
            style: 'currency',
            currency: 'VND',
        });
        for (let i = 0; i < gia.length; i++)
        {

            gia[i].innerText = formatter.format(gia[i].innerText);
        }
    }
</script>