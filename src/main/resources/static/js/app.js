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


function fetchFilterTourData() {
    dataObj = {
        tourName: tourName,
        image: image,
        imageAlt: imageAlt,
        locationName: locationName,
        countryName: countryName,
        url: url,
        ratingStar: ratingStar,
        review: review,
        minAmount: minAmount,
        oldAmount: oldAmount
    }
    $.ajax({
        type: "GET",
        url: "http://localhost:3000/tours",
        contentType: "application/json",
        // headers: { "X-CSRF-TOKEN": token },
        success: function (res) {
            console.log(res);
            alert(res);
        },
        error: function () {
        }
    });
}