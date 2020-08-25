const itinerary = document.querySelector(".itinerary-wrapper");
const costInclude = document.querySelector(".cost_include");
const costExclude = document.querySelector(".cost_exclude");

var site_url = "http://localhost:3000";
$(document).ready(function () {
  $(".tour-date").datepicker({ numberOfMonths: [1, 1] });
});
$.ajax({
  type: "GET",
  url: site_url + "/images",
  contentType: "applicaiton/json",
  success: function (data) {
    // populateImageSliderData(data);
  },
});

$.ajax({
  type: "GET",
  contentType: "application/json",
  url: site_url + "/simpleItinerary",
  success: function (data) {
    $(".itinerary-wrapper").append(data.itinerary);
  },
});

$.ajax({
  type: "GET",
  contentType: "application/json",
  url: site_url + "/priceInclude",
  success: function (data) {
    $(".cost_include").append(data.tripPriceInclude);
  },
});
$.ajax({
  type: "GET",
  contentType: "application/json",
  url: site_url + "/priceExclude",
  success: function (data) {
    $(".cost_exclude").append(data.priceExclude);
  },
});
$.ajax({
  type: "GET",
  contentType: "application/json",
  url: site_url + "/additonalServices",
  success: function (data) {
    $(".addtional-service").append(data.service);
  },
});
// TODO: check if the itinerary is simple or advanced
//after data fetch
// populateDepartureDate("test");
// function populateDepartureDate(fixedDeparture) {
//   var tableHtml =
//     "<thead> \n <tr> \n <th>Start From</th> <th>End In</th><th>Status</th><th>Price(P/P)</th>";
//   $(".table").html(tableHtml);
// }
$(document).ready(function () {
  // for faq
  $.ajax({
    url: site_url + "/faqs",
    type: "GET",
    contentType: "application/json",
  }).done(function (json) {
    var faqHtml = "";
    if (json.length === 0) {
      $("#faq").append(
        '<div class="panel-group" id="accordion" aria-multiselectable="true"><strong>No Faq Available</strong></div>'
      );
    } else {

    }
  })
     
});


var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}