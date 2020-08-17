$(document).ready(function () {
    $.datepicker.setDefaults({
        dateFormat: 'yy-mm-dd'
    });
    $(function () {
        $("#From").datepicker();
        $("#to").datepicker();
    });
    $('#range').click(function () {
        var From = $('#From').val();
        var to = $('#to').val();
        if (From != '' && to != '') {
            $.ajax({
                url: "range.php",
                method: "POST",
                data: {From: From, to: to},
                success: function (data) {
                    $('#purchase_order').html(data);
                }
            });
        } else {
            alert("Please Select the Date");
        }
    });
});

// const header = document.querySelector("#header");
// const mainHeader = document.querySelector("#main-header");
const tourList = document.querySelector("#tour-list");
// const discountTours = document.querySelector("#tour-offers");
// const poweredby = document.querySelector(".poweredby");
// const res = document.querySelector(".result");
const tourName = document.querySelector(".tour-type");

// searchBtn.addEventListener("click", fetchData);
tourName.addEventListener("keyup", getTourData);

const site_url = "http://localhost:3000";
// header.style.background = "#78ba36";
// mainHeader.style.background = "#78ba36";
// header.style.height = "75vh";
tourList.classList.add("tour-list");
// discountTours.classList.add("tour-list");

$.ajax({
    type: "GET",
    url: site_url + "/tours",
    contentType: "application/json",
    success: function (data) {
        data.forEach((json) => {
            const tours = document.createElement("div");
            tours.classList.add("tours");
            tourList.appendChild(tours);
            const tour = document.createElement("img");
            tour.setAttribute("src", json.image);
            tour.classList.add("tour");
            tours.appendChild(tour);
            const title = document.createElement("span");
            title.innerText = json.locationName;
            title.classList.add("tour-title");
            tours.appendChild(title);
        });
    },
    error: function () {},
});

//TODO: disocunted tours to dispaly here. <div id-"tour-offers"> is there in jsp for this
$.ajax({
    type: "GET",
    url: site_url + "/tours",
    contentType: "application/json",
    success: function (data) {
        data.forEach((json) => {

        });
    },
    error: function () {},
});

const list = document.createElement("ul");
list.classList.add("res");
res.appendChild(list);

//pagination required here
function getTourData(e) {
    i = 0;
    let data = e.target.value;
    if (data.length > 2) {
        list.style.display = "block";
        $.ajax({
            type: "GET",
            url: site_url + "/tours?_start=1&_end=4",
            contentType: "application/json",
            success: function (data) {
                data.forEach((d) => {
                    const tour = document.createElement("li");
                    tour.classList.add("tourList");
                    tour.innerText = d.tourName;
                    list.appendChild(tour);
                });

                console.log(data);
            },
            error: function () {},
        });
    } else {
        list.style.display = "none";
    }
}
//poweredby
// poweredby.innerHTML = `<a href="https://www.triplocator.com">Powered by triplocator.com</a>`;
// poweredby.classList.add("poweredby");
// console.log(poweredby);

// window.onscroll = function (){stickNav()};
// var searchHeader = document.querySelector(".search-box");
// var sticky = searchHeader.offsetTop;
// function stickNav(){
//     if(window.pageYOffset>sticky){
//         searchHeader.classList.add("sticky");
//     }else{
//         searchHeader.classList.remove("sticky");
//     }
// }
