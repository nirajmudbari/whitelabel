<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script>
        var data = fetchFilterTourData();
    </script>
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
    <%-- <script type="text/javascript">

         function fetchFilterTourData() {
         }
     </script>--%>
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
                                        <div class="c-voyager-themes__before-header">Tour


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
    <div class="row">
        <div class="col-md-3">
            <fieldset>
                <legend>
                    Filter by
                </legend>
                <div id="filterbox_options" style="padding:0;">
                    <div class="filterbox_options_content" data-block-id="filter_options"><%--
                        <div class="filter_by_wrapper">
                            <h2 class="filter_by" >Filter by:
                            </h2>
                            <hr class="divider">
                        </div>--%>
                        <div class="
filterbox
 filterbox__first
" id="filter_price" data-id="filter_price" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Price Range
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="pri-1" data-name="pri" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=pri%3D1%3B;rsf="
                                   data-value="4320" data-count="923" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
USD&nbsp;0 - USD&nbsp;1000
</span></div>
                                    </label>
                                </a>
                                <a data-id="pri-2" data-name="pri" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=pri%3D2%3B;rsf="
                                   data-value="8650" data-count="337" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
USD&nbsp;1000 - USD&nbsp;2000
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--337--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="pri-3" data-name="pri" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=pri%3D3%3B;rsf="
                                   data-value="12900" data-count="141" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
USD&nbsp;2000 - USD&nbsp;3000
</span>
                                            <%--           <span class="filter_count">
           141
           </span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="pri-4" data-name="pri" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=pri%3D4%3B;rsf="
                                   data-value="17300" data-count="98" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
USD&nbsp;3000 - USD&nbsp;4000
</span>
                                            <%--     <span class="filter_count">
     98
     </span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="pri-5" data-name="pri" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=pri%3D5%3B;rsf="
                                   data-value="21600" data-count="111" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
USD&nbsp;4000 - above
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--111--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>
                        <div class="
vpm_d_sr_filter_suggestion
filterbox
" data-id="filter-suggestions" id="filter_filter-suggestions">
                            <div class="filtercategory icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Deal and Discounts
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" data-component="fl/exposed"
                                 data-fl-exposed-id="VaRWSHWKNKfVdeWCTKIaHWSLWSHWSLWVKCTceTVfCIVQVJKVdeVaTaGfIaJMUaWIJMeJfXJVGaJRWSRT"
                                 data-fl-exposed-attr="data-id">
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/tripTypeThemeFilter-7"
                                   data-id="tripTypeThemeFilter-7" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=tripTypeThemeFilter%3D7%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
0 %
</span>
                                            <%--                                            <span class="filter_count">837</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/ht_id-201"
                                   data-id="ht_id-201" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=ht_id%3D201%3B;percent_htype_apt=1;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
25 %
</span>
                                            <%--                                            <span class="filter_count">289</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/ht_beach-1"
                                   data-id="ht_beach-1" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=ht_beach%3D1%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
50 %
</span>
                                            <%--                                            <span class="filter_count">190</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/hotelfacility-301"
                                   data-id="hotelfacility-301" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=hotelfacility%3D301%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
75 %
</span>
                                            <%--                                            <span class="filter_count">599</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/popular_activities-302"
                                   data-id="popular_activities-302" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
100 %
</span>
                                            <%--                                            <span class="filter_count">503</span>--%>
                                        </div>
                                    </label>
                                </a>

                            </div>
                        </div>
                        <div class="
vpm_d_sr_filter_suggestion
filterbox
" data-id="sticky-filter-suggestions" id="filter_sticky-filter-suggestions" data-sticky="yes">
                            <div class="filtercategory icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Difficulty Level
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" data-component="fl/exposed"
                                 data-fl-exposed-id="VaRWSHWKNKfVdeWCTKIaHWSLWSHWSLWVKCTceTVfCIVQVJKVdeVaTaGfIaJMUaWIJMeJfXJVGaJRWSRT"
                                 data-fl-exposed-attr="data-id">
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/tripTypeThemeFilter-7"
                                   data-id="tripTypeThemeFilter-7" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=tripTypeThemeFilter%3D7%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
0
</span>
                                            <%--                                            <span class="filter_count">837</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/ht_id-201"
                                   data-id="ht_id-201" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=ht_id%3D201%3B;percent_htype_apt=1;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
1
</span>
                                            <%--                                            <span class="filter_count">289</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/ht_beach-1"
                                   data-id="ht_beach-1" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=ht_beach%3D1%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
2
</span>
                                            <%--                                            <span class="filter_count">190</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/hotelfacility-301"
                                   data-id="hotelfacility-301" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=hotelfacility%3D301%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
3
</span>
                                            <%--                                            <span class="filter_count">599</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/popular_activities-302"
                                   data-id="popular_activities-302" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
