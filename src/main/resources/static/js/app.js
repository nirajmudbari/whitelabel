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
const maxField = 10;
const wrapper = document.getElementById('field_wrapper');


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
        '</fieldset><h4>Deals & Discounts</h4><fieldset>\n' +
        '\t\t\t\t\t<input type="checkbox" id="discount1"  name="discount1"> &nbsp;<label for="discount1">0%</label><br/>\n' +
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
        '<span class="fa fa-star unchecked"></span></label></fieldset><h4>Duration</h4><fieldset>\n' +
        '                    <input type="checkbox" id="duration1"  name="duration1"> &nbsp;<label for="duration1">0 - 9</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="duration2"  name="duration2"> &nbsp;<label for="duration2">10 - 18</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="duration3"  name="duration3"> &nbsp;<label for="duration3">19 - 27</label><br/>\n' +
        '\t\t\t\t\t<input type="checkbox" id="duration4"  name="duration4"> &nbsp;<label for="duration4">28 - 36</label><br/></fieldset>';

    for (i in obj) {
        html += '<h4>' + camel2title(i) + '</h4><fieldset>';
        for (key in obj[i]) {
            html += ' <input type="checkbox" id="' + key + '" name="' + i + '"  value="' + key + '"> &nbsp;<label for="' + i + '">' + obj[i][key] + '</label><br/>';
        }
        html += '</fieldset>';
    }

    html += '</fieldset>\n' +
        '            </div>';
    const inputElement = document.getElementById('search-result');
    $(inputElement).html(html);
}


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
        "specialService": {
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
    viewFilter(obj);  //send filter data here instead of dummy data.
    var output = {
        tourType: [],
        language: [],
        sleeping: [],
        transportation: [],
        specialService: [],
        activities: [],
        experiences: []
    }
    $("input[type=checkbox]").change(function () {

        if (this.checked) {
            var self = $(this);
            if (self.attr("name") == "tourType") {
                output.tourType.push(self.attr("id"));
            } else if (self.attr("name") == "language") {
                output.language.push(self.attr("id"));
            } else if (self.attr("name") == "sleeping") {
                output.sleeping.push(self.attr("id"));
            } else if (self.attr("name") == "transportation") {
                output.transportation.push(self.attr("id"));
            } else if (self.attr("name") == "specialService") {
                output.specialService.push(self.attr("id"));
            } else if (self.attr("name") == "activities") {
                output.activities.push(self.attr("id"));
            } else if (self.attr("name") == "experiences") {
                output.experiences.push(self.attr("id"));
            }
        } else if (!this.checked) {
            var self = $(this);
            if (self.attr("name") == "tourType") {
                output.tourType = output.tourType.filter(item => item !== self.attr("id"))
            } else if (self.attr("name") == "language") {
                output.language = output.language.filter(item => item !== self.attr("id"))
            } else if (self.attr("name") == "sleeping") {
                output.sleeping = output.sleeping.filter(item => item !== self.attr("id"))
            } else if (self.attr("name") == "transportation") {
                output.transportation = output.transportation.filter(item => item !== self.attr("id"))
            } else if (self.attr("name") == "specialService") {
                output.specialService = output.specialService.filter(item => item !== self.attr("id"))
            } else if (self.attr("name") == "activities") {
                output.activities = output.activities.filter(item => item !== self.attr("id"))
            } else if (self.attr("name") == "experiences") {
                output.experiences = output.experiences.filter(item => item !== self.attr("id"))
            }
        }
        console.log(output);
        //call to filter data here
        $.ajax({
            type: "POST",
            url: "http://localhost:3000/filter",
            contentType: "application/json",
            // headers: { "X-CSRF-TOKEN": token },
            data: output,
            success: function (json) {
                preview(json);
            },
            error: function () {
            }
        });
    });
});
