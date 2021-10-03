/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function  themVaoGio(tourId, tenTour, gia) {
    event.preventDefault();
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
    event.preventDefault();
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
function xoaNguoiDung(id) {
    event.preventDefault();
    if (confirm("Bạn có chắc chắn xóa người dùng này không?") == true) {
        fetch(`/Test3/api/nguoiDungs/${id}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {//thanh cong
                let d = document.getElementById(`n${id}`);
                d.style.display = "none";
                location.reload();
            } else
                alert("Đã có lỗi xảy ra!!!");
        })
    }
}

function  capNhatSLTour(obj, tourId) {
    event.preventDefault();
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
    event.preventDefault();
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
    event.preventDefault();
    if (confirm("Tiến hành thanh toán!!!") == true) {
        fetch("/Test3/api/thanhToan", {
            method: "post"
        }).then(function (res) {
            return res.json()
        }).then(function (code) {
            console.info(code);
            location.reload();
        })
    }
}
window.onload = function () {
    let ngays = document.getElementsByClassName("ngayBL")
    
    for (let i = 0; i < ngays.length; i++)
    {
        ngays[i].innerText = "Bình luận " + moment(ngays[i].innerText).fromNow();
    }
}
function themBinhLuan(tourId){
    event.preventDefault();
    
    fetch("/Test3/api/themBinhLuan",{
        method: 'post',
        body: JSON.stringify({
            "noiDung": document.getElementById("binhLuanId").value,
            "tourId": tourId
        }),
        headers:{
            "Content-Type": "application/json"
            }
        }).then(function (res) {
            console.info(res)
            return res.json();
        }).then(function (data) {
            console.info(data)
            let area = document.getElementById("binhLuanArea");
            
            area.innerHTML = `
                    <div class="row">
                        <div class="col-md-2 d-flex justify-content-end">
                            <img class="img-fluid rounded-circle" alt="alt"/>
                        </div>
                        <div class="col-md-10">
                            <p>${data.noiDung}</p>
                            <i class="ngayBL">${moment(data.ngayBL).fromNow()}</i>
                        </div>
                    </div>
                    ` + area.innerHTML;
        location.reload();
    })
}
