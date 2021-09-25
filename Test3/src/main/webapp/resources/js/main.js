/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function  themVaoGio(tourId, tenTour, gia) {
    fetch("/Test3/api/gioHang", {
        method: 'post',
        body: JSON.stringify({
            "tourId": tourId,
            "tenTour": tenTour,
            "gia": gia,
            "soLuong": 1
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json()
    }).then(function (data) {
        let d = document.getElementById("slTour");
        d.innerText = data;
    })
}


function xoaTour(tourId) {
    if (confirm("Bạn có chắc chắn xóa tour này không?") == true) {
        fetch(`/Test3/api/tours/${tourId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {//thanh cong
                let d = document.getElementById(`pro${tourId}`);
                d.style.display = "none";
            } else
                alert("Đã có lỗi xảy ra!!!");
        })
    }
}

function  capNhatSLTour(obj, tourId) {
    fetch("/Test3/api/gioHang", {
        method: "put",
        body: JSON.stringify({
            "tourId": tourId,
            "tenTour": "",
            "gia": 0,
            "soLuong": obj.value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json()
    }).then(function (data) {
        let slTour = document.getElementById("slTour");
        slTour.innerText = data.slTour;
        let tongTien = document.getElementById("tongTien");
        tongTien.innerText = data.tongTien;
    })
}
function xoaTourTrongGio(tourId) {
    if (confirm("Bạn có chắc chắn xóa tour này không?") == true) {
        fetch(`/Test3/api/gioHang/${tourId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(function (res) {
            return res.json()
        }).then(function (data) {
            let slTour = document.getElementById("slTour");
            slTour.innerText = data.slTour;
            let tongTien = document.getElementById("tongTien");
            tongTien.innerText = data.tongTien;
            location.reload();
        })
    }
}
function thanhToan() {
    if (confirm("Tiến hành thanh toán!!!") == true) {
        fetch("/Test3/api/thanhToan", {
            method: "post"
        }).then(function (res) {
            return res.json()
        }).then(function (code){
            console.info(code);
            location.reload();
        })
    }
}