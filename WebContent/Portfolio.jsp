<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link type="text/css" media="all" href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/boostrap-files/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/fancybox/source/helpers/jquery.fancybox-buttons3447.css?v=1.0.5" type="text/css" media="screen" />
    <link rel="stylesheet" type="text/css" href="assets/fancybox/source/jquery.fancybox8cbb.css?v=2.1.5" media="screen" />
    <link type="text/css" media="all" href="assets/css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link type="text/css" media="all" href="assets/css/contact.form.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/colour-scheme/color-blue.css" rel="stylesheet" type="text/css" data-color="color-blue" media="all" id="stylesheet-new">
    <link type="text/css" media="all" href="assets/css/respons.css" rel="stylesheet" />
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/favicons/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="assets/img/favicons/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="assets/img/favicons/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" href="assets/img/favicons/apple-touch-icon.png" />
    <link rel="shortcut icon" href="assets/img/favicons/favicon.png" />
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
</head>
<body>

<div class="animationload">
    <div class="loader"></div>
</div>

<div id="wraper">

    <header class="head">
        <div class="container">
            <div class="row">
                <div class="col-xs-8 col-sm-11 col-lg-11">
                    <img class="logo-page" src="assets/img/portfolio_l.png" alt="Ukieweb">
                    <h2 class="title">Portfolio</h2>
                    <h4 class="sub-title">Some of My Works</h4>
                </div>
                <div class="col-xs-4 col-sm-1 col-lg-1 text-right">
                    <a href="Index.jsp" class="btn-close hover-animate"></a>
                </div>
            </div>
        </div>
    </header>

    <div class="portfolio-section padding-block">
        <div class="container">
            <div class="row">
                    <div class="portfolio">
                        <div class="filter_div controls">
                            <div class="col-xs-12 col-sm-12 col-lg-11">
                                <ul>
                                    <li class="hover-animate filter" data-filter="all">All</li>
                                    <li class="hover-animate filter" data-filter=".category-1">Website</li>
                                    <li class="hover-animate filter" data-filter=".category-2">Software</li>
                                </ul>
                            </div>
                        </div>

                        <div id="portfolio-grid">

                            <div class="mix col-xs-12 col-sm-6 col-lg-4 portfolio-item category-2" data-value="1">
                                <div class="within">

                                    <img src="assets/img/portfolio/logo_icon_small.png" alt="Alt">
                                    <div class="port-item-cont">
                                        <h3 class="title">Jewellery Shop</h3>
                                        <p class="desc">Use for manage jewellery shop</p>
                                        <a class="fancybox popup-content view-work hover-animate" href="#work-0" rel="mygallery">View details</a>
                                    </div>

                                    <div class="hidden">
                                        <div class="podrt-desc" id="work-0">
                                            <div class="modal-box-content">
                                                <img src="assets/img/portfolio/p_b1.png" alt="Alt">
                                                <div class="text">
                                                    <h3 class="title">Jewellery Shop Management</h3>
                                                    <table>
                                                        <tr>
                                                            <td class="font-weight-m width-td">Completed</td>
                                                            <td>November 2016</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="font-weight-m">Client</td>
                                                            <td>Dwarkesh Jewellers</td>
                                                        </tr>
                                                    </table>
                                                    <p>This software is specially designed for dwarkesh jewellers to manage their shop easily.</p>
                                                    <a href="#" class="btn btn-color">See Live</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="mix col-xs-12 col-sm-6 col-lg-4 portfolio-item category-1" data-value="2">
                                <div class="within">

                                    <img src="assets/img/portfolio/myweb.jpg" alt="Alt">
                                    <div class="port-item-cont">
                                        <h3 class="title">Personal Blog</h3>
                                        <p class="desc">My website and blog</p>
                                        <a class="fancybox popup-content view-work hover-animate" href="#work-1" rel="mygallery">View details</a>
                                    </div>

                                    <div class="hidden">
                                        <div class="podrt-desc" id="work-1">
                                            <div class="modal-box-content">
                                                <img src="assets/img/portfolio/myweb.jpg" alt="Alt">
                                                <div class="text">
                                                    <h3 class="title">Personal Blog Website</h3>
                                                    <table>
                                                        <tr>
                                                            <td class="font-weight-m width-td">Completed</td>
                                                            <td>January 2017</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="font-weight-m">Client</td>
                                                            <td>Myself</td>
                                                        </tr>
                                                    </table>
                                                    <p>This is my sem-6 project, i developed my personal blog, this blog is developed in JSP.</p>
                                                    <a href="#" class="btn btn-color">See Live</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
            </div>

        </div>

    </div>


    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-phone"></i></span> +91 96382-77892
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-paper-plane"></i></span> kanu.malivad@gmail.com
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-map-marker"></i></span>B-3, Joshipara, Junagadh.
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-3 text-right">
                    <span class="copyright">Copyright © 2016 All right reserved</span>
                </div>
            </div>
        </div>
    </footer>

</div>

<a href="#" class="btn hover-animate scrollToTop"><i class="fa fa-angle-up"></i></a>

<div class="style-open-form animated hi-icon-effect-8">
    <i class="hi-icon fa fa-envelope-o ukie-icons hover-animate hi-icon-mobile"></i>
</div>
<div class="style-contact-form style-off-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12 ">
            <div class="contact-form">
                <div class="btn-close-form">
                </div>
                <h3 class="title title-contact">Contact Me</h3>
                <p>Use this form to tell me about your project goals and needs. I will be in touch within 24 hours.</p>
                <form action="https://ukieweb.com/envato/ukiecard/style1/assets/php/contact.php" id="contact-form-panel" method="post">
                    <input type="text" id="user-name-panel" name="user-name" value="" placeholder="Name" />
                    <input type="email" id="user-email-panel" name="user-email" value="" placeholder="Email" />
                    <input type="hidden" id="user-status-panel" name="user-status" value="1"  />
                    <textarea id="user-message-panel" name="user-message" placeholder="Message"></textarea>
                    <div class="footer-form">
                        <input type="submit" id="submit-btn-panel" class="btn btn-color hover-animate"  value="Send Message" />
                        <div class="info-message-form">
                            <p>Please fill out all the fields!</p>
                            <span class="close-msg"><i class="fa fa-close"></i></span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="assets/boostrap-files/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.appear.js" type="text/javascript"></script>
<script src="assets/js/jquery.mixitup.min.js" type="text/javascript"></script>
<script src="assets/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.flexslider-min.js" type="text/javascript"></script>
<script src="assets/js/jquery.inview.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.knob.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
<script src="assets/fancybox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript" ></script>
<script src="assets/fancybox/source/jquery.fancybox.pack8cbb.js?v=2.1.5" type="text/javascript" ></script>
<script src="assets/fancybox/source/helpers/jquery.fancybox-buttons3447.js?v=1.0.5" type="text/javascript"></script>
<script src="assets/js/jquery.ratyli.js" type="text/javascript"></script>
<script src="assets/js/portfolio_scripts.js" type="text/javascript"></script>
<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
<script src="assets/js/contact_scripts.js" type="text/javascript"></script>
<script src="assets/js/scripts.js" type="text/javascript"></script>

</body>
</html>