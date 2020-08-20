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

var site_url = 'http://localhost:8080';
let widgetId = "1234";
let tourUrls = [];
let destinationUrl = '';
let noOfTour = 10;
// let language='en';
// let currency='USD';
const maxField = 10;
const addButton = document.getElementById('add_button');
const wrapper = document.getElementById('field_wrapper');

/*
$.ajax({
    type: "GET",
    url: site_url + "/currency",
    contentType: "application/json",
    // headers: { "X-CSRF-TOKEN": token },
    beforeSend: function () {
    },
    success: function (json) {
        const selectElement = document.getElementById("currency");
        for (let key in json) {
            let selectHtml="<option value='"+key+"'>"+json[key]+"</option>";
            $(selectElement).append(selectHtml);
        }
    },
    error: function () {
    },
});
$.ajax({
    type: "GET",
    url: site_url + "/language",
    contentType: "application/json",
    // headers: { "X-CSRF-TOKEN": token },
    beforeSend: function () {
    },
    success: function (json) {
        const selectElement = document.getElementById("language");
        for (let key in json) {
            let selectHtml="<option value='"+key+"'>"+json[key]+"</option>";
            $(selectElement).append(selectHtml);
        }
    },
    error: function () {
    },
});
*/

function showResult(json) {
    var file = document.createElement("link");
    file.setAttribute("rel", "stylesheet");
    file.setAttribute("type", "text/css");
    file.setAttribute("href", "/css/search-result.css");
    document.head.appendChild(file);
    let widgetHtml = '<ul class="triplocator-widget-product-list" id="triplocator-widgets">';
    json.forEach(data => {
        widgetHtml += '<li class="triplocator-widget-col">' +
            '<div class="triplocator-widget-item-wrap" >' +
            '<div class="triplocator-widget-img">';
        widgetHtml += '<a href="' + data.url + '">';
        widgetHtml += '<img src="' + data.image + '" class="triplocator-widget-img-fill" alt="' + data.imageAlt + '">';
        widgetHtml += '</a>';
        widgetHtml += '<span class="triplocator-widget-tour-duration cap-text"><strong><i class="fa fa-clock-o"></i> ' + data.duration + ' ' + data.durationType + '</strong></span>'
        if (data.discount != null && data.discount != 0) {
            widgetHtml += '<div class="triplocator-widget-ribbon danger"> <span>' + data.discount + '% Discount</span> </div>';
        }
        widgetHtml += '</div><div class="triplocator-widget-caption"><h4>';
        widgetHtml += '<a href="' + data.url + '">' + data.tourName + '</a></h4>';
        widgetHtml += '<span class="triplocator-widget-destination"><a>' + data.locationName + '</a>,<a> ' + data.countryName + '</a></span>'
        widgetHtml += '<hr><div class="triplocator-widget-fact"><span class="triplocator-widget-tour-review">';
        for (let i = 1; i <= 5; i++) {
            if (i <= data.ratingStar) {
                widgetHtml += '<i class="fa fa-star"></i>'
            } else {
                widgetHtml += '<i class="fa fa-star-o"></i>'
            }
        }
        widgetHtml += '<sub>' + data.review + ' reviews</sub></span><span class="triplocator-widget-tour-cost"><sub>From</sub>';
        if (data.oldAmount != null && data.oldAmount != "") {
            widgetHtml += '<s>' + data.oldAmount + '</s>';
        }

        widgetHtml += '<span>' + data.minAmount + '</span></span></div></div></div></li>';
    })

    widgetHtml += '</ul>';
    const widgetElement = document.getElementById("triplocator-widget");
    $(widgetElement).html(widgetHtml);
}

function preview() {
    let widgetPreviewCode = '<div id="triplocator-widget" data-currency="USD" data-language="en" data-total-products=""></div>';
    $(document.getElementById("triplocator-widget-preview")).append(widgetPreviewCode);
    widgetPreviewCode += '\n\n<script async src="/js/app.js"></script>';
    $('#textarea').text(widgetPreviewCode);
}

function fetchTourData() {
    $.ajax({
        type: "GET",
        url: "http://localhost:3000/tours",
        contentType: "application/json",
        // headers: { "X-CSRF-TOKEN": token },
        success: function (json) {
            showResult(json);

        },
        error: function () {
        }
    });
}

function camel2title(camelCase) {
    // no side-effects
    return camelCase
        // inject space before the upper case letters
        .replace(/([A-Z])/g, function (match) {
            return " " + match;
        })
        // replace first char with upper case
        .replace(/^./, function (match) {
            return match.toUpperCase();
        });
}

