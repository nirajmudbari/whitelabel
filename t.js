webpackJsonp([0], [
  /* 0 */,
  /* 1 */,
  /* 2 */,
  /* 3 */,
  /* 4 */,
  /* 5 */,
  /* 6 */,
  /* 7 */,
  /* 8 */,
  /* 9 */,
  /* 10 */,
  /* 11 */,
  /* 12 */,
  /* 13 */,
  /* 14 */,
  /* 15 */,
  /* 16 */,
  /* 17 */
  /***/ (function (module, __webpack_exports__, __webpack_require__) {

      "use strict";
      Object.defineProperty(__webpack_exports__, "__esModule", {value: true});
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_0__css__ = __webpack_require__(18);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_1__package_inline__ = __webpack_require__(23);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_1__package_inline___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1__package_inline__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_2__package_slider__ = __webpack_require__(24);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_2__package_slider___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2__package_slider__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_3__populate_itinerary__ = __webpack_require__(25);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_3__populate_itinerary___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3__populate_itinerary__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_4__likecomment__ = __webpack_require__(26);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_4__likecomment___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4__likecomment__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_5__increment_decrement__ = __webpack_require__(27);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_5__increment_decrement___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5__increment_decrement__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_6__package_addon_price__ = __webpack_require__(28);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_6__package_addon_price___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6__package_addon_price__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_7__mail_script__ = __webpack_require__(29);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_7__mail_script___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7__mail_script__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_8__send_to_message__ = __webpack_require__(30);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_8__send_to_message___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_8__send_to_message__);
      /* Styles */


//  import "./review-comment";
//  import "./upload-image";
//  import "./trip-util";
//  import "./print-page";
//  import "./submit-review";

//  import "./review-comment-like";

      /***/
  }),
  /* 18 */
  /***/ (function (module, __webpack_exports__, __webpack_require__) {

      "use strict";
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_0_map_icons_dist_css_map_icons_css__ = __webpack_require__(19);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_0_map_icons_dist_css_map_icons_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_map_icons_dist_css_map_icons_css__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_1_bootstrap_star_rating_css_star_rating_css__ = __webpack_require__(20);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_1_bootstrap_star_rating_css_star_rating_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_bootstrap_star_rating_css_star_rating_css__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_2__package_css__ = __webpack_require__(21);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_2__package_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2__package_css__);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_3__fixed_departure_date_css__ = __webpack_require__(22);
      /* harmony import */
      var __WEBPACK_IMPORTED_MODULE_3__fixed_departure_date_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3__fixed_departure_date_css__);


      /***/
  }),
  /* 19 */
  /***/ (function (module, exports) {

// removed by extract-text-webpack-plugin

      /***/
  }),
  /* 20 */
  /***/ (function (module, exports) {

// removed by extract-text-webpack-plugin

      /***/
  }),
  /* 21 */
  /***/ (function (module, exports) {

// removed by extract-text-webpack-plugin

      /***/
  }),
  /* 22 */
  /***/ (function (module, exports) {

// removed by extract-text-webpack-plugin

      /***/
  }),
  /* 23 */
  /***/ (function (module, exports) {

      var _window = window,
          jQuery = _window.jQuery,
          $ = _window.$,
          moment = _window.moment;


      (function ($) {
          var siteUrl = $(".url").val();
          var _window2 = window,
              moment = _window2.moment;


          $("#package-qr-list").removeClass("hidden");
          var tripId = $(".hiddentripId").val();
          var token = $("meta[name='_csrf']").attr("content");

          $(document).ready(function () {
              // getUserBuyStatus();
              var pickTimePackageDetail = $("#pickTimePackageDetail").data("time");
              var parsedPickTimePackageDetail = moment(pickTimePackageDetail, "HH:mm").format("hh:mm A");
              $("#pickTimePackageDetail").data("time", parsedPickTimePackageDetail).html("<span>Pickup time: </span> " + parsedPickTimePackageDetail);
              var startTimePackageDetail = $("#startTimePackageDetail").data("time");
              var parsedStartTimePackageDetail = moment(startTimePackageDetail, "HH:mm").format("hh:mm A");
              $("#startTimePackageDetail").data("time", parsedStartTimePackageDetail).html("\n        <span>Activity start time: </span> " + parsedStartTimePackageDetail + "\n      ");
          });

          /* Loop over all meeting time and format them */
          $(".td-meet-time").each(function () {
              var $this = $(this);
              var oldTime = $this.data("meet-time");
              var newTime = "-";
              if (oldTime) {
                  newTime = formatTime(oldTime);
              }
              $this.html(newTime);
          });

          var simPackageEl = "#similar_package_01";
          var simPackageEp = "/tour/get-similar-trip";

          $.getJSON(siteUrl + simPackageEp, function (data) {
              populateSimilarPackage(simPackageEl, data);
          }).error(function () {
              removeSpaceAboveRecent();
          });

          // For social share icon
          // $(window).scroll(function() {
          //   var packageHeight = $('#mainDivForPackage').height();
          //   if ($('#contact-buttons-bar').offset().top >= packageHeight) {
          //     $("#contact-buttons-bar").addClass("hidden");
          //   } else {
          //     $("#contact-buttons-bar").removeClass("hidden");
          //   }
          // });

          getSocialShareData();

          function getSocialShareData() {
              $.ajax({
                  type: "GET",
                  url: siteUrl + "/tour/api/tour/get/social/share/" + tripId,
                  contentType: "application/json",
                  headers: {"X-CSRF-TOKEN": token},
                  success: function success(data) {
                      if (data && data.length > 0) {
                          var buttons = {};
                          data.forEach(function (d, index) {
                              var data = Object.assign({}, d);
                              data.use = true;
                              data.extras = 'target="_blank" rel="noreferrer"';
                              data.class = "package-social-icon";
                              buttons[index] = data;
                          });

                          $.contactButtons({
                              buttons: buttons
                          });
                      }
                  }
              });
          }

          function populateSimilarPackage(sel, data) {
              var html = "";
              if (data.length > 0) {
                  $(".similar").html("\n        <h4 style=\"color: #244893;\">Similar Package</h4>\n        <ul class=\"product-list\" id=\"similar_package_01\"></ul>\n      ");
                  data.forEach(function (singlePlace) {
                      var place = Object.assign({}, singlePlace);
                      var starHtml = "";
                      var urL = siteUrl + place.url;
                      var locationUrl = siteUrl + "/" + place.locationUrl;
                      var countryUrl = siteUrl + "/" + place.countryUrl;
                      // console.log(urL);
                      var ribbon = "";
                      place.minAmount = Number(place.minAmount);
                      place.oldAmount = Number(place.oldAmount);

                      if (place.discount > 0) {
                          ribbon = "\n            <div class='ribbon danger'>\n              <span> " + place.discount + " % Discount</span> \n            </div>\n          ";
                          place.oldAmount = place.minAmount;
                          place.minAmount -= place.minAmount / 100 * place.discount;
                      }

                      if (place.popularTour) {
                          ribbon = "<div class='ribbon success'> <span>Popular</span> </div>";
                      }

                      if (place.bestSellingTour) {
                          ribbon = "<div class='ribbon warning'> <span>Best Seller</span> </div>";
                      }

                      var cancellationHTML = "";
                      if (place.freeCancalation) {
                          cancellationHTML = '<span class="cancellation-policy"><i class="fa fa-check"></i>&nbsp;Free cancellation</span>';
                      }

                      var durationHTML = "<span class=\"cancellation-duration cap-text\"><strong><i class=\"fa fa-clock-o\"></i> " + checkDurationGrammar(place.duration, place.durationType) + "</strong></span>";

                      for (var i = 0; i < 5; i += 1) {
                          if (i < place.ratingStar) {
                              starHtml += '<i class="fa fa-star"></i>';
                          } else {
                              starHtml += '<i class="fa fa-star-o"></i>';
                          }
                      }

                      var wishClass = "fa-heart-o";
                      if (place.wishStatus) {
                          wishClass = "fa-heart shade";
                      }
                      var priceOldHTML = "";
                      if (place.oldAmount > 0) {
                          priceOldHTML = "<s class=\"money\" data-original-val=\"" + place.oldAmount + "\">" + place.oldAmount + "</s>";
                      }

                      var reviewText = checkReviewGrammar(place.review);
                      html += "<li class=\"col-sm-3\">\n                  <div class=\"item-wrap\">\n                    <div class=\"intro-img\">\n                      <a href=\"" + urL + "\">\n                        <img src=\"" + place.image + "\" class=\"fill\" alt=\"" + place.imageAlt + "\">\n                      </a>\n                      " + durationHTML + "\n                      " + cancellationHTML + "\n                      " + ribbon + "\n                      <button type=\"button\" class=\"btn fa " + wishClass + " wish\" title=\"Add to wish list\" data-type=\"tour\" data-id=\"" + place.tripId + "\"></button> \n                    </div>\n                    <div class=\"caption\"> \n                      <h4>\n                        <a href=\"" + urL + "\">\n                          " + place.tripName + "\n                        </a>\n                      </h4>\n                      <span class=\"by-des\">\n                        <a href=\"" + locationUrl + "\">" + place.locationName + "</a>,\n                        <a href=\"" + countryUrl + "\"> " + place.countryName + "</a>\n                      </span>\n                      <hr>\n                      <div class=\"fact-wrapper\">\n                      <span class=\"review\">\n                        " + starHtml + "\n                        <sub>\n                        " + reviewText + "\n                        </sub> \n                      </span>\n                      <span class=\"cost\"> \n                        <sub>From</sub>\n                        " + priceOldHTML + "\n                        <span class=\"money\" data-original-val=\"" + place.minAmount + "\">\n                        " + place.minAmount + "\n                        </span>\n                      </span>\n                    </div>\n                    <span class=\"fa fa-exchange compare\" title=\"Compare\" data-id=\"" + place.tripId + "\" data-recent=\"true\" data-url=\"" + urL + "\"></span>\n                    </div>\n                  </div>\n                </li>";
                  });

                  $(sel).html(html);
                  window.convertCurrency();
              } else {
                  removeSpaceAboveRecent();
              }
          }

          function checkReviewGrammar(cnt) {
              if (cnt) {
                  if (cnt === 1) {
                      return "1 Review";
                  }
                  return cnt + " Reviews";
              }
              return "0 Reviews";
          }

          function checkDurationGrammar(no, type) {
              var number = no;
              var durType = type;
              if (number === null || number === "" || number === undefined) {
                  number = 0;
              }
              if (durType === null || durType.trim() === "" || durType === undefined) {
                  durType = "day";
              }
              var text = number + " " + durType + "s";
              if (number === 1) {
                  text = number + " " + durType;
              }
              return text;
          }

          function removeSpaceAboveRecent() {
              $("#mainDivForPackage").css("margin-bottom", "-80px");
          }

          var html = "";
          $.getJSON($(".url").val() + "/getWebFeatutre", function (datas) {
              var features = datas.slice(0, 4);
              features.forEach(function (feature) {
                  var icon = feature.icon.split(" ");
                  html += "<li><div class=\"item-wrap\"> <i class=\"fa fa-" + icon + " icons\"></i><h4>" + feature.featureName + "</h4><p>" + feature.description + " </p></div></li>";
              });
              $(".services-list").html(html);
          });

          var tripdifficultStatus = $("#hiddentripgradingDifficulties").val();
          $("#difficulitesIcon").css("color", "#1b9951");
          if (tripdifficultStatus >= 4) {
              $("#difficulitesIcon").css("color", "#d82020");
              $("#difficulties").html("Difficult");
          }

          // toggle for cancellation
          $(".SeeMore2").click(function (e) {
              e.preventDefault();
              var $this = $(this);
              $this.toggleClass("SeeMore2");
              if ($this.hasClass("SeeMore2")) {
                  $this.focus();
                  $this.text("View More");
              } else {
                  $this.text("View Less");
              }
          });

          var start = new Date().getFullYear();
          var end = new Date().getFullYear() + 5;
          // const totalYear = end - start;
          while (start < end) {
              $("#depatureYear").append($("<option>", {
                  value: start,
                  text: "" + start
              }));
              start += 1;
          }
          $("#depatureYear").append($("<option>", {
              value: start,
              text: "" + start
          }));
      })(jQuery);

      $(document).ready(function () {
          // slick slide

          // owlCarousel
          // var owl = $("#custom-gallery");
          // owl.owlCarousel({
          //   items: 4,
          //   itemsDesktop: [1199, 4],
          //   itemsDesktopSmall: [979, 3],
          //   itemsTablet: [768, 2],
          //   itemsTabletSmall: true,
          //   itemsMobile: [479, 1],
          //   navigationText: [
          //     "<i class='fa fa-angle-left'></i>",
          //     "<i class='fa fa-angle-right'></i>"
          //   ],
          //   navigation: true,
          //   pagination: true
          // });

          // fixed nav top
          var fixedNavTop = $(".fixed-nav").offset().top;
          var fixedNavWidth = $(".fixed-nav").width();
          $(window).scroll(function () {
              $(".fixed-nav").addClass("fixed");
              $(".contain-box").css("margin-top", 82 + "px");
              if ($(document).scrollTop() < fixedNavTop + 450 || $(document).scrollTop() - ($("#faqs").height() + $("#cancellaction").height() + $("#note").height()) >= $(".contain-box").height()) {
                  $(".fixed-nav").removeClass("fixed");
                  $(".contain-box").css("margin-top", 0);
              }
          });
          $(".fixed-nav").css("width", fixedNavWidth + "px");

          // fixed availability block
          $(window).scroll(function () {
              var availabilityTopSpace = $(".right-page aside").offset().top;
              var asideHeight = $(".right-page aside").height();
              // const availability_width = $(".right-page aside").width();
              if ($(document).scrollTop() < availabilityTopSpace + asideHeight || $(document).scrollTop() >= $(".main-content").height()) {
                  $(".right-page .availability").removeClass("fixed");
              } else {
                  $(".right-page .availability").addClass("fixed");
              }
          });
          if ($(window).width() > 991) {
              var availabilityWidth = $(".right-page aside").width();
              $(".right-page .availability").css("width", availabilityWidth + "px");
          }
          if ($(window).width() <= 991) {
              $(".pravite-tour").on(".click", function () {
                  $(".right-page .availability").show(300);
                  $("#close_mobile_menu").fadeIn(700);
                  $("body").addClass("in");
              });
              $("#close_mobile_menu").on("click", function () {
                  $(".right-page .availability").hide(300);
                  $(this).fadeOut(400);
                  $("body").removeClass("in");
              });
          }

          // for mobile booking
          if ($(window).width() <= 991) {
              $(".pravite-tour").click(function () {
                  $(".right-page .availability").show(300);
                  $("#close_mobile_menu").fadeIn(700);
                  $("body").addClass("in");
              });
              $("#close_mobile_menu").on("click", function () {
                  $(".right-page .availability").hide(300);
                  $(this).fadeOut(400);
                  $("body").removeClass("in");
              });
          }

          // for departure
          /* $("#depatureMonth,#depatureYear").change(() => {
            const fixedDepartureSel = "#fixed_departure_01";
            const monthSelected = $("option:selected", $("#depatureMonth"));
            const yearSelected = $("option:selected", $("#depatureYear"));
            const url = $(".url").val();
            const tripId = $(".hiddentripId").val();
            $.ajax({
              type: "GET",
              url: `${url}/tour/getDepartureDatesByYearMonth`,
              data: {
                id: tripId,
                month: monthSelected.val(),
                year: yearSelected.val()
              },
              dataType: "json",
              contentType: "application/json",
              success(data) {
                populateDepartures(fixedDepartureSel, data);
              }
            });
          }); */
      });

      $("body").scrollspy({
          target: "#myScrollspy",
          offset: 170
      });

// $("[rdata-fancybox]").fancybox({
//   onInit: function(instance) {
//     instance.$refs.downloadButton = $(
//       '<a download class="fancybox-button fancybox-download"></a>'
//     ).appendTo(instance.$refs.buttons);
//   },
//   beforeMove: function(instance, current) {
//     instance.$refs.downloadButton.attr("href", current.src);
//   }
// });

      $("#price_calendar").on("shown.bs.modal", function () {
          $("#calendar").fullCalendar("today");
      });

      /* function getUserBuyStatus() {
        var token = $("meta[name='_csrf']").attr("content");
        $.ajax({
          type: "GET",
          url: $(".url").val() + "/tour/has/visited",
          data: {
            tripId: $(".hiddentripId").val()
          },
          dataType: "json",
          contentType: "application/json",
          headers: { "X-CSRF-TOKEN": token },
          success: function(data) {
            if (data == true) {
              $("#userTourBuyStatus").attr("value", "yes");
            } else {
              $("#userTourBuyStatus").attr("value", "no");
            }
          }
        });
      } */

      function formatTime(time) {
          return moment(time, "HH:mm").format("hh:mm A");
      }

      function getUser() {
          var res = window.__t$.u.getUser();
          if (res && res.isLoggedIn) {
              return {status: true, user: res};
          }
          return {status: false, user: null};
      }

      function checkUserStatusAndOpenModal($sel) {
          var checkUser = getUser();
          var userTourBuyStatus = $("#userTourBuyStatus").val();
          if (checkUser.status) {
              switch (userTourBuyStatus) {
                  case "yes":
                      $sel.modal();
                      break;
                  case "no":
                      openAndShowCheckingModal(true);
                      break;
                  default:
                      openAndShowCheckingModal(false);
                      setTimeout(function () {
                          checkUserStatusAndOpenModal($sel);
                      }, 2000);
              }
          }
      }

      function openAndShowCheckingModal(showBool) {
          var status = $("#buy_this_trip_modal").data("status");
          if (status === "close") {
              $("#buy_this_trip_modal").modal();
          }
          if (showBool) {
              $("#buyTourSpineerWrap").addClass("hidden");
              $("#buyTourErrorMessage").removeClass("hidden");
          }
      }

      document.addEventListener("DOMContentLoaded", function () {
          /* Inject CSS */
          var listOfCss = window.__package_css__;
          listOfCss.forEach(function (css) {
              loadStyleSheet(css);
          });
      });

      function loadStyleSheet(src) {
          if (document.createStyleSheet) {
              document.createStyleSheet(src);
          } else {
              $("head").append("<link rel='stylesheet' href='" + src + "' type='text/css' media='screen' />");
          }
      }

      window.checkUserStatusAndOpenModal = checkUserStatusAndOpenModal;

      /***/
  }),
  /* 24 */
  /***/ (function (module, exports) {

      var _window = window,
          $ = _window.$,
          google = _window.google;


      var alternateLatitude = Number($("#alternate-latitude").val());
      var alternateLongitude = Number($("#alternate-longitude").val());
      var pickLatitude = Number($("#destination-latitude").val());
      var pickLongitude = Number($("#destination-longitude").val());
      if (pickLatitude === 0 || pickLongitude === 0) {
          pickLatitude = alternateLatitude;
          pickLongitude = alternateLongitude;
      }
      var siteUrl = $(".url").val();
      var tripId = $(".hiddentripId").val();

      var tripImages = window.__package_images__;
      if (tripImages && tripImages.length > 0) {
          populateImageSliderData(tripImages);
      }

      $(document).ready(function () {
          // for faq
          $.ajax({
              url: siteUrl + "/tour/api/tour/get/faq/" + tripId,
              type: "GET",
              contentType: "application/json"
          }).done(function (json) {
              var faqHtml = "";
              if (json.length === 0) {
                  $("#faqs").append('<div class="panel-group" id="accordion" aria-multiselectable="true"><strong>No Faq Available</strong></div>');
              } else {
                  json.forEach(function (faq, index) {
                      if (faq) {
                          var faqCollapseId = "collapse-faq-" + index + "-" + faq.id;
                          if (index === 0) {
                              faqHtml += "\n            <div class=\"panel\">\n              <h5>\n                <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#" + faqCollapseId + "\" aria-expanded=\"true\" class=\"collapsed\">\n                " + faq.faqQuestion + "\n                </a> \n              </h5>\n              <div id=\"" + faqCollapseId + "\" class=\"panel-collapse collapse in\" aria-expanded=\"true\">\n                <div class=\"panel-body\">\n                <p>" + faq.faqAnswer + "</p>\n                </div>\n              </div>\n            </div>";
                          } else {
                              faqHtml += "\n            <div class=\"panel\">\n              <h5>\n                <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#" + faqCollapseId + "\" aria-expanded=\"false\" class=\"collapsed\">\n                  " + faq.faqQuestion + "\n                </a>\n              </h5>\n              <div id=\"" + faqCollapseId + "\" class=\"panel-collapse collapse\" aria-expanded=\"false\" style=\"height: 0px;\">\n                <div class=\"panel-body\">\n                  <p>\n                    " + faq.faqAnswer + "\n                  </p>\n                </div>\n              </div>\n            </div>";
                          }
                      }
                  });
                  $("#faqs").append("<div class=\"panel-group\" id=\"accordion\" aria-multiselectable=\"true\">" + faqHtml + "</div>");
              }
          });

          // for recently viewed track
          var recentId = $(".hiddentripId").val();
          var recentVisit = [];
          var isInLocal = false;
          for (var i = 0; i < 4; i += 1) {
              var local = localStorage.getItem(i);
              if (local !== recentId) {
                  if (local != null) {
                      recentVisit.push(local);
                  }
              } else {
                  recentVisit.push(local);
                  isInLocal = true;
              }
          }

          if (!isInLocal) {
              if (recentVisit.length === 4) {
                  localStorage.setItem("0", recentVisit[1]);
                  localStorage.setItem("1", recentVisit[2]);
                  localStorage.setItem("2", recentVisit[3]);
                  localStorage.setItem("3", recentId);
              } else {
                  localStorage.setItem(recentVisit.length, recentId);
              }
          }
      });

      function populateImageSliderData(images) {
          $("#media").html('<div class="slick-gallery-slideshow">' + '<div class="slider gallery-slideshow">' + "</div>" + '<div class="slider gallery-nav">' + "</div>");

          var sliderHTML = "";
          var slideNavHTML = "";
          var printImageHtml = "";

          images.forEach(function (media) {
              if (media.type === "image") {
                  printImageHtml += "\n        <div class=\"print-single-image\">\n          <img src=\"" + media.url + "\">\n        </div>\n      ";

                  sliderHTML += "\n        <div>\n          <div class=\"image\">\n            <img \n            src=\"" + media.url + "\" \n            alt=\"" + media.caption + "\"/>\n          </div>\n        </div>\n      ";

                  slideNavHTML += "\n      <div>\n        <div class=\"image\">\n          <img src=\"" + media.url + "\" alt=\"" + media.caption + "\" />\n        </div>\n      </div>";
              } else if (media.type === "video") {
                  var videoURL = "";
                  if (media.videoHost === "youtube") {
                      var videoArr = media.videoUrl.split("=");
                      var videoId = videoArr[0];
                      videoURL = "https://www.youtube.com/embed/" + videoId;
                  } else if (media.videoHost === "dailymotion") {
                      var _videoArr = media.videoUrl.split("/");
                      var _videoId = _videoArr[_videoArr.length - 1];
                      videoURL = "https://www.dailymotion.com/embed/video/" + _videoId;
                  } else if (media.videoHost === "vimeo") {
                      var _videoArr2 = media.videoUrl.split("/");
                      var _videoId2 = _videoArr2[_videoArr2.length - 1];
                      videoURL = "https://player.vimeo.com/video/" + _videoId2;
                  }
                  if (videoURL !== "") {
                      sliderHTML += "\n        <div>\n          <div class=\"image\">\n            <iframe class=\"sliderVideoTop\" class=\"embed-responsive-item\" src=\"" + videoURL + "\" alt=\"Image\" />\n            </iframe>\n          </div>\n        </div>";

                      slideNavHTML += "\n        <div>\n          <div class=\"image\">\n            <img \n            style=\"height:67px;\" \n            src=\"" + media.url + "\" \n            alt=\"" + media.caption + "\" />\n          </div>\n        </div>";
                  }
              }
          });
          $("#print-images").html(printImageHtml);

          $(".gallery-slideshow").html(sliderHTML);
          $(".gallery-nav").html(slideNavHTML);

          $(".gallery-slideshow").slick({
              slidesToShow: 1,
              slidesToScroll: 1,
              speed: 500,
              arrows: true,
              fade: true,
              asNavFor: ".gallery-nav"
          });
          $(".gallery-nav").slick({
              slidesToShow: 7,
              slidesToScroll: 1,
              speed: 500,
              asNavFor: ".gallery-slideshow",
              dots: false,
              centerMode: false,
              focusOnSelect: true,
              infinite: true,
              responsive: [{
                  breakpoint: 1199,
                  settings: {
                      slidesToShow: 7
                  }
              }, {
                  breakpoint: 991,
                  settings: {
                      slidesToShow: 5
                  }
              }, {
                  breakpoint: 767,
                  settings: {
                      slidesToShow: 5
                  }
              }, {
                  breakpoint: 480,
                  settings: {
                      slidesToShow: 3
                  }
              }]
          });
      }

// let imageLongitude = 0;
// let imageLatitude = 0;
// const longLatArr = [];

      function initMap() {
          var simple = $("#tour-itinerary").data("simple");
          var itinerary = $("#tour-itinerary").data("itinerary");
          // const days = $("#tour-itinerary").data("days");
          // const value = $("#tour-itinerary").val();
          // const mapJsonObj;
          if (simple || !itinerary && simple === "") {
              var data = {
                  longitude: pickLongitude,
                  latitude: pickLatitude
              };
              displaySimpleMap(data);
          } else {
              var jsonData = window.__advanced_itinerary;
              var _data = [];
              jsonData.forEach(function (t, index) {
                  var obj = {
                      index: index,
                      longitude: t.longitude,
                      latitude: t.latitude,
                      location: t.tourItinaryLocation
                  };
                  _data.push(obj);
              });
              if (_data.length === 1) {
                  var mapObj = {
                      longitude: _data[0].longitude,
                      latitude: _data[0].latitude
                  };
                  displaySimpleMap(mapObj);
              } else {
                  displayAdvanceMap(_data);
              }
          }
      }

      function displayAdvanceMap(mapData) {
          var directionsService = new google.maps.DirectionsService();
          var directionsDisplay = new google.maps.DirectionsRenderer();
          var map = new google.maps.Map(document.getElementById("map"), {
              zoom: 6,
              center: {
                  lat: mapData[0].latitude,
                  lng: mapData[0].longitude
              }
          });
          directionsDisplay.setMap(map);

          calculateAndDisplayAdvanceRoute(directionsService, directionsDisplay, mapData);
      }

      function calculateAndDisplayAdvanceRoute(directionsService, directionsDisplay, mapDataParam) {
          // filter data from map route
          var waypts = [];
          var mapData = [].concat(mapDataParam);
          var mapDataLength = mapData.length;
          mapData = mapData.sort(function (a, b) {
              return a.index - b.index;
          });
          var startingPoint = mapData[0].location;
          var endingPoint = mapData[mapDataLength - 1].location;
          mapData.forEach(function (point, i) {
              if (i !== 0 && i !== mapDataLength - 1) {
                  waypts.push({
                      location: point.location,
                      stopover: true
                  });
              }
          });
          // \.filter data from map route

          directionsService.route({
              origin: startingPoint,
              destination: endingPoint,
              waypoints: waypts,
              optimizeWaypoints: true,
              travelMode: "DRIVING"
          }, function (response, status) {
              if (status === "OK") {
                  directionsDisplay.setDirections(response);
              } else {
                  var mapObj = {
                      longitude: mapData[0].longitude,
                      latitude: mapData[0].latitude
                  };
                  displaySimpleMap(mapObj);
              }
          });
      }

      function displaySimpleMap(mapData) {
          var myLatLng = {
              lat: mapData.latitude,
              lng: mapData.longitude
          };

          var map = new google.maps.Map(document.getElementById("map"), {
              zoom: 12,
              center: myLatLng
          });

          var marker = new google.maps.Marker({
              position: myLatLng,
              map: map,
              title: "Pickup Location",
              label: {
                  text: "T",
                  color: "#ffffff"
              }
          });
          console.log(marker);
      }

      /* function calculateAndDisplaySimpleRoute(
        directionsService,
        directionsDisplay,
        mapObj
      ) {
        directionsService.route(
          {
            origin: mapObj,
            destination: mapObj,
            travelMode: "DRIVING"
          },
          (response, status) => {
            if (status === "OK") {
              directionsDisplay.setDirections(response);
            } else {
              imageLongitude = longLatArr.longitude;
              imageLatitude = longLatArr.latitude;
              image(imageLatitude, imageLongitude);
            }
          }
        );
      } */

      /* function image(lat, lon) {
        // dynamically add an image and set its attribute
        $("#map").remove();
        const img = document.createElement("img");
        img.src = `https://maps.googleapis.com/maps/api/staticmap?center=${lat},${lon}&zoom=12&size=400x250&markers=color:0x2a9a46%7Clabel:T%7C${lat},${lon}&key=AIzaSyAEnkZ8lbl6t09b0GSuvNd5tA11r69y74Q`;
        const foo = document.getElementById("static-map");
        foo.appendChild(img);
      } */

      /* function computeTotalDistance(result) {
        let total = 0;
        const myroute = result.routes[0];
        for (let i = 0; i < myroute.legs.length; i += 1) {
          total += myroute.legs[i].distance.value;
        }
        total /= 1000;
        document.getElementById("total").innerHTML = `${total} km`;
      } */

      window.initMap = initMap;

      /***/
  }),
  /* 25 */
  /***/ (function (module, exports) {

      var _window = window,
          $ = _window.$;


      $(document).ready(function () {
          // const siteUrl = $(".url").val();
          // const tripId = $(".hiddentripId").val();

          var simple = $("#tour-itinerary").data("simple");
          var itinerary = $("#tour-itinerary").data("itinerary");
          // const days = $("#tour-itinerary").data("days");
          // const value = window.__package_itinerary__;

          if (!simple && itinerary) {
              var json = window.__advanced_itinerary;
              $("#itinerary").html('<h4>Itinerary <span> Day</span></h4><div class="itinerary-item-wrapper"></div>');
              var itineraryHTML = "";
              json.sort(function (a, b) {
                  return Number(a.tourItineraryDay) - Number(b.tourItineraryDay);
              });
              json.forEach(function (itinerary, index) {
                  var stayMode = "";
                  if (itinerary.tripItinarySleepingMode && itinerary.tripItinarySleepingMode.toLowerCase() !== "none") {
                      if (itinerary.tripItinarySleepingMode.toLowerCase() === "hotel") {
                          stayMode = "\n          <li class=\"accommodation\">\n            Stay at \n            " + itinerary.tourHotelName + "  - " + itinerary.tourStarHotel + "  Star\n          </li>";
                      } else {
                          stayMode = "\n          <li class=\"accommodation\">\n            Stay at " + itinerary.tripItinarySleepingMode + "\n          </li>\n          ";
                      }
                  }
                  var tripItinaryDuration = itinerary.tourItineraryDuration + " " + itinerary.tourItineraryDurationType;

                  var transportationMode = "\n        <li>\n          <span class=\"map-icon " + itinerary.transportationIcon + "\">\n          </span>\n          " + itinerary.tripItinaryTransportationMode + "\n        </li>\n      ";
                  if (!itinerary.transportationIcon) {
                      transportationMode = "\n        <li class=\"transportation\">\n          " + itinerary.tripItinaryTransportationMode + "\n        </li>\n        ";
                  }
                  if (!itinerary.tripItinaryTransportationMode) {
                      transportationMode = "";
                  }

                  var tripMeal = "";
                  if (itinerary.tourMeal) {
                      tripMeal = "\n        <li>\n        <span class=\"fa fa-cutlery\">\n        </span>\n        " + itinerary.tourMeal + "\n        </li>\n        ";
                  }

                  if (index === 0) {
                      itineraryHTML += "\n        <div class=\"panel itinerary-item\">\n          <div class=\"panel-heading\">\n            <h5 class=\"panel-title\"> \n            <a \n              data-toggle=\"collapse\" \n              data-parent=\"#\"\n              href=\"#toggle-itinerary-" + itinerary.id + "\" \n              aria-expanded=\"true\">\n              <span>\n                " + itinerary.tourItineraryDay + "\n              </span>\n              " + itinerary.tourItineraryTitle + "\n            </a> \n            </h5>\n          </div>\n          <div \n          id=\"toggle-itinerary-" + itinerary.id + "\" \n          class=\"panel-collapse collapse in\" \n          aria-expanded=\"true\">\n            <div class=\"panel-body\">\n              <p>\n              " + itinerary.tourItineraryDescription + "\n              </p>\n              <ul class=\"itinerary-meta clearfix\">\n              <li class=\"location\">\n              " + itinerary.tourItineraryLocation + "\n              </li>\n              " + stayMode + "\n              <li class=\"time\">\n              " + tripItinaryDuration + "\n              </li>\n              " + transportationMode + "\n              " + tripMeal + "\n            </ul>\n          </div>\n        </div>\n      </div>";
                  } else {
                      itineraryHTML += "\n        <div class=\"panel itinerary-item\">\n          <div class=\"panel-heading\">\n            <h5 class=\"panel-title\"> \n              <a data-toggle=\"collapse\" data-parent=\"#\" \n              href=\"#toggle-itinerary-" + itinerary.id + "\" aria-expanded=\"true\">\n                <span>\n                  " + itinerary.tourItineraryDay + "\n                </span>\n                " + itinerary.tourItineraryTitle + "\n              </a> \n            </h5>\n          </div>\n          <div \n          id=\"toggle-itinerary-" + itinerary.id + "\" \n          class=\"panel-collapse collapse\" aria-expanded=\"true\">\n            <div class=\"panel-body\">\n            <p>\n              " + itinerary.tourItineraryDescription + "\n            </p>\n            <ul class=\"itinerary-meta clearfix\">\n              <li class=\"location\">\n                " + itinerary.tourItineraryLocation + "\n              </li>\n              " + stayMode + "\n              <li class=\"time\">\n                " + tripItinaryDuration + "\n              </li>\n                " + transportationMode + "\n                " + tripMeal + "\n            </ul>\n          </div>\n        </div>\n      </div>";
                  }
              });

              $(".itinerary-item-wrapper").append(itineraryHTML);
          }

          // $.ajax({
          //   url: siteUrl + "/api/tour/api/tour/get/itinerary/" + tripId,
          //   type: "GET",
          //   contentType: "application/json"
          // }).done(function(json) {
          //   if ($.isEmptyObject(json)) {
          //     $("#itineraryNavTab").remove();
          //   } else {
          //     if (json.simple == null) {
          //       $("#top-it-days").html(itGrammar(json.advance.length));

          //     } else {
          //       $("#itinerary").html(
          //         '<h4>Itinerary</h4><div class="itinerary-item-wrapper">' +
          //           json.simple +
          //           "</div>"
          //       );
          //       $("#top-it-days").html(itGrammar(json.day));
          //     }
          //   }
          // });

          /* function itGrammar(cnt) {
            if (cnt === null && cnt === undefined) {
              return "0 Days";
            }
             if (cnt === 1) {
              return "1 Day";
            }
             return `${cnt} Days`;
          } */
      });

      /***/
  }),
  /* 26 */
  /***/ (function (module, exports) {

      var _this = this;

      var _window = window,
          $ = _window.$;


      function getUser() {
          var res = window.__t$.u.getUser();
          if (res && res.isLoggedIn) {
              return {status: true, user: res};
          }

          return {status: false, user: null};
      }

// this is to check modal open event from dom
// $("#review_modal, #upload_image_modal").on("show.bs.modal", function() {
      $("#review_modal").on("show.bs.modal", function () {
          var modalIdSel = $(this);
          var userTourBuyStatus = $("#userTourBuyStatus").val();
          if (userTourBuyStatus === "yes") {
              return true;
          }

          window.checkUserStatusAndOpenModal(modalIdSel);
          return false;
          // var checkUser = getUser();
          // var userTourBuyStatus = $('#userTourBuyStatus').val();
          // if (checkUser.status) {
          //   return true;
          // } else {
          //   return false;
          // }
      });

      $("#buy_this_trip_modal").on("show.bs.modal", function () {
          $("#buy_this_trip_modal").data("status", "open");
      }).on("hide.bs.modal", function () {
          $("#buy_this_trip_modal").data("status", "close");
      });

      /* function tourBuyStatusCheck() {
        let userTourBuyStatus = $("#userTourBuyStatus").val();
      } */

      $(document).on("click", ".makeReviewBtn", function () {
          var checkUser = getUser();
          if (checkUser.status) {
              $("#reviewdBY").val($("#memberName").val());
              $("#tripID").val($(".hiddentripId").val());
              var memberId = Number($("#memberId").val());
              $("#memberID").val(memberId);
              var modalIdSel = $("#review_modal");
              window.checkUserStatusAndOpenModal(modalIdSel);
          }
      });

      $("#favoriteHolder").click(function () {
          var checkUser = getUser();
          var tripId = $(".hiddentripId").val();
          var totalWish = $("#favoriteHolder").data("count");
          if (!totalWish) {
              totalWish = 0;
          }
          if (checkUser.status) {
              var hasWished = false;
              if ($("#favTripIcon").hasClass("shade")) {
                  hasWished = true;
              }
              if (!hasWished) {
                  $("#favTripIcon").removeClass("fa fa-heart-o").addClass("fa fa-heart").addClass("shade");
                  totalWish += 1;
                  $("#favoriteHolder").data("count", totalWish);
                  $(".favTripText").html(favouriteGrammarCheck(totalWish));
                  var endPoint = "wishlist/" + tripId + "/save/tour";
                  toggleWish(endPoint);
              } else {
                  $("#favTripIcon").removeClass("fa fa-heart").removeClass("shade").addClass("fa fa-heart-o");
                  totalWish -= 1;
                  $("#favoriteHolder").data("count", totalWish);
                  $(".favTripText").html(favouriteGrammarCheck(totalWish));
                  var _endPoint = "wishlist/" + tripId + "/delete/tour";
                  toggleWish(_endPoint);
              }
          }
      });

      function toggleWish(endPoint) {
          var token = $("meta[name='_csrf']").attr("content");
          var siteUrl = $(".url").val();
          $.ajax({
              type: "POST",
              url: siteUrl + "/" + endPoint,
              dataType: "json",
              headers: {"X-CSRF-TOKEN": token},
              contentType: "application/json",
              success: function success() {
              }
          });
      }

      function favouriteGrammarCheck(cnt) {
          if (cnt) {
              if (cnt === 1) {
                  return "1 Favorite";
              }
              return "{cnt} Favorites";
          }
          return "0 Favorites";
      }

      $(".memberSignin").click(function () {
          var upassword = $("#login_password").val();
          var uemail = $("#login_username").val();
          var token = $("meta[name='_csrf']").attr("content");
          var siteUrl = $(".url").val();

          $.ajax({
              type: "GET",
              url: siteUrl + "/verify/member/modal",
              data: {
                  email: uemail,
                  password: upassword
              },
              dataType: "json",
              contentType: "application/json",
              headers: {"X-CSRF-TOKEN": token},
              success: function success() {
              }
          });
      });

      $(document).ready(function () {
          var cCount = $("#hiddentripReviewCount").val();
          if (cCount === "" || cCount == null || cCount === undefined) {
              cCount = 0;
          }

          for (var j = 0; j < cCount; j += 1) {
              $(".toggleComments" + j).on("click", function (e) {
                  e.preventDefault();
                  var a = $(_this).attr("toggleCommentId");
                  $(".commentBlock" + a).fadeToggle("fast");
              });
          }

          for (var k = 0; k < cCount; k += 1) {
              $(".commentBlock" + k).hide();
          }
      });

      /* function showModalAfterLogin(modalSel) {
        const siteUrl = $(".url").val();
        $.ajax({
          type: "GET",
          url: `${siteUrl}/tour/has/visited`,
          data: {
            tripId: $(".hiddentripId").val()
          },
          dataType: "json",
          contentType: "application/json",
          beforeSend: () => {
            $("#buy_this_trip_modal").modal("show");
          },
          success: data => {
            if (data === true) {
              $("#buy_this_trip_modal").modal("hide");
              $(modalSel).modal("show");
            }
            $("#buyTourSpineerWrap").addClass("hidden");
            $("#buyTourErrorMessage").removeClass("hidden");
          }
        });
      } */

      /***/
  }),
  /* 27 */
  /***/ (function (module, exports) {

      var _this = this;

// JavaScript Document
      var _window = window,
          $ = _window.$;

      var CHANGE_TYPE_SAME = "same_value_entered";
      var CHANGE_TYPE_DIFFERENT = "different_value_entered";

      $.widget("llapgoch.stepper", {
          options: {
              upSelector: ".btn-plus",
              downSelector: ".btn-minus",
              inputSelector: ".js-input",
              disabledClass: "disabled",
              maxQty: 999,
              minQty: 1,
              step: 1
          },

          // originalValue: null,
          // value: 0,

          _create: function _create() {
              _this._super();
              _this._addEvents();

              var val = _this._validateValue(_this._getInput().val());

              _this._getInput().val(val);

              _this.originalValue = val;
              _this.value = val;
          },

          disable: function disable() {
              _this._super();
              _this._getInput().prop("disabled", "disabled").addClass(_this.options.disabledClass);
              _this._getDownElement().addClass(_this.options.disabledClass);
              _this._getUpElement().addClass(_this.options.disabledClass);
          },

          enable: function enable() {
              _this._super();
              _this._getInput().removeProp("disabled").addClass(_this.options.disabledClass);
              _this._getDownElement().removeClass(_this.options.disabledClass);
              _this._getUpElement().removeClass(_this.options.disabledClass);
          },

          _validateValue: function _validateValue(v) {
              var val = v;
              val = parseFloat(val);
              val = Number.isNaN(val) ? 1 : val;
              return Math.max(_this.options.minQty, Math.min(val, _this.options.maxQty));
          },

          _addEvents: function _addEvents() {
              var self = _this;
              var events = {};

              events["click " + _this.options.upSelector] = function (ev) {
                  ev.preventDefault();
                  self.stepQuantity(self.options.step);
              };

              events["click " + _this.options.downSelector] = function (ev) {
                  ev.preventDefault();
                  self.stepQuantity(-self.options.step);
              };

              events["click " + _this.options.inputSelector] = function () {
                  var val = self._getInput().val();

                  if (val !== "" && !Number.isNaN(parseFloat(val))) {
                      self.updateQuantity(val);
                  }
              };

              events["blur " + _this.options.inputSelector] = function () {
                  self.updateQuantity(self.value);
              };

              _this._on(_this.element, events);
          },

          _fireEvent: function _fireEvent(eventName, event, d) {
              var data = d || {};

              _this._trigger(eventName, event, $.extend({}, data, {
                  element: _this.element
              }));
          },

          _fireUpdate: function _fireUpdate(ev) {
              var updateType = CHANGE_TYPE_SAME;

              if (_this.value !== _this.originalValue) {
                  updateType = CHANGE_TYPE_DIFFERENT;
              }

              _this._fireEvent("update", ev, {
                  value: _this.value,
                  updateType: updateType
              });
          },

          _getInput: function _getInput() {
              return $(_this.options.inputSelector, _this.element);
          },

          _getUpElement: function _getUpElement() {
              return $(_this.options.upSelector, _this.element);
          },

          _getDownElement: function _getDownElement() {
              return $(_this.options.downSelector, _this.element);
          },

          updateQuantity: function updateQuantity(quantity) {
              _this.value = _this._validateValue(quantity);
              _this._getInput().val(_this.value);
              _this._fireUpdate();
          },

          stepQuantity: function stepQuantity(value) {
              _this.updateQuantity(_this.value + value);
          },

          getValue: function getValue() {
              return _this.value;
          }
      });

      /***/
  }),
  /* 28 */
  /***/ (function (module, exports) {

      var privateDates = window.__package_private_date__;
      var nonOprationalDates = window.__package_non_ope_date__;

//Never remove this
//$(document).ready(function() {
      var site_url = $(".url").val();
      var token = $("meta[name='_csrf']").attr("content");
      var tripId = $(".hiddentripId").val();
      var tripName = $(".hiddentripName").val();
      var noOfCutOffDays = Number($(".hiddentripCutOff").val());
      /* Adding 1 extra day to stop booking due to timezone issue */
      noOfCutOffDays++;
      var agentId = $("#agentId").val();
      var unAvailabeDates = [];
      var tempAddonWidgetData = [];
      var adultAgeRetailPrice;
      var travelArr = [];
      var discount = 0;
      var savedAmt = 0;
      var prevAdultAmt = 0;
      var discountStatus = "";
      var tripStartTime = null;

      $("#datepicker").datepicker({
          beforeShow: function beforeShow(textbox, instance) {
              $(".availability .form-group.date").append($("#ui-datepicker-div"));
          },
          beforeShowDay: function beforeShowDay(date) {
              var check = isDateIsInRange(date);
              return !check ? [true, "date-pick-tooptip ui-datepicker-unselectable ui-state-disabled", "Unavailabe Date"] : [true, "", ""];
          },
          todayHighlight: true,
          minDate: addDays()
      });

      $("td.ui-datepicker-unselectable.ui-state-disabled").tooltip();

//New JS from here
      $("#datepicker").change(function () {
          $(".success_block").fadeOut("fast");
          travelArr = ["adult", "child", "infant", "student", "senior", "military"];
          travelArr.map(function (travel) {
              $("#" + travel + "-small").data("original-val", 0);
              convertCurrency("#" + travel + "-small");
              $("#inputtra-" + travel + "").attr("value", 0);
              $(".select_date").css("display", "none");
              $(".sorry_message").css("display", "none");
          });
          $("#privateStartTime").html("");

          $(".total").find("big").data("original-val", 0);
          $("#saved-small").data("original-val", 0);
          $("#saved-cost").attr("display", "none");
          convertCurrency("#totalMoney");
          $("#booking_btn").css("display", "none");
          $("#checkPrivateTour").css("display", "block");
      });

      $(".availability").on("click", ".btn-plus", function () {
          var $this = $(this);
          if ($this.data("addon")) {
              var maxVal = $this.data("max");
              var parentId = $this.parent().parent().attr("id");
              var parentIdArr = parentId.split("-");
              var inpVal = $("#inputtra-" + parentIdArr[1]).val();
              //if( inpVal < maxVal ){
              incrementNum($this);
              checkBookNowButton();
              hideIfPriceZero();
              //}
          } else {
              incrementNum($this);
              checkBookNowButton();
              hideIfPriceZero();
          }
      });

      $(".availability").on("click", ".btn-minus", function () {
          var $this = $(this);
          decrementNum($this);
          checkBookNowButton();
          hideIfPriceZero();
      });

      $("#checkPrivateTour").on("click", function () {
          //$('#sandbox-container').hide();

          //Formatting date from api call
          var tempDateArr = $("#datepicker").val().split("/");
          var selectedDate = tempDateArr[2] + "-" + tempDateArr[0] + "-" + tempDateArr[1];
          if (tempDateArr[0] == "") {
              $(".select_date").css("display", "block");
          } else {
              $.ajax({
                  url: site_url + "/tour/api/check/private/tour?id=" + tripId + "&tripDate=" + selectedDate,
                  type: "GET",
                  contentType: "application/json",
                  headers: {
                      "X-CSRF-TOKEN": token
                  },
                  beforeSend: function beforeSend() {
                      $("#checkPrivateTour").html("Checking").attr("disabled", "disabled");
                  },
                  error: function error() {
                      $(".sorry_message").css("display", "block");
                      $("#checkPrivateTour").html("Check availability").removeAttr("disabled");
                  },
                  success: function success(addonWidgetData) {
                      $("#checkPrivateTour").html("Check availability").removeAttr("disabled");
                      $("#checkPrivateTour").hide();
                      $(".success_block").fadeIn(500);
                      $("#booking_btn").css("display", "block");

                      if (addonWidgetData.times != null) {
                          if (addonWidgetData.times.length === 1) {
                              $("#privateStartTime").html("<p class=\"text-success\"><b><i class=\"fa fa-clock\"></i> Start Time : " + formatTime(addonWidgetData.times[0]) + "</b></p>");
                              tripStartTime = addonWidgetData.times[0];
                          } else {
                              var timeHTML = "";
                              addonWidgetData.times.map(function (t) {
                                  timeHTML += "<option value=\"" + t + "\">" + formatTime(t) + "</option>";
                              });
                              $("#privateStartTime").html("\n              <div class=\"form-group\">\n                <label class=\"control-label\">Select Start Time</label>\n                <select class=\"form-control\" id=\"selectStartTime\">\n                    <option value=\"\" disabled selected>Start Time</option>\n                    " + timeHTML + "\n                </select>\n              </div>\n              ");
                          }
                      }

                      showGroupPriceRange(addonWidgetData.tripPerPerson);

                      tempAddonWidgetData = addonWidgetData; //to use on sending data
                      discount = addonWidgetData.discount;
                      if (addonWidgetData.tripPerPerson != null || addonWidgetData.tripPerPerson != undefined) {
                          addonWidgetData.tripPerPerson.sort(function (a, b) {
                              return a.fromValue - b.fromValue;
                          });
                      }

                      checkBookNowButton();
                      populateAddons();

                      if (addonWidgetData.numberStatus == 1) {
                          prevAdultAmt = addonWidgetData.tripPerPerson[0].retailRatePerPerson;
                          displayAgeLimit();
                          hideInfantAndAddon();
                          hideIfPriceZero();
                          displayTotalPrice();
                      } else {
                          hideAllAndShowPerson();
                          hideOnlyAddon();
                          displayTotalPriceOfPerson();
                      }

                      function displayAgeLimit() {
                          $("#infant-sup").html("( From " + addonWidgetData.tripperPersonRate.infantAgeFrom + " to " + addonWidgetData.tripperPersonRate.infantAgeTo + " )");
                          $("#child-sup").html("( From " + addonWidgetData.tripperPersonRate.childAgeFrom + " to " + addonWidgetData.tripperPersonRate.childAgeTo + " )");
                          $("#senior-sup").html("( Above " + addonWidgetData.tripperPersonRate.seniorAgeFrom + " )");
                      }

                      function populateAddons() {
                          //Populate addons
                          var sideBarAddonHTML = "";
                          addonWidgetData.addonFeature.map(function (addon) {
                              sideBarAddonHTML += '<div class="form-group">' + "<label><b>" + addon.featureName + '</b> <small class="travel-price-small money pull-right" id="addon-money' + addon.id + '" data-original-val="' + addon.pricePerUnit + '"></small></label>' + '<div class="input-group" id="traveller-addon' + addon.id + '">' + '<span class="input-group-btn">' + '<button class="btn btn-minus" type="button"></button>' + "</span>" + '<input type="text" class="form-control" id="inputtra-addon' + addon.id + '" value="0" readonly>' + '<span class="input-group-btn">' + '<button class="btn btn-plus" type="button" data-addon="true" data-max="' + addon.accomodateUpTo + '"></button>' + "</span>" + "</div>" + "</div>";
                          });

                          $(".add_on_box").html(sideBarAddonHTML);

                          addonWidgetData.addonFeature.map(function (addOn) {
                              convertCurrency("#addon-money" + addOn.id);
                          });
                      }

                      // On Add
                      function incrementNum($this) {
                          var parentId = $this.parent().parent().attr("id");
                          var parentIdArr = parentId.split("-");

                          var inpVal = $("#inputtra-" + parentIdArr[1]).val();
                          if (inpVal == undefined) {
                              inpVal = "0";
                          }
                          var newInpVal = parseInt(inpVal) + 1;
                          $("#inputtra-" + parentIdArr[1]).attr("value", newInpVal.toString());

                          if (addonWidgetData.numberStatus == 1) {
                              showInfantAndAddon();
                              displayTotalPrice();
                          } else {
                              showOnlyAddon();
                              displayTotalPriceOfPerson();
                          }
                      }

                      // On Subtract
                      function decrementNum($this) {
                          var parentId = $this.parent().parent().attr("id");
                          var parentIdArr = parentId.split("-");
                          var inpVal = $("#inputtra-" + parentIdArr[1]).val();
                          if (inpVal >= 1) {
                              var newInpVal = parseInt(inpVal) - 1;
                              $("#inputtra-" + parentIdArr[1]).attr("value", newInpVal.toString());
                          }

                          if (addonWidgetData.numberStatus == 1) {
                              hideInfantAndAddon();
                              displayTotalPrice();
                          } else {
                              hideOnlyAddon();
                              displayTotalPriceOfPerson();
                          }
                      }

                      window.incrementNum = incrementNum;
                      window.decrementNum = decrementNum;
                      window.checkBookNowButton = checkBookNowButton;
                      window.hideIfPriceZero = hideIfPriceZero;

                      function displayTotalPrice() {
                          //For numberStatus 1

                          var adultNum = $("#inputtra-adult").val();
                          var seniorNum = $("#inputtra-senior").val();
                          var militaryNum = $("#inputtra-military").val();
                          var childNum = $("#inputtra-child").val();
                          var infantNum = $("#inputtra-infant").val();
                          var studentNum = $("#inputtra-student").val();

                          var maxAdultNum = addonWidgetData.tripPerPerson[addonWidgetData.tripPerPerson.length - 1];
                          if (maxAdultNum == 0) {
                              maxAdultNum = 50;
                          }
                          addonWidgetData.tripPerPerson.map(function (adultPrice, index) {
                              var maxToVal = adultPrice.toValue;
                              if (index == addonWidgetData.tripPerPerson.length - 1) {
                                  maxToVal = maxAdultNum;
                              }

                              // if (adultNum >= adultPrice.fromValue && adultNum <= maxToVal) {
                              if (adultNum >= adultPrice.fromValue && (adultNum <= maxToVal || maxToVal === 0)) {
                                  adultAgeRetailPrice = adultPrice.retailRatePerPerson;
                              }
                          });
                          if (adultAgeRetailPrice == undefined) {
                              adultAgeRetailPrice = 0;
                          }

                          var seniorAgeRetailPrice = addonWidgetData.tripperPersonRate.seniorAgeRetailPrice;
                          var childAgeRetailPrice = addonWidgetData.tripperPersonRate.childAgeRetailPrice;
                          var infantAgeRetailPrice = addonWidgetData.tripperPersonRate.infantAgeRetailPrice;
                          var retailPriceForMilitary = addonWidgetData.tripperPersonRate.retailPriceForMilitary;
                          var retailPriceForStudent = addonWidgetData.tripperPersonRate.retailPriceForStudent;

                          //this is for addon overall price
                          var totalAddonPrice = getAddonTotalPrice();
                          //var totalAddonSavedPrice = getAddonSavedPrice();
                          var totalAddonSavedPrice = 0;

                          var totalPersonPrice = 0;

                          totalPersonPrice = multiplyPrice(adultNum, adultAgeRetailPrice) + multiplyPrice(seniorNum, seniorAgeRetailPrice) + multiplyPrice(militaryNum, retailPriceForMilitary) + multiplyPrice(childNum, childAgeRetailPrice) + multiplyPrice(infantNum, infantAgeRetailPrice) + multiplyPrice(studentNum, retailPriceForStudent) + totalAddonPrice;

                          savedAmt = savedAmount(adultNum, adultAgeRetailPrice) + savedAmount(seniorNum, seniorAgeRetailPrice) + savedAmount(militaryNum, retailPriceForMilitary) + savedAmount(childNum, childAgeRetailPrice) + savedAmount(infantNum, infantAgeRetailPrice) + savedAmount(studentNum, retailPriceForStudent) + totalAddonSavedPrice + (prevAdultAmt * adultNum - adultAgeRetailPrice * adultNum);

                          if (isNaN(totalPersonPrice)) {
                              totalPersonPrice = 0;
                          }

                          $("#adult-small").data("original-val", multiplyPrice(adultNum, adultAgeRetailPrice));
                          $("#child-small").data("original-val", multiplyPrice(childNum, childAgeRetailPrice));
                          $("#infant-small").data("original-val", multiplyPrice(infantNum, infantAgeRetailPrice));
                          $("#student-small").data("original-val", multiplyPrice(studentNum, retailPriceForStudent));
                          $("#senior-small").data("original-val", multiplyPrice(seniorNum, seniorAgeRetailPrice));
                          $("#military-small").data("original-val", multiplyPrice(militaryNum, retailPriceForMilitary));

                          if (adultNum == 0) {
                              $("#adult-small").data("original-val", addonWidgetData.tripPerPerson[0].retailRatePerPerson);
                          } else {
                              $("#adult-small").data("original-val", adultAgeRetailPrice);
                          }
                          $("#child-small").data("original-val", childAgeRetailPrice);
                          $("#infant-small").data("original-val", infantAgeRetailPrice);
                          $("#student-small").data("original-val", retailPriceForStudent);
                          $("#senior-small").data("original-val", seniorAgeRetailPrice);
                          $("#military-small").data("original-val", retailPriceForMilitary);

                          formatAndDisplayPrice(totalPersonPrice);

                          travelArr.map(function (travel) {
                              convertCurrency("#" + travel + "-small");
                          });
                      }

                      function displayTotalPriceOfPerson() {
                          //For numberStatus 0

                          var personNum = $("#inputtra-adult").val();

                          var tripFlatRate = addonWidgetData.tripFlat.tripFlatRate;

                          var totalPersonPrice = 0;

                          totalPersonPrice = multiplyPrice(personNum, tripFlatRate) + getAddonTotalPrice();
                          //var totalAddonSavedPrice = getAddonSavedPrice();
                          var totalAddonSavedPrice = 0;

                          savedAmt = savedAmount(personNum, tripFlatRate) + totalAddonSavedPrice;

                          if (isNaN(totalPersonPrice)) {
                              totalPersonPrice = 0;
                          }

                          //$('#adult-small').data('original-val', multiplyPrice(personNum, tripFlatRate));
                          $("#adult-small").data("original-val", tripFlatRate);

                          formatAndDisplayPrice(totalPersonPrice);

                          convertCurrency("#adult-small");
                      }

                      function formatAndDisplayPrice(price) {
                          //console.log(price);
                          $(".total").find("big").data("original-val", price);

                          if (savedAmt > 0) {
                              $("#saved-small").data("original-val", savedAmt);
                              convertCurrency("#saved-small");
                              $("#saved-cost").css("display", "block");
                          } else {
                              $("#saved-cost").css("display", "none");
                          }

                          convertCurrency("#totalMoney");
                      }

                      function getAddonTotalPrice() {
                          var price = 0;
                          if (addonWidgetData.addonFeature.length > 0) {
                              addonWidgetData.addonFeature.map(function (singleaddon) {
                                  var singleaddonNum = $("#inputtra-addon" + singleaddon.id).val();
                                  var singleaddonPrice = singleaddon.pricePerUnit;

                                  price += multiplyPrice(singleaddonNum, singleaddonPrice, true);
                              });
                          }

                          return price;
                      }

                      function getAddonSavedPrice() {
                          var price = 0;
                          if (addonWidgetData.addonFeature.length > 0) {
                              addonWidgetData.addonFeature.map(function (singleaddon) {
                                  var singleaddonNum = $("#inputtra-addon" + singleaddon.id).val();
                                  var singleaddonPrice = singleaddon.pricePerUnit;

                                  price += savedAmount(singleaddonNum, singleaddonPrice);
                              });
                          }

                          return price;
                      }

                      function savedAmount(num, price) {
                          if (isNaN(num * price)) {
                              return 0;
                          } else {
                              if (discount > 0) {
                                  //if there is discount
                                  return num * price / 100 * discount;
                                  return tempAmt;
                              } else {
                                  return 0; //If not discount
                              }
                          }
                      }

                      function multiplyPrice(num, price, isAddon) {
                          if (isNaN(num * price)) {
                              return 0;
                          } else {
                              if (discount > 0 && !isAddon) {
                                  //if there is discount
                                  var discAmt = num * price / 100 * discount;
                                  var tempAmt = num * price - discAmt;
                                  return tempAmt;
                              } else {
                                  return num * price; //If not discount
                              }
                          }
                      }

                      function hideAllAndShowPerson() {
                          $("#traveller-infant").parent().hide();
                          $("#traveller-child").parent().hide();
                          $("#traveller-senior").parent().hide();
                          $("#traveller-student").parent().hide();
                          $("#traveller-military").parent().hide();

                          $("#traveller-adult").parent().find("label").find("b").html("Person");
                      }

                      function hideInfantAndAddon() {
                          var seniorTest;
                          var militaryTest;

                          if (travelArr.indexOf("senior") < 0) {
                              seniorTest = 0;
                          } else {
                              seniorTest = $("#inputtra-senior").val();
                          }

                          if (travelArr.indexOf("military") < 0) {
                              militaryTest = 0;
                          } else {
                              militaryTest = $("#inputtra-military").val();
                          }

                          if ($("#inputtra-adult").val() == 0 && seniorTest == 0 && militaryTest == 0) {
                              $("#traveller-infant").parent().hide();
                              $("#traveller-child").parent().hide();
                              $("#inputtra-child").attr("value", 0);
                              $("#inputtra-infant").attr("value", 0);

                              makeAllAddonPriceZero();
                              if (addonWidgetData.addonFeature.length > 0) {
                                  $(".add_on").hide();
                              }
                          }
                      }

                      function showInfantAndAddon() {
                          var seniorTest;
                          var militaryTest;

                          if (travelArr.indexOf("senior") < 0) {
                              seniorTest = 1;
                          } else {
                              seniorTest = $("#inputtra-senior").val();
                          }

                          if (travelArr.indexOf("military") < 0) {
                              militaryTest = 1;
                          } else {
                              militaryTest = $("#inputtra-military").val();
                          }

                          if ($("#inputtra-adult").val() > 0 || seniorTest > 0 || militaryTest > 0) {
                              $("#traveller-infant").parent().show();
                              $("#traveller-child").parent().show();
                              addonWidgetData.addonFeature.map(function (addOn) {
                                  convertCurrency("#addon-money" + addOn.id);
                              });
                              if (addonWidgetData.addonFeature.length > 0) {
                                  $(".add_on").show();
                              }
                          }
                      }

                      function hideOnlyAddon() {
                          if ($("#inputtra-adult").val() == 0) {
                              makeAllAddonPriceZero();
                              if (addonWidgetData.addonFeature.length > 0) {
                                  $(".add_on").hide();
                              }
                          }
                      }

                      function showOnlyAddon() {
                          if ($("#inputtra-adult").val() > 0) {
                              addonWidgetData.addonFeature.map(function (addOn) {
                                  convertCurrency("#addon-money" + addOn.id);
                              });
                              if (addonWidgetData.addonFeature.length > 0) {
                                  $(".add_on").show();
                              }
                          }
                      }

                      function makeAllAddonPriceZero() {
                          addonWidgetData.addonFeature.map(function (singleaddon) {
                              var singleaddonNum = $("#inputtra-addon" + singleaddon.id).attr("value", 0);
                          });
                      }
                  }
              }); //End of ajax
          }
      });

      function showGroupPriceRange(perPersonPrices) {
          if (perPersonPrices && perPersonPrices.length > 1) {
              var priceRangeHtml = "\n    <tr>\n      <td><strong>No of people</strong></td>\n      <td align=\"right\"><strong>Price per person</strong></td>\n    </tr>";

              perPersonPrices.forEach(function (p) {
                  if (p.toValue === 0) {
                      priceRangeHtml += "<tr>\n          <td>" + p.fromValue + " +</td>\n          <td align=\"right\" data-original-val=\"" + p.retailRatePerPerson + "\" class=\"money\">" + p.retailRatePerPerson + "</td>\n        </tr>";
                  } else {
                      priceRangeHtml += "<tr>\n          <td>" + p.fromValue + " - " + p.toValue + "</td>\n          <td align=\"right\" data-original-val=\"" + p.retailRatePerPerson + "\" class=\"money\">" + p.retailRatePerPerson + "</td>\n        </tr>";
                  }
              });

              if (window.__INITIAL_FDD_STATE.departureDate.length !== 0) {
                  priceRangeHtml += "\n      <tr>\n        <td colspan=\"2\" class=\"text-center\"><a href=\"#root_fixed_departure\">See fix departure dates</a></td>\n      </tr>";
              }

              $("#groupPriceRangeBody").html(priceRangeHtml);
              $(".viewPriceRange").removeClass("hidden");
              window.convertCurrency();
          }
      }

      $(document).on("click", "#booking_btn", function () {
          if (tripStartTime === null) {
              tripStartTime = $("#selectStartTime").val();
          }
          if (!tripStartTime) {
              $("#selectStartTime").addClass("has-error");
              $("#selectStartTime").parent().addClass("has-error");
              return;
          }

          if (!$("#booking_btn").attr("disabled")) {
              $("#booking_btn").html("Booking").attr("disabled", "disabled");
              var addonFeatureArr = [];
              var tempStartDate = $("#datepicker").val().split("/");
              var formattedStartDate = tempStartDate[2] + "-" + tempStartDate[0] + "-" + tempStartDate[1];

              tempAddonWidgetData.addonFeature.map(function (cartAddon) {
                  if ($("#inputtra-addon" + cartAddon.id).val() > 0) {
                      var GroupCartAddOn = {};
                      GroupCartAddOn.groupCartAddonId = cartAddon.id;
                      GroupCartAddOn.groupCartId = 0;
                      GroupCartAddOn.name = cartAddon.featureName;
                      GroupCartAddOn.unit = $("#inputtra-addon" + cartAddon.id).val();
                      GroupCartAddOn.price = cartAddon.pricePerUnit;

                      addonFeatureArr.push(GroupCartAddOn);
                  }
              });

              var GroupCart = {};
              var tempImage = "";
              if ($(".image img").first().attr("src") == undefined) {
                  var temp = $("#header .logo a").css("background-image").split('"');
                  tempImage = temp[1];
              } else {
                  tempImage = $(".image img").first().attr("src");
              }

              if (discount > 0) {
                  discountStatus = "trip";
              } else {
                  discountStatus = "no-discount";
              }

              var priceCheck = true;

              if (tempAddonWidgetData.numberStatus == 1) {
                  var count = 0;
                  var adultPrice = adultAgeRetailPrice;
                  if ($("#inputtra-adult").val() == 0) {
                      adultPrice = 0;
                      count++;
                  }
                  var childPrice = tempAddonWidgetData.tripperPersonRate.childAgeRetailPrice;
                  if ($("#inputtra-child").val() == 0) {
                      childPrice = 0;
                      count++;
                  }
                  var infantPrice = tempAddonWidgetData.tripperPersonRate.infantAgeRetailPrice;
                  if ($("#inputtra-infant").val() == 0) {
                      infantPrice = 0;
                      count++;
                  }
                  var seniorPrice = tempAddonWidgetData.tripperPersonRate.seniorAgeRetailPrice;
                  if ($("#inputtra-senior").val() == 0) {
                      seniorPrice = 0;
                      count++;
                  }
                  var studentPrice = tempAddonWidgetData.tripperPersonRate.retailPriceForStudent;
                  if ($("#inputtra-student").val() == 0) {
                      studentPrice = 0;
                      count++;
                  }
                  var militaryPrice = tempAddonWidgetData.tripperPersonRate.retailPriceForMilitary;
                  if ($("#inputtra-military").val() == 0) {
                      militaryPrice = 0;
                      count++;
                  }
                  if (count === 6) {
                      priceCheck = false;
                  }

                  GroupCart = {
                      groupCartId: 0,
                      cartId: 0,
                      tripId: tripId,
                      agentId: agentId,
                      tripImage: "",
                      tripName: tripName,
                      adultPrice: adultPrice,
                      adultUnit: $("#inputtra-adult").val(),
                      seniorPrice: seniorPrice,
                      seniorUnit: $("#inputtra-senior").val(),
                      childPrice: childPrice,
                      childUnit: $("#inputtra-child").val(),
                      infantPrice: infantPrice,
                      infantUnit: $("#inputtra-infant").val(),
                      studentPrice: studentPrice,
                      studentUnit: $("#inputtra-student").val(),
                      militaryPrice: militaryPrice,
                      militrayUnit: $("#inputtra-military").val(),
                      startDate: formattedStartDate,
                      endDate: formattedStartDate,
                      tripDiscount: discount,
                      supplierCommission: 0,
                      sellerStatus: "W",
                      startTime: tripStartTime
                  };
              } else {
                  var adultUnit = Number($("#inputtra-adult").val());

                  GroupCart = {
                      groupCartId: 0,
                      cartId: 0,
                      tripId: tripId,
                      agentId: agentId,
                      tripImage: "",
                      tripName: tripName,
                      adultPrice: tempAddonWidgetData.tripFlat.tripFlatRate,
                      adultUnit: adultUnit,
                      seniorPrice: 0,
                      seniorUnit: 0,
                      childPrice: 0,
                      childUnit: 0,
                      infantPrice: 0,
                      infantUnit: 0,
                      studentPrice: 0,
                      studentUnit: 0,
                      militaryPrice: 0,
                      militrayUnit: 0,
                      startDate: formattedStartDate,
                      endDate: formattedStartDate,
                      tripDiscount: discount,
                      sellerStatus: "W",
                      supplierCommission: 0,
                      startTime: tripStartTime
                  };
                  if (adultUnit === 0) {
                      priceCheck = false;
                  }
              }
              if (priceCheck) {
                  var tripData = {}; // array to store  trip type object and  addonArray
                  tripData[0] = GroupCart;
                  tripData[1] = JSON.stringify(addonFeatureArr);

                  $.ajax({
                      contentType: "application/json",
                      type: "POST",
                      data: JSON.stringify(tripData),
                      headers: {
                          "X-CSRF-TOKEN": token
                      },
                      url: site_url + "/privateaddtosessioncart",
                      success: function success(data) {
                          window.location = site_url + data;
                      },
                      error: function error(data) {
                          $("#booking_btn").html("Book Now").removeAttr("disabled");
                      }
                  });
              } else {
                  $("#booking_btn").html("Book Now").prop("disabled", true);
              }
          }
      });

      function checkBookNowButton() {
          var seniorTest;
          var militaryTest;
          var studentTest;

          if (travelArr.indexOf("senior") < 0) {
              seniorTest = 1;
          } else {
              seniorTest = $("#inputtra-senior").val();
          }

          if (travelArr.indexOf("military") < 0) {
              militaryTest = 1;
          } else {
              militaryTest = $("#inputtra-military").val();
          }

          if (travelArr.indexOf("student") < 0) {
              studentTest = 1;
          } else {
              studentTest = $("#inputtra-student").val();
          }

          if ($("#inputtra-adult").val() == 0 && seniorTest == 0 && militaryTest == 0 && studentTest == 0) {
              $("#booking_btn").attr("disabled", "disabled");
          } else {
              $("#booking_btn").removeAttr("disabled");
          }
      }

      function hideIfPriceZero() {
          if (tempAddonWidgetData.numberStatus == 1) {
              if (tempAddonWidgetData.tripperPersonRate.childAgeRetailPrice == 0 || tempAddonWidgetData.tripperPersonRate.childAgeRetailPrice == null) {
                  $("#traveller-child").parent().css("display", "none");
                  filterArray("child");
              }

              if (tempAddonWidgetData.tripperPersonRate.infantAgeRetailPrice == 0 || tempAddonWidgetData.tripperPersonRate.infantAgeRetailPrice == null) {
                  $("#traveller-infant").parent().css("display", "none");
                  filterArray("infant");
              }

              if (tempAddonWidgetData.tripperPersonRate.retailPriceForStudent == 0 || tempAddonWidgetData.tripperPersonRate.retailPriceForStudent == null) {
                  $("#traveller-student").parent().css("display", "none");
                  filterArray("student");
              }

              if (tempAddonWidgetData.tripperPersonRate.seniorAgeRetailPrice == 0 || tempAddonWidgetData.tripperPersonRate.seniorAgeRetailPrice == null) {
                  $("#traveller-senior").parent().css("display", "none");
                  filterArray("senior");
              }

              if (tempAddonWidgetData.tripperPersonRate.retailPriceForMilitary == 0 || tempAddonWidgetData.tripperPersonRate.retailPriceForMilitary == null) {
                  $("#traveller-military").parent().css("display", "none");
                  filterArray("military");
              }
          }
      }

      function filterArray(item) {
          var ind = travelArr.indexOf(item);
          if (ind >= 0) {
              travelArr.splice(ind, 1);
          }
      }

//});

      function isDateIsInRange(date) {
          var checkArr = [];
          var compareDate = moment(date).format("YYYY-MM-DD");
          var nonOpRangeCheckArr = [];
          nonOprationalDates.map(function (n) {
              var nonStartDate = moment(n.startDate).subtract(1, "days").format("YYYY-MM-DD");
              var nonEndDate = moment(n.endDate).add(1, "days").format("YYYY-MM-DD");
              var c = moment(compareDate).isBetween(nonStartDate, nonEndDate);
              nonOpRangeCheckArr.push(c);
          });
          var nonCheck;
          if (nonOpRangeCheckArr.indexOf(true) === -1) {
              //check for non operational date
              privateDates.map(function (d) {
                  var rangeCheck;
                  var startDate = moment(d.startDate).subtract(1, "days").format("YYYY-MM-DD");
                  var endDate = moment(d.endDate).add(1, "days").format("YYYY-MM-DD");

                  rangeCheck = moment(compareDate).isBetween(startDate, endDate) && isDateAValidDay(d.weeks, date);
                  checkArr.push(rangeCheck);
              });
              var finalCheck;
              if (checkArr.indexOf(true) === -1) {
                  finalCheck = false;
              } else {
                  finalCheck = true;
              }
          } else {
              finalCheck = false;
          }
          return finalCheck;
      }

      function isDateAValidDay(dayArr, date) {
          if (!dayArr) {
              dayArr = [];
          }
          var day = moment(date).format("dddd").toLowerCase();
          if (dayArr.indexOf(day) === -1) {
              return false;
          } else {
              return true;
          }
      }

      function addDays() {
          var result = new Date();
          result.setDate(result.getDate() + noOfCutOffDays);
          return result;
      }

      function formatTime(time) {
          return moment(time, "HH:mm").format("hh:mm A");
      }

      $(document).on("change", "#selectStartTime", function () {
          $("#selectStartTime").removeClass("has-error");
          $("#selectStartTime").parent().removeClass("has-error");
      });

      /***/
  }),
  /* 29 */
  /***/ (function (module, exports) {

      var _window = window,
          jQuery = _window.jQuery;


      (function ($) {
          /* DOM selectors */
          var contactFormSel = "#contact_form";
          var nameSel = "#inputName";
          var emailSel = "#inputEmail";
          // const subjectSel = "#inputSubject";
          var messageSel = "#inputMessage";
          var messageLoadingSel = "#send_message_loading";
          var contactFormWrapper = "#contact_wrapper";
          // const officePhoneSel = ".office-phone";
          // Captcha
          var ans = void 0;
          var numLimit = [1, 50];

          // Selectors
          var arthOperators = ["+", "-"];
          var captchaProblemSel = ".captcha-problem";
          var captchaReloadSel = ".captcha-reload";
          var captchaAnswerSel = "#captcha_ans";
          var captchaMessageSel = "#captcha_error";

          /* End points */
          var siteUrl = $(".url").val();
          // const locationEp = "/office-location/retrive";
          var contactUsEp = "/message/question-answer/make-user";

          var csrf = $("meta[name=_csrf]").attr("content");

          // Get index
          /* function getIndex(array, name) {
            let index;
            array.forEach((ar, i) => {
              if (ar.name === name) index = i;
            });
            return index;
          } */

          // Send message
          function sendMessage(e) {
              // Validate first
              if (!e.isDefaultPrevented()) {
                  // Wait
                  e.preventDefault();

                  // Validate captcha
                  if (!isValidCaptcha()) return;

                  var name = $(nameSel).val();
                  var email = $(emailSel).val();
                  var message = $(messageSel).val();
                  var receiver = Number($("#agentId").val());

                  var data = {
                      receiver: receiver,
                      name: name,
                      email: email,
                      message: message
                  };
                  // Send message
                  $.ajax({
                      url: siteUrl + contactUsEp,
                      type: "post",
                      contentType: "application/json",
                      data: JSON.stringify(data),
                      headers: {"X-CSRF-TOKEN": csrf},
                      beforeSend: function beforeSend() {
                          $(messageLoadingSel).addClass("fa fa-spin fa-spinner");
                      },
                      complete: function complete() {
                          $(messageLoadingSel).removeClass("fa fa-spin fa-spinner");
                      },
                      success: function success(res) {
                          var message = void 0;
                          var msgStatus = void 0;
                          if (res.status === "success") {
                              message = "Message successfully sent, Thank you !";
                              msgStatus = "alert-success";

                              // Reset Form
                              $(contactFormSel).trigger("reset");
                          } else if (res.status === "no-auth") {
                              message = "Please login to continue !";
                              msgStatus = "alert-danger";
                          } else {
                              message = "Message sending failed !";
                              msgStatus = "alert-danger";
                          }
                          var alertEl = "\n\t        \t<div class=\"alert " + msgStatus + "\">\n\t        \t\t" + message + "\n\t        \t</div>\n\t          ";

                          // Prepend alert message
                          $(contactFormWrapper).prepend(alertEl);

                          setTimeout(function () {
                              // Hide alert
                              $(contactFormWrapper + " > div:first").hide();
                              if (res === "success") {
                                  $("#quick_support").modal("hide");
                              }
                          }, 3000);
                      },
                      error: function error() {
                          var alertEl = "\n\t\t        \t<div class=\"alert alert-danger\">\n\t\t        \t\tMessage sending failed !\n\t\t        \t</div>\n\t\t          ";

                          $(contactFormWrapper).prepend(alertEl);

                          setTimeout(function () {
                              // Hide alert
                              $(contactFormWrapper + " > div:first").hide();
                          }, 3000);
                      }
                  });
              }
          }

          // Generate random numbers
          function generateNumber(numLimit) {
              var ran = Math.floor(Math.random() * numLimit[1]);
              if (ran < numLimit[0]) {
                  return generateNumber(numLimit);
              }
              return ran;
          }

          function chooseOperator(arthOperators) {
              return Math.random() > 0.5 ? arthOperators[0] : arthOperators[1];
          }

          // Generate new math problem
          function generateNewProblem(sel, numLimit) {
              var firstNum = generateNumber(numLimit);
              var secondNum = generateNumber(numLimit);
              var op = chooseOperator(arthOperators);

              // Calculate answer
              ans = eval(firstNum + " " + op + " " + secondNum);

              // Show problem
              $(sel).text(firstNum + " " + op + " " + secondNum);

              // Regenerate numbers if it evaluates to negative or greater than number limit
              if (ans < 0 || ans > numLimit[1]) {
                  return generateNewProblem(sel, numLimit);
              }
              return false;
          }

          // Validate captcha
          function isValidCaptcha() {
              var userAns = Number($(captchaAnswerSel).val());
              if (ans === userAns) {
                  $(captchaMessageSel).text("");
                  return true;
              }
              $(captchaMessageSel).text("Wrong solution");
              return false;
          }

          // Initial problem
          generateNewProblem(captchaProblemSel, numLimit);

          // Bind captcha reload handler
          $(contactFormSel).on("click", captchaReloadSel, function () {
              generateNewProblem(captchaProblemSel, numLimit);
          });

          // Bind submit form event handler
          $(contactFormSel).validator().on("submit", sendMessage);
      })(jQuery);

      /***/
  }),
  /* 30 */
  /***/ (function (module, exports) {

      var _window = window,
          jQuery = _window.jQuery;


      (function ($) {
          /* DOM selectors */
          var contactFormSel = "#sent_contact_form";
          var nameSel = "#sentInputName";
          var emailSel = "#sentInputEmail";
          var receiverNameSel = "#sentInputReceiverName";
          var receiverEmailSel = "#sentInputReceiverEmail";
          var messageSel = "#sentInputMessage";
          var subjectSel = "#sentInputSubject";
          // const messageLoadingSel = "#sent_message_loading";
          var contactFormWrapper = "#sent_contact_wrapper";
          // const officePhoneSel = ".office-phone";
          // Captcha
          var ans = void 0;
          var numLimit = [1, 50];

          // Selectors
          var arthOperators = ["+", "-"];
          var captchaProblemSel = ".sent-captcha-problem";
          var captchaReloadSel = ".sent-captcha-reload";
          var captchaAnswerSel = "#sent_captcha_ans";
          var captchaMessageSel = "#sent_captcha_error";

          /* End points */
          var siteUrl = $(".url").val();
          var contactUsEp = "/tour/email/to/from";

          var csrf = $("meta[name=_csrf]").attr("content");

          // Send message
          function sendMessage(e) {
              // Validate first
              if (!e.isDefaultPrevented()) {
                  // Wait
                  e.preventDefault();

                  // Validate captcha
                  if (!isValidCaptcha()) return;

                  var senderName = $(nameSel).val();
                  var senderEmail = $(emailSel).val();
                  var receiverName = $(receiverNameSel).val();
                  var receiverEmail = $(receiverEmailSel).val();
                  var subject = $(subjectSel).val();
                  var message = $(messageSel).val();
                  var url = window.location.href;
                  var data = {
                      senderName: senderName,
                      emailFrom: senderEmail,
                      receiverName: receiverName,
                      emailTo: receiverEmail,
                      subject: subject,
                      message: message,
                      url: url
                  };
                  // Send message

                  $.ajax({
                      url: siteUrl + contactUsEp,
                      type: "POST",
                      contentType: "application/json",
                      headers: {"X-CSRF-TOKEN": csrf},
                      data: JSON.stringify(data),
                      beforeSend: function beforeSend() {
                          $("#btnTourLinkSendMessage").html("<i class='fa fa-spin fa-spinner'></i> Sending").attr("disabled", "disabled");
                      },
                      complete: function complete() {
                          $("#btnTourLinkSendMessage").html("Send Message").removeAttr("disabled");
                      },
                      success: function success(res) {
                          var message = void 0;
                          var msgStatus = void 0;
                          if (res === "success") {
                              message = "Message successfully sent, Thank you !";
                              msgStatus = "alert-success";

                              // Reset Form
                              $(contactFormSel).trigger("reset");
                          } else {
                              message = "Message sending failed !";
                              msgStatus = "alert-danger";
                          }
                          var alertEl = "\n\t\t\t\t\t        \t<div class=\"alert " + msgStatus + "\">\n\t\t\t\t\t        \t\t" + message + "\n\t\t\t\t\t        \t</div>\n\t\t\t\t\t          ";

                          // Prepend alert message
                          $(contactFormWrapper).prepend(alertEl);

                          setTimeout(function () {
                              // Hide alert
                              $(contactFormWrapper + " > div:first").hide();

                              if (res === "success") {
                                  $("#sent_to_support").modal("hide");
                              }
                          }, 3000);
                      },
                      error: function error() {
                          var alertEl = "\n\t\t        \t<div class=\"alert alert-danger\">\n\t\t        \t\tMessage sending failed !\n\t\t        \t</div>\n\t\t          ";

                          $(contactFormWrapper).prepend(alertEl);
                          $("#btnTourLinkSendMessage").html("Send Message").removeAttr("disabled");
                          setTimeout(function () {
                              // Hide alert
                              $(contactFormWrapper + " > div:first").hide();
                          }, 3000);
                      }
                  });
              }
          }

          // Generate random numbers
          function generateNumber(numLimit) {
              var ran = Math.floor(Math.random() * numLimit[1]);
              if (ran < numLimit[0]) {
                  return generateNumber(numLimit);
              }
              return ran;
          }

          function chooseOperator(arthOperators) {
              return Math.random() > 0.5 ? arthOperators[0] : arthOperators[1];
          }

          // Generate new math problem
          function generateNewProblem(sel, numLimit) {
              var firstNum = generateNumber(numLimit);
              var secondNum = generateNumber(numLimit);
              var op = chooseOperator(arthOperators);

              // Calculate answer
              ans = eval(firstNum + " " + op + " " + secondNum);

              // Show problem
              $(sel).text(firstNum + " " + op + " " + secondNum);

              // Regenerate numbers if it evaluates to negative or greater than number limit
              if (ans < 0 || ans > numLimit[1]) {
                  return generateNewProblem(sel, numLimit);
              }
              return false;
          }

          // Validate captcha
          function isValidCaptcha() {
              var userAns = Number($(captchaAnswerSel).val());
              if (ans === userAns) {
                  $(captchaMessageSel).text("");
                  return true;
              }
              $(captchaMessageSel).text("Wrong solution");
              return false;
          }

          // Initial problem
          generateNewProblem(captchaProblemSel, numLimit);

          // Bind captcha reload handler
          $(contactFormSel).on("click", captchaReloadSel, function () {
              generateNewProblem(captchaProblemSel, numLimit);
          });

          // Bind submit form event handler
          $(contactFormSel).validator().on("submit", sendMessage);
      })(jQuery);

      /***/
  })
], [17]);
