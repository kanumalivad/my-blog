<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Contact</title>  
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link type="text/css" media="all" href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/boostrap-files/css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/colour-scheme/color-blue.css" rel="stylesheet" type="text/css" data-color="color-blue" media="all" id="stylesheet-new">
    <link type="text/css" media="all" href="assets/css/respons.css" rel="stylesheet" />
    <link rel='stylesheet' id='fontello-css'  href='wp-content/css/fonts/fontello/css/fontello.css' type='text/css' media='all' />
    <link rel='stylesheet' id='main-css'  href='wp-content/css/main.css' type='text/css' media='all' />              
    <script>
        function myMap() 
        {
            var myLatLng = {lat: 21.538715, lng: 70.451093};
            var map = new google.maps.Map(document.getElementById('map'),{
            zoom: 14,
            center: myLatLng
            });

            var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Hello World!'
            });
        }
     </script>
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
                    <img class="logo-page" src="assets/img/contact_l.png" alt="Ukieweb" style="padding-left: 25px;">
                    <h2 class="title">Contact</h2>
                    <h4 class="sub-title">Get in touch with me</h4>
                </div>
                <div class="col-xs-4 col-sm-1 col-lg-1 text-right">
                    <a href="Index.jsp" class="btn-close hover-animate"></a>
                </div>
            </div>
        </div>
    </header>

    <section>
         <div class="content">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-lg-6">
                    <div class="letter">
                        <h4 class="letter-title">Kanu Malivad</h4>
                        <div class="stamp"><img alt="Kanu Malivad" src="assets/img/v3.jpg"></div>
                        <div class="letter-info">
                            <p><i class="icon-at"></i>kanu.malivad@gmail.com</p>
                            <p><i class="icon-phone"></i>+91 9638277892</p>
                            <p><i class="icon-location"></i>B-3, Shivam park, Aditynagar-2, Joshipara, Junagadh.</p>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-lg-6">
                    <h2 class="section-title"><span><i class="fa icon-chat"></i>LET&#8217;S SOCIALIZE</span></h2>
                    <ul class="social">
                    <li><a target="_blank" class="facebook" href="#"></a></li>
                    <li><a target="_blank" class="twitter" href="#"></a></li>
                    <li><a target="_blank" class="linkedin" href="#"></a></li>
                    <li><a target="_blank" class="google-plus" href="#"></a></li>
                    <li><a target="_blank" class="pinterest" href="#"></a></li>
                    <li><a target="_blank" class="github" href="#"></a></li>
                    <li><a target="_blank" class="behance" href="#"></a></li>
                    <li><a target="_blank" class="dribbble" href="#"></a></li>
                    <li><a target="_blank" class="instagram" href="#"></a></li>
                    <li><a target="_blank" class="lastfm" href="#"></a></li>
                    <li><a target="_blank" class="rss" href="feed/index.html"></a></li>
                    <li><a target="_blank" class="vimeo" href="#"></a></li>
                    <li><a target="_blank" class="forrst" href="#"></a></li>
                    <li><a target="_blank" class="skype" href="#"></a></li>
                    <li><a target="_blank" class="picasa" href="#"></a></li>
                    <li><a target="_blank" class="youtube" href="#"></a></li>
                    <li><a target="_blank" class="flickr" href="#"></a></li>
                    <li><a target="_blank" class="tumblr" href="#"></a></li>
                    <li><a target="_blank" class="blogger" href="#"></a></li>
                    <li><a target="_blank" class="delicious" href="#"></a></li>
                    <li><a target="_blank" class="digg" href="#"></a></li>
                    <li><a target="_blank" class="friendfeed" href="#"></a></li>
                    <li><a target="_blank" class="wordpress" href="#"></a></li>
                    <li><a target="_blank" class="stack-overflow" href="#"></a></li>
                    <li><a target="_blank" class="foursquare" href="#"></a></li>
                    <li><a target="_blank" class="xing" href="#"></a></li>
                    <li><a target="_blank" class="weibo" href="#"></a></li>
                    </ul>
                </div>                    
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-lg-6">
                    <h2 class="section-title"><span><i class="fa icon-paper-plane"></i>DROP ME A LINE</span></h2>
                    <div class="con-form">
                    <form id="contact-form" method="post" action="http://themes.pixelwars.org/cvcard-wp/wp-content/themes/cvcard/send-mail.php"><input type="hidden" id="sender_domain" name="sender_domain" value="server@themes.pixelwars.org"><input type="hidden" id="subject" name="subject" value="Contact form message from: cvCard WP">
                    <p><label for="name">NAME</label><input type="text" id="name" name="name" class="required"></p>
                    <p><label for="email">EMAIL</label><input type="text" id="email" name="email" class="required email"></p>
                    <p><label for="message">MESSAGE</label><textarea  id="message" name="message" class="required"></textarea></p>
                    <p style="margin: 0px;"><input type="hidden" id="captcha" name="captcha" value="no"></p>
                    <p><input type="submit" class="submit button primary"  value="SEND"></p>
                    </form>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-lg-6">
                    <h2 class="section-title"><span><i class="fa icon-location"></i>LOCATION</span></h2>
                    <div id="map" class="map"></div>
                </div>
            </div>
        </div>
    </section>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate" style="padding-left: 25px;">
                        <span class="ukie-icons hover-animate"><i class="fa fa-phone"></i></span> +91 9638277892
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
                    <span class="copyright" style="padding-right: 25px;">Copyright © 2016 All right reserved</span>
                </div>
            </div>
        </div>
    </footer>
</div>

<a href="#" class="btn hover-animate scrollToTop"><i class="fa fa-angle-up"></i></a>

<script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="assets/boostrap-files/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.appear.js" type="text/javascript"></script>
<script src="assets/js/jquery.mixitup.min.js" type="text/javascript"></script>
<script src="assets/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.flexslider-min.js" type="text/javascript"></script>
<script src="assets/js/jquery.inview.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.knob.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
<script src="assets/js/jquery.ratyli.js" type="text/javascript"></script>
<script src="assets/js/contact_scripts.js" type="text/javascript"></script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJteu68fh4C04L3eHJuzEToHIEcrRh-mk&amp;callback=myMap">
</script>
<script src="assets/js/scripts.js" type="text/javascript"></script>

</body>

</html>