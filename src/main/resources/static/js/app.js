const header = document.querySelector("#header");
const mainHeader = document.querySelector("#main-header");
const tourList = document.querySelector("#tour-list");
const searchBtn = document.querySelector("#search-btn");
const resultDiv = document.querySelector("#result");
const result = document.querySelector(".search-result");
const disTours = document.querySelector("#tour-offers");
const poweredby = document.querySelector(".poweredby");
const res = document.querySelector(".result");
const tourName = document.querySelector(".tour-type");
const tourDate = document.querySelector(".tour-date");
const name = document.querySelector("#search");
// searchBtn.addEventListener("click", fetchData);
// tourName.addEventListener("keyup", getTourData);

const site_url = "http://localhost:3000";
header.style.background = "#78ba36";
mainHeader.style.background = "#78ba36";
header.style.height = "75vh";
$(document).ready(function () {
    $(".tour-date").datepicker({ numberOfMonths: [1, 1] });
});

tourList.classList.add("tour-list");
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
disTours.classList.add("tour-list");
$.ajax({
    type: "GET",
    url: site_url + "/tours",
    contentType: "application/json",
    success: function (data) {
        data.forEach((json) => {
            const tours = document.createElement("div");
            tours.classList.add("tours");
            disTours.appendChild(tours);
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

function fetchData(e) {
    e.preventDefault();
    console.log(tourName.value);
    console.log(tourDate.value);
    console.log(e);
}

const list = document.createElement("ul");
list.classList.add("res");
res.appendChild(list);

//pagination required here
function getTourData(e) {
    i = 0;
    let data = e.target.value;
    if (data.length > 2) {
        list.style.display = "block";
        if (list.childNodes.length > 0) {
            list.innerHTML = "";
        }
        $.ajax({
            type: "GET",
            url: site_url + "/tours?_start=1&_end=6",
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
poweredby.innerHTML = `<a href="https://www.triplocator.com">Powered by triplocator.com</a>`;
poweredby.classList.add("poweredby");

//search using jquery
$(function () {
    $.widget("custom.catcomplete", $.ui.autocomplete, {
        _create: function () {
            this._super();
            this.widget().menu(
                "option",
                "items",
                "> :not(.ui-autocomplete-category)"
            );
        },
        _renderMenu: function (ul, items) {
            var that = this,
                currentCategory = "";
            $.each(items, function (index, item) {
                var li;
                if (item.category != currentCategory) {
                    ul.append(
                        "<li class='ui-autocomplete-category'>" + item.category + "</li>"
                    );
                    currentCategory = item.category;
                }
                li = that._renderItemData(ul, item).addClass(item.category);
                if (item.category) {
                    li.attr("aria-label", item.category + " : " + item.label);
                }
            });
        },
    });
});
//TODO:on click goes directly to the triplocator tour page
//DO NOT REMOVE THIS
// $.ui.autocomplete.prototype._renderItemData = function (ul, item) {
//   var a = $("<a>", {
//     href: item.url, //append domain name if not appended from backend
//     text: item.label,
//     class: "custom-link",
//   });
//   var $li = $("<li>");
//   console.log($li.append(a).data("item.autocomplete", item).appendTo(ul));
//   return $li.append(a).data("item.autocomplete", item).appendTo(ul);
// };

$(function () {
    $("#search").catcomplete({
        delay: 0,
        // minLength: 4,
        source: function source(request, response) {
            var data;
            var userquerycriteria = $("#search").val();
            query = userquerycriteria;

            $.ajax({
                type: "GET",
                url: site_url + "/data",
                // data: userquerycriteria,
                contentType: "application/json",

                success: function (response) {
                    data = response;
                },
                async: false,
            });
            var results = $.ui.autocomplete.filter(data, request.term);
            response(results.slice(0, 5));
        },
        open: function open(event, ui) {
            var str1 = site_url + "/search-result/";

            var res = str1.concat(query);

            $(".ui-autocomplete").append(
                "<a href=" +
                res +
                ' class="view_all"><i class="fa fa-search"></i> See All Result</a>'
            );
        },
    });

    $(".search-btn").on("click", function (e) {
        //TODO: send tourdate and name to backend for search
        //tourname can be get as name.value and date as tourDate.value

        e.preventDefault();
        var searchTag = $("#search").val();
        // var site_url = $(".url").val();
        // if (searchTag.trim().length > 0) {
        //   window.location.href = site_url + "/search-result/" + searchTag;
        // }
    });
});
