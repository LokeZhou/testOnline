<%--
  Created by IntelliJ IDEA.
  User: Leeeeo
  Date: 2017/6/20
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
    <title>Welcom</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="./images/favicon.png">

    <!-- Style -->
    <link rel="stylesheet" href="css/theme.css">

    <!-- TODO: Predefined Schemes (select one of the presented) -->
    <link rel="alternate stylesheet" href="./css/theme-persimmon.css" title="theme-persimmon">
    <link rel="alternate stylesheet" href="./css/theme-atomic-tangerine.css" title="theme-atomic-tangerine">
    <link rel="alternate stylesheet" href="./css/theme-yellow-sea.css" title="theme-yellow-sea">
    <link rel="alternate stylesheet" href="./css/theme-rio-grande.css" title="theme-rio-grande">
    <link rel="alternate stylesheet" href="./css/theme-vida-loca.css" title="theme-vida-loca">
    <link rel="alternate stylesheet" href="./css/theme-mountain-meadow.css" title="theme-mountain-meadow">
    <link rel="alternate stylesheet" href="./css/theme-java.css" title="theme-java">
    <link rel="alternate stylesheet" href="./css/theme-mariner.css" title="theme-mariner">
    <link rel="alternate stylesheet" href="./css/theme-medium-purple.css" title="theme-medium-purple">
    <link rel="alternate stylesheet" href="./css/theme-lavender-magenta.css" title="theme-lavender-magenta">

</head>
<body>

<!-- Preloader -->
<div id="preloader">
    <div class="loader"></div>
</div>
<!-- /Preloader -->

<!-- Slider -->
<div class="slider owl-carousel owl-theme">

    <!-- Slide -->
    <div class="item mask" style="background: url(images/home.jpg) no-repeat center top / cover;"
         data-stellar-background-ratio="0.4">

        <div class="container height-100p">
            <div class="row height-100p">

                <div class="col-sm-6 col-md-6 height-100p bounceInLeft wow" data-wow-duration="1.3s"
                     data-wow-delay="0.3s" data-stellar-ratio="0.7">
                    <div class="vertical-middle">
                        <h1 class="text-white">欢迎进行 <span class="text-theme">在线测试</span></h1>
                        <div class="text-white h4">
                              testOnline
                        </div>
                         <a href="${pageContext.request.contextPath }/user/login.action" class="smooth-scroll btn btn-theme"  style="background-image: none">登陆</a>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-md-offset-2 height-100p bounceInRight wow" data-wow-duration="1.3s"
                     data-stellar-ratio="0.8">
                    <div class="vertical-middle">
                        <img src="./images/devices.png" class="./images-responsive" alt="">
                    </div>
                </div>

            </div>
        </div>

    </div>
    <!-- /Slide -->

    <!-- Slide -->
    <div class="item mask" style="background: url(images/home-02.jpg) no-repeat center top / cover;"
         data-stellar-background-ratio="0.4">

        <div class="container height-100p">
            <div class="row height-100p">

                <div class="col-sm-6 col-md-6 height-100p bounceInLeft wow" data-wow-duration="1.3s"
                     data-wow-delay="0.3s" data-stellar-ratio="0.7">
                    <div class="vertical-middle">
                        <h1 class="text-white">欢迎进行 <span class="text-theme">在线测试</span></h1>
                        <div class="text-white h4">
                            Join in testOnlie
                        </div>
                        <a href="${pageContext.request.contextPath }/user/register.action" class="smooth-scroll btn btn-theme"  style="background-image: none">注册</a>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-md-offset-2 height-100p bounceInRight wow" data-wow-duration="1.3s"
                     data-stellar-ratio="0.8">
                    <div class="vertical-middle">
                        <img src="./images/devices.png" class="./images-responsive" alt="">
                    </div>
                </div>

            </div>
        </div>

    </div>
    <!-- /Slide -->
    <div class="item mask" style="background: url(images/home99.jpg) no-repeat center top / cover;"
         data-stellar-background-ratio="0.4">

        <div class="container height-100p">
            <div class="row height-100p">

                <div class="col-sm-6 col-md-6 height-100p bounceInLeft wow" data-wow-duration="1.3s"
                     data-wow-delay="0.3s" data-stellar-ratio="0.7">
                    <div class="vertical-middle">
                        <h1 class="text-white">欢迎进行 <span class="text-theme">在线测试</span></h1>
                        <div class="text-white h4">
                            Testing
                        </div>
                        <a href="${pageContext.request.contextPath }/user/testSelect.action" class="smooth-scroll btn btn-theme"  style="background-image: none">直接测试</a>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-md-offset-2 height-100p bounceInRight wow" data-wow-duration="1.3s"
                     data-stellar-ratio="0.8">
                    <div class="vertical-middle">
                        <img src="./images/devices.png" class="./images-responsive" alt="">
                    </div>
                </div>

            </div>
        </div>

    </div>
      <!-- /Slide -->
