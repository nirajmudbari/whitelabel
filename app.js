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
    populateImageSliderData(data);
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
//TODO: check if the itinerary is simple or advanced
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
      json.forEach((data) => {
        faqHtml = `<button class="accordion">${data.question}</button><div class="panel" id="panel-${data.id}"><p>${data.answer}</p></div>`;
        $("#faq").append(faqHtml);
      });
      var acc = document.querySelectorAll(".accordion");
      for (let i = 0; i < acc.length; i++) {
        var activePanel;
        acc[i].addEventListener("click", function () {
          this.classList.toggle("active");
          var panel = this.nextElementSibling;
          if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
          } else {
            if (activePanel) {
              activePanel.style.maxHeight = null;
            }
            panel.style.maxHeight = panel.scrollHeight + "px";
            activePanel = panel;
          }
        });
      }
    }
  });
  $.ajax({
    type: "GET",
    contentType: "application/json",
    url: site_url + "/policy",
    success: function (data) {
      var policyHtml;
      policyHtml = `<button class="policy-accordion"><h4>CANCELLATION POLICY</h4></button><div class="policy-panel"><p>${data.cancellation}</p></div>`;
      $("#policy").append(policyHtml);
      var acc = document.querySelector(".policy-accordion");
      acc.addEventListener("click", function () {
        var panel = acc.nextElementSibling;
        if (panel.style.maxHeight) {
          panel.style.maxHeight = null;
        } else {
          panel.style.maxHeight = panel.scrollHeight + "px";
        }
      });
    },
  });
});
$.ajax({
  type: "GET",
  contentType: "application/json",
  url: site_url + "/tripNotes",
  success: function (data) {
    $("#note").append(data.tripNotes);
  },
});

//for fixed nav
jQuery(function ($) {
  $(window).scroll(
    (function fix_element() {
      var position = $(this).scrollTop();

      $(".section").each(function () {
        var target = $(this).offset().top;
        var id = $(this).attr("id");
        if (position >= target) {
          $("#navigation > ul > li > a").removeClass("active");
          $("#navigation > ul > li > a[href=#" + id + "]").addClass("active");
        }
      });

      $("#nav").css(
        $(window).scrollTop() > 400
          ? {
              zIndex: 1,
              position: "fixed",
              top: "50px",
            }
          : { position: "relative", top: "auto" }
      );
      $(".booking").css(
        $(window).scrollTop() > 400
          ? {
              zIndex: 1,
              position: "fixed",
              top: "50px",
            }
          : { position: "relative", top: "auto" }
      );

      return fix_element;
    })()
  );
});
