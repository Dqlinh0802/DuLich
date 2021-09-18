/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function themVaoGio(tourId){
    fetch(`/Test3/api/gioHang/${tourId}`).then(res => res.json()).then(data =>{
        var d = document.getElementById("slTour");
        if (d !== null)
            d.innerText = data;
    })
}