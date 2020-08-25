<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link
            type="text/css"
            rel="Stylesheet"
            href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/themes/redmond/jquery-ui.css"
    />
    <script
            type="text/javascript"
            src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"
    ></script>
    <script
            type="text/javascript"
            src="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/jquery-ui.min.js"
    ></script>
    <meta charset="UTF-8">
    <title>Tour Result</title>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
            integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
            crossorigin="anonymous"
    />
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>


<br/>
<div class="container">
    <div class="row">
        <div class="col-md-3 page-right">
            <div class="box">
                <h3>Search</h3>
                <hr class="divider">
                <div class="form-group">
                    <label class="control-label">Destination</label>
                    <select class="form-control" id="sel1">
                        <option value="">Choose a Destination</option>
                        <option>Australia</option>
                        <option>Bhutan</option>
                        <option>Botswana</option>
                        <option>Brazil</option>
                        <option>Bulgaria</option>
                        <option>China</option>
                        <option>Egypt</option>
                        <option>Georgia</option>
                        <option>Guatemala</option>
                        <option>India</option>
                        <option>Indonesia</option>
                        <option>Iran</option>
                        <option>Israel</option>
                        <option>Italy</option>
                        <option>Japan</option>
                        <option>Jordan</option>
                        <option>Kenya</option>
                        <option>Malaysia</option>
                        <option>Mexico</option>
                        <option>Namibia</option>
                        <option>Nepal</option>
                        <option>Netherlands Antilles</option>
                        <option>New Zealand</option>
                        <option>Peru</option>
                        <option>Philippines</option>
                        <option>Portugal</option>
                        <option>Saint Lucia</option>
                        <option>South Africa</option>
                        <option>South Korea</option>
                        <option>Spain</option>
                        <option>Tanzania</option>
                        <option>Thailand</option>
                        <option>United Arab Emirates</option>
                        <option>United Kingdom</option>
                        <option>United States</option>
                        <option>Vietnam</option>
                    </select>

                </div>
                <label class="control-label">Date</label>
                <div class="form-group">
                    <input type="text" name="From" id="From" class="form-control" placeholder="From Date"/>
                </div>
                <div class="form-group">
                    <input type="text" name="to" id="to" class="form-control" placeholder="To Date"/>
                </div>

                <button type="button" class="btn btn-primary btn-block" id="search-trip-destination">Search</button>
            </div>
            <br/>
            <div id="search-result"></div>



        </div>
        <div class="col-md-9 page-right">
            <h3>Search Results</h3>
            <h5 class="text-muted">Exploring your search results</h5>
            <div id="triplocator-widget-preview">
            </div>
        </div>
    </div>

</div>
<section id="footer">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 220">
        <path
                fill="#f8f9fa"
                fill-opacity="1"
                d="M0,160L48,154.7C96,149,192,139,288,138.7C384,139,480,149,576,154.7C672,160,768,160,864,165.3C960,171,1056,181,1152,165.3C1248,149,1344,107,1392,85.3L1440,64L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"
        ></path>
    </svg>
    <div class="container">
        <div class="row">
            <div class="col-md-4 footer-box">
                <p><b>ABOUT US</b></p>
                <p>
                    TripLocator is an online travel company which specializes in providing travel services to
                    destinations around the globe.We consider it a point of honor to connect you with only the
                    world's
                    best travel service providers.
                </p>
            </div>
            <div class="col-md-4 footer-box">
                <p><b>CONTACT US</b></p>
                <p>
                    <i class="fa fa-map-marker"></i> Steamboat Springs, CO, United States
                </p>
                <p><i class="fa fa-phone"></i> + 970-367-5600</p>
                <p><i class="fa fa-envelope-o"></i>contact@triplocator.com</p>
            </div>
            <div class="col-md-4 footer-box">
                <p><b>SUBSCRIBE FOR UPDATES</b></p>
                <input type="email" class="form-control" placeholder="Your Email"/>
                <button type="button" class="btn btn-primary">Subscribe</button>
            </div>
        </div>
        <hr/>
        <p class="copyright">© Copyright 2020 TripLocator Inc, USA All Rights Reserved </p>
    </div>
</section>

<script async src="../js/app.js"></script>
</body>
</html>
