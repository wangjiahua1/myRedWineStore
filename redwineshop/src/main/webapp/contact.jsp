<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/12 0012
  Time: 下午 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="head.jsp"></jsp:include>

<body>
    <jsp:include page="pageloader.jsp"></jsp:include>
    <jsp:include page="header.jsp"></jsp:include>

    <div id="content" class="site-content content-fullwidth">
        <div class="space-dark"></div>
        <div class="no-container">
            <div class="blog-breadcrumb">
                <div class="container">

                    <div class="intro-div">
                        <h1 class="page-title">Contact us</h1>
                        <div class="breadcrumb">
                            <ul>

                                <li><a href="#">Home</a></li>

                                <li><span class="current">Pages</span></li>

                            </ul>

                        </div><!-- .breadcrumb -->
                    </div>

                </div><!-- .container -->
            </div>
        </div>

        <div class="container">

            <main id="main" class="site-main">

                <div class="inner-content">

                    <div class="infor-contact clearfix">
                        <div class="row">
                            <div class="infor-item infor-tel col-md-4 col-sm-4">
                                <span class="infor-icon"><i class="pe-7s-call"></i></span>
                                <span>(00) 123 456 789</span>
                            </div><!-- hotline -->

                            <div class="infor-item infor-add col-md-4 col-sm-4">
                                <span class="infor-icon"><i class="pe-7s-map-marker"></i></span>
                                <span>81 Gordon Rd, Mandurah <br/>
                        WA 6210, New York</span>
                            </div><!-- hotline -->

                            <div class="infor-item infor-email col-md-4 col-sm-4">
                                <span class="infor-icon"><i class="pe-7s-mail"></i></span>
                                <span>tuanna.design@gmail.com</span>
                            </div><!-- hotline -->
                        </div>
                    </div><!-- .infor-contact -->

                    <div class="our-infor">
                        <div class="title-box">
                            <h2 class="txt-pinyon">Vineyard</h2>
                            <h3>Contact Us</h3>
                        </div>
                        <div class="break-line"><span><img src="images/assets/break-image.png" alt=""/></span></div>
                        <div class="intro-text">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                        </div>
                        <div class="social">
                            <ul>
                                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="contact-main-ct row">
                            <div class="contact-form-page col-lg-6 col-md-6 col-sm-6">
                                <h3 class="title-form-ct">We will love to hear from you</h3>
                                <form novalidate="" class="contact-form-7" id="contact-form-page" method="post" action="#">

                                    <p class="contact-form-name">
                                        <input size="30" value="" name="author" placeholder="Name" id="author" type="text">
                                    </p>

                                    <p class="contact-form-email">
                                        <input size="30" value="" name="email" placeholder="Email" id="email" type="text">
                                    </p>

                                    <p class="contact-form-subject">
                                        <input size="30" value="" name="subject" placeholder="Subject" id="subject" type="text">
                                    </p>

                                    <p class="contact-form-comment">
                                        <textarea aria-required="true" rows="9" cols="45" placeholder="Your comment" name="comment" id="comment"></textarea>
                                    </p>

                                    <p class="form-submit">
                                        <input value="Send Messages" class="submit button radius plum bold" id="submit" name="submit" type="submit">
                                    </p>
                                </form>
                            </div>
                            <div class="google-map col-lg-6 col-md-6 col-sm-6" onclick="document.getElementById('iframe').style.pointerEvents= 'auto'">
                                <iframe id="iframe" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d30235.0648240954!2d105.6839908!3d18.6916589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1473759058083"  allowfullscreen></iframe>
                            </div>
                        </div>
                    </div><!-- our-team -->

                </div><!-- inner-content -->

            </main><!-- .site-main -->

        </div><!-- .container -->

    </div><!-- .site-content -->
    <div id="bottom" class="site-bottom">
        <div class="no-container">
            <div class="social">
                <ul>
                    <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                </ul>
            </div>
            <div class="back-to-top">
                <a href="#" class="btn-circle"><i class="fa fa-angle-up"></i></a>
            </div>
            <div class="icon-c">
                <ul class="list_iconc">
                    <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                    <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                    <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                    <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                    <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                </ul>
            </div>
        </div><!-- .container -->
    </div><!-- .site-bottom -->
    <jsp:include page="footer.jsp"></jsp:include>
</div><!-- #wrapper -->

<!-- jQuery -->
<script src="js/jquery-1.12.4.min.js"></script>
<!-- Boostrap -->
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/vendor/bootstrap-select.min.js"></script>
<!-- jQuery Sticky -->
<script src="js/vendor/jquery.sticky.js"></script>
<!-- OWL CAROUSEL Slider -->
<script src="js/vendor/owl.carousel.min.js"></script>
<!-- Flexslider -->
<script src="js/vendor/flexslider.min.js"></script>
<!-- PrettyPhoto -->
<script src="js/vendor/jquery.prettyPhoto.js"></script>
<!-- Jquery Countdown -->
<script src="js/vendor/jquery.countdown.js"></script>
<!-- Jquery Parallax -->
<script src="js/vendor/parallax.js"></script>
<!-- jQuery UI -->
<script src="js/vendor/jquery-ui.min.js"></script>
<!-- Jquery Masonry -->
<script src="js/vendor/masonry.pkgd.min.js"></script>
<!-- Main -->
<script src="js/main.js"></script>
</body>
</html>

