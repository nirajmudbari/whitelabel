<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Widget Builder</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
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
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<section id="main-header">
    <div class="container">
        <div class="logo">
            <img src="/img/b.png" />
        </div>
    </div>
</section>
<section id="header">
    <div class="container">
        <div class="header-element">
            <div class="header-text">
                Explore the best tours all over the world
                <p style="font-size: 18px;">
                    Visit Europe, America, Asia, Africa or Beyond
                </p>
            </div>
            <div class="wrapper">
                <div class="row">
                    <div class="col-md-5">
                        <span class="title">TOUR</span>
                        <input type="text" class="tour-type form-control">
                    </div>
                    <div class="col-md-4">
                        <span class="title">TOUR DATE</span>
                        <div class="calendar">
                            <input type="text" class="tour-date form-control"><button class="calendar-btn"> <i class="fa fa-calendar icon"></i></button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <button class="search-btn">Search</button>
                    </div>
                </div>
                <div class="result">

                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<section id="poweredby">
    <div class="container">
        <div class="row">
            <p class="poweredby"></p>
        </div>
    </div>
</section>
<section id="tours">
    <div class="container">
        <h2 class="text-center" style="margin-bottom: 60px; color: rgb(21, 185, 43);position: relative;top: 25px;">TOURS</h2>
        <div id="tour-list"></div>
    </div>
</section>
<section id="offers">
    <div class="container">
        <h2 class="text-center" style="margin-bottom: 60px;position: relative;top: 25px;color: rgb(21, 185, 43);">OFFERS</h2>
        <div id="tour-offers"></div>
    </div>
</section>
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
                    TripLocator is an online travel company which specializes in providing travel services to destinations around the globe.We consider it a point of honor to connect you with only the world's best travel service providers.
                </p>
            </div>
            <div class="col-md-4 footer-box">
                <p><b>CONTACT US</b></p>
                <p>
                    <i class="fa fa-map-marker"></i> Steamboat Springs, CO, United States
                </p>
                <p><i class="fa fa-phone"></i>  + 970-367-5600</p>
                <p><i class="fa fa-envelope-o"></i>contact@triplocator.com</p>
            </div>
            <div class="col-md-4 footer-box">
                <p><b>SUBSCRIBE FOR UPDATES</b></p>
                <input type="email" class="form-control" placeholder="Your Email" />
                <button type="button" class="btn btn-primary">Subscribe</button>
            </div>
        </div>
        <hr />
        <p class="copyright">© Copyright 2020 TripLocator Inc, USA All Rights Reserved  </p>
    </div>
</section>
<script src="/js/app.js"></script>
</body>
</html>