4
</span>
                                            <%--                                            <span class="filter_count">503</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-google-track="Click/Action: vpm_d_sr_filter_suggestion/mealplan-4"
                                   data-id="mealplan-4" class="filterelement js-filter__element"
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=mealplan%3D4%3B;rsf="
                                   data-first-filter-suggestion="" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox ">
<span class="filter_label">
5
</span>
                                            <%--                                            <span class="filter_count">4</span>--%>
                                        </div>
                                    </label>
                                </a>

                            </div>
                        </div>
                        <div class="
filterbox
" id="duration" data-id="duration" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Duration (days)
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="duration-1" data-name="duration"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=health_and_hygiene%3D1%3B;rsf="
                                   data-value="1" data-count="176" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
0 - 9
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--176--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="duration-2" data-name="duration"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=health_and_hygiene%3D1%3B;rsf="
                                   data-value="1" data-count="176" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
9 - 18
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--176--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a> <a data-id="duration-3" data-name="duration"
                                        class="filterelement js-filter__element "
                                        href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=health_and_hygiene%3D1%3B;rsf="
                                        data-value="1" data-count="176" tabindex="-1">
                                <label class="bui-checkbox">
                                    <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                    <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
18 - 26
</span>
                                        <%--                                            <span class="filter_count">--%>
                                        <%--176--%>
                                        <%--</span>--%>
                                    </div>
                                </label>
                            </a> <a data-id="duration-4" data-name="duration"
                                    class="filterelement js-filter__element "
                                    href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=health_and_hygiene%3D1%3B;rsf="
                                    data-value="1" data-count="176" tabindex="-1">
                                <label class="bui-checkbox">
                                    <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                    <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
26 - 35
</span>
                                    </div>
                                </label>
                            </a>
                            </div>
                        </div>
                        <div class="
filterbox
" id="filter_class" data-id="filter_class" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Rating
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="class-1" data-name="class" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=class%3D1%3B;rsf="
                                   data-value="1" data-count="6" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
1 star
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--6--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="class-2" data-name="class" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=class%3D2%3B;rsf="
                                   data-value="2" data-count="54" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
2 stars
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="class-3" data-name="class" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=class%3D3%3B;rsf="
                                   data-value="3" data-count="390" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
3 stars
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="class-4" data-name="class" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=class%3D4%3B;rsf="
                                   data-value="4" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
4 stars
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="class-5" data-name="class" class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=class%3D5%3B;rsf="
                                   data-value="5" data-count="31" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
5 stars
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>
                        <div class="
filterbox
" id="filter_tour_type" data-id="filter_tour_type" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Tour Type
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="tour_type-302" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-value="302" data-count="503" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Luxury Tour
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--503--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="tour_type-65" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D65%3B;rsf="
                                   data-value="65" data-count="385" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Private Tour
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="tour_type-19" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D19%3B;rsf="
                                   data-value="19" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Group Tour
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="tour_type-55" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D55%3B;rsf="
                                   data-value="55" data-count="165" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Day Tour
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="tour_type-137" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Multi-day tour
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="tour_type-138" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Miking tour
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="tour_type-139" data-name="tour_type"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Escorted tour
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>
                        <div class="
filterbox
" id="filter_language" data-id="filter_language" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Guiding Language
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="language-302" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-value="302" data-count="503" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
English
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--503--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="language-65" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D65%3B;rsf="
                                   data-value="65" data-count="385" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
German
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="language-19" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D19%3B;rsf="
                                   data-value="19" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Italian
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="language-55" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D55%3B;rsf="
                                   data-value="55" data-count="165" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Korean
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="language-137" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Chinese
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="language-138" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Japanese
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="language-139" data-name="language"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Hindi
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>

                        <div class="
filterbox
" id="filter_language" data-id="filter_language" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Sleeping Mode
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="sleeping-mode-302" data-name="sleeping-mode"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-value="302" data-count="503" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Hotel
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--503--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="sleeping-mode-65" data-name="sleeping-mode"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D65%3B;rsf="
                                   data-value="65" data-count="385" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Guest House
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="sleeping-mode-19" data-name="sleeping-mode"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D19%3B;rsf="
                                   data-value="19" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Tent/Camping
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>

                        <div class="
filterbox
" id="filter_transportation" data-id="filter_transportation" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Transportation
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="transportation-302" data-name="transportation"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-value="302" data-count="503" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Boating
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--503--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="transportation-65" data-name="transportation"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D65%3B;rsf="
                                   data-value="65" data-count="385" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Plane
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="transportation-19" data-name="transportation"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D19%3B;rsf="
                                   data-value="19" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Car
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="transportation-55" data-name="transportation"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D55%3B;rsf="
                                   data-value="55" data-count="165" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Tourist Bus
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="transportation-137" data-name="transportation"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Walking
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="transportation-138" data-name="transportation"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Helicopter
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>

                        <div class="