function viewFilter(obj) {

    let html = '  <div class="form-group" xmlns="http://www.w3.org/1999/html">\n' +
        '                <fieldset>\n' +
        '                    <legend>Filter by:</legend>' + '<h4>' + 'Price Range' + '</h4><fieldset><input type="checkbox" id="price1"  name="price1"> &nbsp;<label for="price1">$0 - $1000</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price2"  name="price2"> &nbsp;<label for="price2">$1000 - $2000</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price3"  name="price3"> &nbsp;<label for="price3">$2000 - $3000</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price4"  name="price4"> &nbsp;<label for="price4">$3000 - $4000</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price5"  name="price5"> &nbsp;<label for="price5">$4000 - above</label><br/>' +
        '</fieldset><h4>Deals & Discounts</h4><fieldset\n' +
        '                    <input type="checkbox" id="discount1"  name="discount1"> &nbsp;<label for="discount1">0%</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="discount2"  name="discount2"> &nbsp;<label for="discount2">25%</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="discount3"  name="discount3"> &nbsp;<label for="discount3">50%</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="discount4"  name="discount4"> &nbsp;<label for="discount4">75%</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="discount5"  name="discount5"> &nbsp;<label for="discount5">75%</label><br/></fieldset>\n' +
        '\t\t\t\t\t\n' +
        '\t\t\t\t\t<h4>Difficulty</h4><fieldset>\n' +
        '                    <input type="checkbox" id="price1"  name="price1"> &nbsp;<label for="price1">1</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price2"  name="price2"> &nbsp;<label for="price2">2</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price3"  name="price3"> &nbsp;<label for="price3">3</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price4"  name="price4"> &nbsp;<label for="price4">4</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price5"  name="price5"> &nbsp;<label for="price5">5</label><br/></fieldset>' +
        '\t<h4>Rating</h4><fieldset>\n' +
        '                    <input type="checkbox" id="price1"  name="price1"> &nbsp;<label for="price1"><span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span></label><br/>' +
        '\t<input type="checkbox" id="price2"  name="price2"> &nbsp;<label for="price2"><span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star unchecked"></span></label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price3"  name="price3"> &nbsp;<label for="price3"><span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star unchecked"></span>\n' +
        '<span class="fa fa-star unchecked"></span></label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price4"  name="price4"> &nbsp;<label for="price4"><span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star unchecked"></span>\n' +
        '<span class="fa fa-star unchecked"></span>\n' +
        '<span class="fa fa-star unchecked"></span></label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="price5"  name="price5"> &nbsp;<label for="price5"><span class="fa fa-star checked"></span>\n' +
        '<span class="fa fa-star unchecked"></span>\n' +
        '<span class="fa fa-star unchecked"></span>\n' +
        '<span class="fa fa-star unchecked"></span>\n' +
        '<span class="fa fa-star unchecked"></span></label><br/><h4>Duration</h4>\n' +
        '                    <input type="checkbox" id="duration1"  name="duration1"> &nbsp;<label for="duration1">0 - 9</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="duration2"  name="duration2"> &nbsp;<label for="duration2">10 - 18</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="duration3"  name="duration3"> &nbsp;<label for="duration3">19 - 27</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="duration4"  name="duration4"> &nbsp;<label for="duration4">28 - 36</label><br/></fieldset>';

    for (i in obj) {
        // console.log(i);
        html += '<h4>' + camel2title(i) + '</h4><fieldset>';
        for (key in obj[i]) {
            html += ' <input type="checkbox" id="' + key + '"  name="' + key + '"> &nbsp;<label for="' + i + '">' + obj[i][key] + '</label><br/>';
            // console.log( key + ": " + obj[i][key]);
        }
        html += '</fieldset>';
    }
    // obj.tourType.forEach(data => {
    //     html += ' <input type="checkbox" id="tour-type"  name="tour-type"> &nbsp;<label for="tour-type">' + data + '</label><br/>';
    // });
    /*  html += '<h4>Guiding Language</h4>';
     obj.language.forEach(data => {
          html += ' <input type="checkbox" id="language"  name="language"> &nbsp;<label for="language">' + data + '</label><br/>';
      });
      html += '<h4>Sleeping Mode</h4>';
     obj.sleeping.forEach(data => {
          html += ' <input type="checkbox" id="sleeping-mode"  name="sleeping-mode"> &nbsp;<label for="sleeping-mode">' + data + '</label><br/>';
      });
      html += '<h4>Transportation</h4>';
     obj.transportation.forEach(data => {
          html += ' <input type="checkbox" id="transportation"  name="transportation"> &nbsp;<label for="transportation">' + data + '</label><br/>';
      });
      html += '<h4>Special Service</h4>';
      obj.specialService.forEach(data => {
          html += ' <input type="checkbox" id="special-service"  name="special-service"> &nbsp;<label for="special-service">' + data + '</label><br/>';
      });
      html += '<h4>Tour Experience</h4>';
      obj.experiences.forEach(data => {
          html += ' <input type="checkbox" id="experience"  name="experience"> &nbsp;<label for="experience">' + data + '</label><br/>';
      });
      html += '<h4>Activity Categories</h4>';
      obj.activities.forEach(data => {
          html += ' <input type="checkbox" id="activities"  name="activities"> &nbsp;<label for="activities">' + data + '</label><br/>';
      });*/
    html += '</fieldset>\n' +
        '            </div>';
    const inputElement = document.getElementById('search-result');
    $(inputElement).html(html);
}

