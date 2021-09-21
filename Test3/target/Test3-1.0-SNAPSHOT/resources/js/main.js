/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function themVaoGio(tourId) {
    fetch(`/Test3/api/gioHang/${tourId}`).then(res => res.json()).then(data => {
        var d = document.getElementById("slTour");
        if (d !== null)
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