filterbox
" id="filter_special_service" data-id="filter_special-service" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Special Service
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="special-service-302" data-name="special-service"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-value="302" data-count="503" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Accessible Lodging
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--503--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="special-service-65" data-name="special-service"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D65%3B;rsf="
                                   data-value="65" data-count="385" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Child Friendly
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="special-service-19" data-name="special-service"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D19%3B;rsf="
                                   data-value="19" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Lockers/Storage
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="special-service-55" data-name="special-service"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D55%3B;rsf="
                                   data-value="55" data-count="165" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Reserved Parking
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="special-service-137" data-name="special-service"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D137%3B;rsf="
                                   data-value="137" data-count="153" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Wheelchair
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>

                        <div class="
filterbox
" id="filter_activity" data-id="filter_activity" data-et-view="   ">
                            <div class="
filtercategory
 icon_filtercategory_container">
                                <h3 class="filtercategory-title">
                                    Activity Categories
                                </h3>
                                <br/>
                            </div>
                            <div class="filteroptions" role="group">
                                <a data-id="activity-302" data-name="activity"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D302%3B;rsf="
                                   data-value="302" data-count="503" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
City Tours
</span>
                                            <%--                                            <span class="filter_count">--%>
                                            <%--503--%>
                                            <%--</span>--%>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="activity-65" data-name="activity"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D65%3B;rsf="
                                   data-value="65" data-count="385" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Sightseeing Tours
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="activity-19" data-name="activity"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D19%3B;rsf="
                                   data-value="19" data-count="177" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Arts & Culture
</span>
                                        </div>
                                    </label>
                                </a>
                                <a data-id="activity-55" data-name="activity"
                                   class="filterelement js-filter__element "
                                   href="/searchresults.en-us.html?aid=1167535;label=217847612696172;sid=4daa7f8e848ee92d135906dcb6fcdea6;tmpl=searchresults;ac_position=0;checkin=2020-08-20;class_interval=1;dest_id=4127;dest_type=region;dtdisc=0;group_adults=1;group_children=0;inac=0;index_postcard=0;interval=21;label_click=undef;postcard=0;raw_dest_type=region;room1=A;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=57ba257cd273009c;ss_all=0;ssb=empty;sshis=0;top_ufis=1&amp;;nflt=popular_activities%3D55%3B;rsf="
                                   data-value="55" data-count="165" tabindex="-1">
                                    <label class="bui-checkbox">
                                        <input class="bui-checkbox__input js-bui-checkbox__input" type="checkbox">
                                        <div class="bui-checkbox__label filter_item css-checkbox">
<span class="filter_label
">
Nature Tours
</span>
                                        </div>
                                    </label>
                                </a>
                            </div>
                        </div>
                        <div data-et-view="OLGHcWIPXe:1"></div>
                        <div id="filter_price_tracking" class="filterbox_tracking"></div>


                        <div id="filter_health_and_hygiene_tracking" class="filterbox_tracking"></div>

                        <div id="filter_class_tracking" class="filterbox_tracking"></div>

                        <div id="filter_popular_activities_tracking" class="filterbox_tracking"></div>

                        <div id="filter_out_of_stock_tracking" class="filterbox_tracking"></div>

                        <div id="filter_deal_tracking" class="filterbox_tracking"></div>

                        <div id="filter_24hr_reception_tracking" class="filterbox_tracking"></div>

                        <div id="filter_fc_tracking" class="filterbox_tracking"></div>

                        <div id="filter_ht_beach_tracking" class="filterbox_tracking"></div>

                        <div id="filter_mealplan_tracking" class="filterbox_tracking"></div>

                        <div id="filter_hoteltype_tracking" class="filterbox_tracking"></div>

                        <div id="filter_popular_nearby_landmarks_tracking" class="filterbox_tracking"></div>

                        <div id="filter_twin_double_tracking" class="filterbox_tracking"></div>

                        <div id="filter_review_tracking" class="filterbox_tracking"></div>

                        <div id="filter_facilities_tracking" class="filterbox_tracking"></div>

                        <div id="filter_min_bathrooms_tracking" class="filterbox_tracking"></div>

                        <div id="filter_roomfacilities_tracking" class="filterbox_tracking"></div>

                        <div id="filter_uf_tracking" class="filterbox_tracking"></div>

                        <div id="filter_chains_tracking" class="filterbox_tracking"></div>

                        <div id="filter_accessible_facilities_tracking" class="filterbox_tracking"></div>

                        <div id="filter_accessible_room_facilities_tracking" class="filterbox_tracking"></div>

                        <div id="filter_tripTypeThemeFilter_tracking" class="filterbox_tracking"></div>

                    </div>
                </div>
                <div id="filter_tracking_remaining" class="filterbox_tracking"></div>
            </fieldset>
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
                                        <div class="c-voyager-themes__before-header">Tour


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

<script async src="../js/app.js"></script>
</body>
</html>
