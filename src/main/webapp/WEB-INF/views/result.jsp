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
        </div>
        <div class="col-md-9 page-right">
            <section data-theme-info="" class="bui-banner c-voyager-themes__theme-info" data-bui-component="Banner"
                     style="display: block;">
                <div class="bui-banner__content">
                    <div data-carousel-container=""
                         class="c-media-card-carousel c-media-card-carousel--mdot c-media-card-carousel--shadow">
                        <div role="region" class="bui-carousel bui-carousel--large bui-u-bleed@small"
                             data-bui-component="Carousel">
                            <ul class="bui-carousel__inner" data-bui-ref="carousel-container">
                                <li class="bui-carousel__item c-media-card-carousel__carousel-item"
                                    data-bui-ref="carousel-item" data-index="0"><a
                                        href="/hotel/in/planet-hollywood-beach-resort-goa.html?aid=1167535;label=217717395092916;sid=4daa7f8e848ee92d135906dcb6fcdea6;checkin=2020-08-20;checkout=2020-09-10;dest_id=4127;dest_type=region;group_adults=1;group_children=0;no_rooms=1;ucfac=171&amp;"
                                        class="bui-card bui-card--media bui-card--transparent" data-id="1335023"
                                        target="_blank">
                                    <div class="bui-card__image-container"><img
                                            src="https://www.triplocator.com/image/medium/tour/best-of-bhutan-tour/gangtey-gompa.jpg"
                                            class="bui-card__image">
                                    </div>
                                    <div class="bui-card__content">
                                        <div class="c-voyager-themes__before-header">Tour


                                            <i class="
                    bk-icon-wrapper
                    bk-icon-stars


                    star_track

                    " title=" 5 stars">
                                                <svg aria-hidden="true" critical="1" focusable="false" height="10"
                                                     width="54" viewBox="0 0 65 12"
                                                     class="bk-icon -sprite-ratings_stars_5">
                                                    <path d="m13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.4 3.5-2.5c.1 0 .1-.1.1-.2zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5z"
                                                          fill="#feba02"></path>
                                                </svg>
                                                <span class="invisible_spoken"> 5 stars</span>
                                            </i>


                                        </div>
                                        <header class="c-media-card-carousel__carousel-item-header"><h3
                                                class="bui-card__title bui-f-font-strong">Best Of Bhutan Tour</h3><h4
                                                class="bui-card__subtitle">
                                            8.5&nbsp;Very Good
                                        </h4></header>
                                        <div class="c-media-card-carousel__carousel-item-content">
                                            <div class="c-voyager-themes__location">
                                                <svg height="12" width="12" viewBox="0 0 24 24"
                                                     class="bk-icon -streamline-geo_pin">
                                                    <path d="M15 8.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM12 1.5a6.75 6.75 0 0 1 6.75 6.75c0 2.537-3.537 9.406-6.75 14.25-3.214-4.844-6.75-11.713-6.75-14.25A6.75 6.75 0 0 1 12 1.5zM12 0a8.25 8.25 0 0 0-8.25 8.25c0 2.965 3.594 9.945 7 15.08a1.5 1.5 0 0 0 2.5 0c3.406-5.135 7-12.115 7-15.08A8.25 8.25 0 0 0 12 0z"></path>
                                                </svg>
                                                Bhutan
                                            </div>
                                        </div>
                                        <footer class="c-media-card-carousel__carousel-item-footer">
                                            <div class="bui-price-display">
                                                <div class="bui-price-display__label">Starting from</div>
                                                <div class="bui-price-display__value">USD&nbsp;587</div>
                                            </div>
                                        </footer>
                                    </div>
                                </a></li>
                                <li class="bui-carousel__item c-media-card-carousel__carousel-item"
                                    data-bui-ref="carousel-item" data-index="1"><a
                                        href="/hotel/in/ramada-caravela-beach-resort.html?aid=1167535;label=217717395092916;sid=4daa7f8e848ee92d135906dcb6fcdea6;checkin=2020-08-20;checkout=2020-09-10;dest_id=4127;dest_type=region;group_adults=1;group_children=0;no_rooms=1;ucfac=171&amp;"
                                        class="bui-card bui-card--media bui-card--transparent" data-id="263718"
                                        target="_blank">
                                    <div class="bui-card__image-container"><img class="bui-card__image"
                                                                                src="https://www.triplocator.com/image/banner/tourunverified/kathmandu-valley-cultural-tour/pashupatinath-temple.jpg">
                                    </div>
                                    <div class="bui-card__content">
                                        <div class="c-voyager-themes__before-header">Tour


                                            <i class="
                    bk-icon-wrapper
                    bk-icon-stars


                    star_track

                    " title=" 5 stars">
                                                <svg aria-hidden="true" critical="1" focusable="false" height="10"
                                                     width="54" viewBox="0 0 65 12"
                                                     class="bk-icon -sprite-ratings_stars_5">
                                                    <path d="m13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.4 3.5-2.5c.1 0 .1-.1.1-.2zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5z"
                                                          fill="#feba02"></path>
                                                </svg>
                                                <span class="invisible_spoken"> 5 stars</span>
                                            </i>


                                        </div>
                                        <header class="c-media-card-carousel__carousel-item-header"><h3
                                                class="bui-card__title bui-f-font-strong">Kathmandu Valley Cultural
                                            Tour</h3><h4
                                                class="bui-card__subtitle">
                                            8.5&nbsp;Very Good
                                        </h4></header>
                                        <div class="c-media-card-carousel__carousel-item-content">
                                            <div class="c-voyager-themes__location">
                                                <svg height="12" width="12" viewBox="0 0 24 24"
                                                     class="bk-icon -streamline-geo_pin">
                                                    <path d="M15 8.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM12 1.5a6.75 6.75 0 0 1 6.75 6.75c0 2.537-3.537 9.406-6.75 14.25-3.214-4.844-6.75-11.713-6.75-14.25A6.75 6.75 0 0 1 12 1.5zM12 0a8.25 8.25 0 0 0-8.25 8.25c0 2.965 3.594 9.945 7 15.08a1.5 1.5 0 0 0 2.5 0c3.406-5.135 7-12.115 7-15.08A8.25 8.25 0 0 0 12 0z"></path>
                                                </svg>
                                                Nepal
                                            </div>
                                        </div>
                                        <footer class="c-media-card-carousel__carousel-item-footer">
                                            <div class="bui-price-display">
                                                <div class="bui-price-display__label">Starting from</div>
                                                <div class="bui-price-display__value">USD&nbsp;640</div>
                                            </div>
                                        </footer>
                                    </div>
                                </a></li>
                                <li class="bui-carousel__item c-media-card-carousel__carousel-item"
                                    data-bui-ref="carousel-item" data-index="2"><a
                                        href="/hotel/in/beleza-by-the-beach.html?aid=1167535;label=217717395092916;sid=4daa7f8e848ee92d135906dcb6fcdea6;checkin=2020-08-20;checkout=2020-09-10;dest_id=4127;dest_type=region;group_adults=1;group_children=0;no_rooms=1;ucfac=171&amp;"
                                        class="bui-card bui-card--media bui-card--transparent" data-id="271354"
                                        target="_blank">
                                    <div class="bui-card__image-container"><img class="bui-card__image"
                                                                                src="https://www.triplocator.com/image/banner/tour/dubai-creek-cruise-with-dinner-in-floating-restaurant/bg1jpg.jpg">
                                    </div>
                                    <div class="bui-card__content">
                                        <div class="c-voyager-themes__before-header">Resort


                                            <i class="
                    bk-icon-wrapper
                    bk-icon-stars


                    star_track

                    " title=" 4 stars">
                                                <svg aria-hidden="true" critical="1" focusable="false" height="10"
                                                     width="43" viewBox="0 0 52 12"
                                                     class="bk-icon -sprite-ratings_stars_4">
                                                    <path d="m13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.4 3.5-2.5c.1 0 .1-.1.1-.2zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5zm13 0c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3s.2.1.3 0l3.7-2.6 3.7 2.6h.3c.1-.1.1-.2.1-.3l-1.2-4.3 3.5-2.5z"
                                                          fill="#feba02"></path>
                                                </svg>
                                                <span class="invisible_spoken"> 4 stars</span>
                                            </i>


                                        </div>
                                        <header class="c-media-card-carousel__carousel-item-header"><h3
                                                class="bui-card__title bui-f-font-strong">Dubai Creek Cruise With Dinner
                                            In Floating Restaurant</h3><h4
                                                class="bui-card__subtitle">
                                            8.7&nbsp;Excellent
                                        </h4></header>
                                        <div class="c-media-card-carousel__carousel-item-content">
                                            <div class="c-voyager-themes__location">
                                                <svg height="12" width="12" viewBox="0 0 24 24"
                                                     class="bk-icon -streamline-geo_pin">
                                                    <path d="M15 8.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM12 1.5a6.75 6.75 0 0 1 6.75 6.75c0 2.537-3.537 9.406-6.75 14.25-3.214-4.844-6.75-11.713-6.75-14.25A6.75 6.75 0 0 1 12 1.5zM12 0a8.25 8.25 0 0 0-8.25 8.25c0 2.965 3.594 9.945 7 15.08a1.5 1.5 0 0 0 2.5 0c3.406-5.135 7-12.115 7-15.08A8.25 8.25 0 0 0 12 0z"></path>
                                                </svg>
                                                Dubai
                                            </div>
                                        </div>
                                        <footer class="c-media-card-carousel__carousel-item-footer">
                                            <div class="bui-price-display">
                                                <div class="bui-price-display__label">Starting from</div>
                                                <div class="bui-price-display__value">USD&nbsp;192</div>
                                            </div>
                                        </footer>
                                    </div>
                                </a></li>


                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<script async src="../js/app.js"></script>
</body>
</html>