/*function fetchFilterTourData(){
    dataObj = {
        tourUrls: tourUrls,
        destinationUrl: destinationUrl,
        language: language,
        currency: currency,
        tourNumber: noOfTour
    }
    $.ajax({
        type: "POST",
        url: "http://localhost:3000/tours",
        contentType: "application/json",
        // headers: { "X-CSRF-TOKEN": token },
        data: dataObj,
        success: function (json) {
            paintWidget(json);
        },
        error: function () {
        }
    });
}*/


$(document).ready(function () {
    preview();
    fetchTourData();
    var obj = {

        "tourType": {
            "1": "Luxury Tour",
            "2": "Private Tour",
            "3": "Group Tour"
        },
        "language": {
            "1": "English",
            "2": "German",
            "3": "Chinese"
        },
        "sleeping": {
            "1": "Hotel",
            "2": "Guest House",
            "3": "Tent/Company"
        },
        "transportation": {
            "1": "Boating",
            "2": "Private Tour",
            "3": "Group Tour"
        },
        "special-service": {
            "1": "Accessible Lodging",
            "2": "Child Friendly",
            "3": "Lockers/Storage"
        },
        "activities": {
            "1": "Helicopter Tour",
            "2": "City Tours",
            "3": "Buddhist Pilgrimages"
        },
        "experiences": {
            "1": "Culture",
            "2": "Nature",
            "3": "Arts"
        }
    }
    // var obj = {"tourType": ["Luxury Tour", "Private Tour", "Group Tour"],
    //     "language": ["English", "German", "Italian", "Korean", "Chinese"],
    //     "sleeping": ["Hotel", "Guest House", "Tent/Company"],
    //     "transportation": ["Boating", "Plane", "Car", "Walking"],
    //     "specialService": ["Accessible Lodging", "Child Friendly", "Lockers/Storage", "Wheel Chair"],
    //     "activities": ["Helicopter Tour", "City Tours", "Buddhist Pilgrimages", "School/Holiday"],
    //     "experiences": ["Culture", "Adventure", "Ecotourism", "Arts"]};
    viewFilter(obj);  //send filter data here instead of dummy data.


});
/*
$(addButton).click(function(){
    if(x < maxField){
        x++;
        $(wrapper).append(fieldHTML);
    }
});
$(wrapper).on('click', '.remove_button', function(e){
    e.preventDefault();
    $(this).parent('div').remove();
    x--;
});

$("input[name$='tour-url']").click(function() {
    let test = $(this).val();
    if(test === "0"){
        $("#destination-tour").show();
        $("#specific-tour").hide();
        let tourNumber = document.getElementById("destination_tour_number");
        tourNumber.value = noOfTour;
        destinationUrl="https://www.triplocator.com/tours/nepal/bagmati/kathmandu";
    }
    if(test === "1"){
        $("#destination-tour").hide();
        $("#specific-tour").show();
    }
});

function tourLinkChange() {
    let tourlink = document.getElementsByName("tour_link[]");
    tourlink.forEach(tour =>{
        console.log(tourUrls);
        tourUrls.push(tour.value);
        destinationUrl='';
    });
}

function destinationLinkChange(){
    let tourlink = document.getElementById("destination_link");
    destinationUrl = tourlink.value;
    tourUrls = [];
    noOfTour = 0;
}
function numberOfToursSelected(){
    let tourNumber = document.getElementById("destination_tour_number");
    noOfTour = tourNumber.value;
}
function languageSelected(){
    let languageE = document.getElementById("language");
    language = languageE.value;
}
function currencySelected(){
    let currencyE = document.getElementById("currency");
    currency = currencyE.value;
}
*/