</div>
<!-- /Slider -->

<!-- Main -->
<main class="main-container">
  <!-- Section: About -->
    <section id="about" class="section">
        <div class="container">

            

            <div class="row">

                <!-- Feature Block -->
                <div class="col-sm-4 feature fadeIn wow" data-wow-duration="1.3s">
                    <span class="icon_link_alt icon"></span>
                    <div class="h3 title">快速测试</div>
                    <p class="description">
                                                                                          简单、免注册快速测试
                    </p>
                    <a href="#" class="btn btn-theme" style="background-image: none">更多</a>
                </div>
                <!-- /Feature Block -->

                <!-- Feature Block -->
                <div class="col-sm-4 feature fadeIn wow" data-wow-duration="1.3s" data-wow-delay="0.4s">
                    <span class="icon_mobile icon"></span>
                    <div class="h3 title">多平台</div>
                    <p class="description">
                                                                                       手机、平板、电脑
                    </p>
                    <a href="#" class="btn btn-theme" style="background-image: none">更多</a>
                </div>
                <!-- /Feature Block -->

                <!-- Feature Block -->
                <div class="col-sm-4 feature fadeIn wow" data-wow-duration="1.3s" data-wow-delay="0.8s">
                    <span class="icon_pens icon"></span>
                    <div class="h3 title">隐私安全</div>
                    <p class="description">
                                                                                          用户信息高级保护
                    </p>
                    <a href="#" class="btn btn-theme" style="background-image: none">更多</a>
                </div>
                <!-- /Feature Block -->

            </div>
        </div>
    </section>
    <!-- /Section: About -->
</main>   

   

   

<!-- SCRIPTS -->
<script src="./js/jquery-2.2.0.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/owl.carousel.min.js"></script>
<script src="./js/jquery.magnific-popup.min.js"></script>
<script src="./js/jquery.validate.min.js"></script>
<script src="./js/jquery.stellar.min.js"></script>
<script src="./js/wow.min.js"></script>
<script src="./js/masonry.pkgd.min.js"></script>
<script src="./js/jquery.appear.js"></script>
<script src="./js/jquery.animateNumber.min.js"></script>
<script src="./js/general.js"></script>
<!-- /SCRIPTS -->


<!-- TODO: Remove this block, Demo-version only -->
<!-- Styleswitcher -->
<div id="styleswitcher" class="styleswitcher">
    <div class="styleswitcher-content">

        <h4 class="styleswitcher-title">Color Presets</h4>
        <div class="styleswitcher-block">
            <ul class="styleswitcher-list-colors">
                <li><a href="javascript: switchStyle('theme-persimmon')" style="background: #ff5555;"
                       title="Persimmon"></a></li>
                <li><a href="javascript: switchStyle('theme-atomic-tangerine')" style="background: #ff9e55;"
                       title="Atomic Tangerine"></a></li>
                <li><a href="javascript: switchStyle('theme-yellow-sea')" style="background: #fab000;"
                       title="Yellow Sea"></a></li>
                <li><a href="javascript: switchStyle('theme-rio-grande')" style="background: #aed605;"
                       title="Rio Grande"></a></li>
                <li><a href="javascript: switchStyle('theme-vida-loca')" style="background: #38b71f;"
                       title="Vida Loca"></a></li>
                <li><a href="javascript: switchStyle('theme-mountain-meadow')" style="background: #1fb768;"
                       title="Mountain Meadow"></a></li>
                <li><a href="javascript: switchStyle('theme-java')" style="background: #1fb7a4;" title="Java"></a></li>
                <li><a href="javascript: switchStyle('theme-mariner')" style="background: #3274cd;" title="Mariner"></a>
                </li>
                <li><a href="javascript: switchStyle('theme-medium-purple')" style="background: #996de9;"
                       title="Medium Purple"></a></li>
                <li><a href="javascript: switchStyle('theme-lavender-magenta')" style="background: #e94de4;"
                       title="Lavender Magenta"></a></li>
            </ul>
        </div>

        <h4 class="styleswitcher-title">Navigation Style</h4>
        <div class="styleswitcher-block">
            <select id="styleswitcher-navbar-style">
                <option value="style-1">Default</option>
                <option value="style-2">Fill</option>
                <option value="style-3">Underline</option>
            </select>
        </div>

    </div>

    <div class="styleswitcher-button vertical-middle"><i class="fa fa-gear"></i></div>
</div>

<link rel="stylesheet" type="text/css" href="./css/styleswitcher.css" property="">
<script src="./js/styleswitcher.js"></script>
<!-- /Styleswitcher -->

</body>
</html>


 