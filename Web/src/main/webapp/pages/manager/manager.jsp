<%@ page import="java.util.ArrayList" %>
<%@ page import="Pojo.Song" %>
<%@ page import="Pojo.Sheet" %>
<%@ page import="Pojo.Album" %>
<%@ page import="Pojo.CompleteSong" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Listen is a music web!">
    <meta name="author" content="fsx">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
    <meta property="og:site_name" content="" /> <!-- website name -->
    <meta property="og:site" content="" /> <!-- website link -->
    <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
    <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
    <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
    <meta property="og:type" content="article" />
    <title>Controller</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="static/css/bootstrap.css" rel="stylesheet">
    <link href="static/css/fontawesome-all.css" rel="stylesheet">
    <link href="static/css/swiper.css" rel="stylesheet">
    <link href="static/css/magnific-popup.css" rel="stylesheet">
    <link href="static/css/styles.css" rel="stylesheet">

    <!-- Favicon  -->
    <link rel="icon" href="static/images/favicon-self.png">
</head>
<body data-spy="scroll" data-target=".fixed-top">
<!-- Preloader -->
<div class="spinner-wrapper">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>
<!-- end of preloader -->

<!-- Navbar ????????? -->
<nav class="navbar navbar-expand-md navbar-dark navbar-custom fixed-top">
    <!-- Text Logo - Use this if you don't have a graphic logo -->
    <a class="navbar-brand logo-text page-scroll" href="index.jsp">Listen</a>

    <!-- Image Logo -->
    <!--        <a class="navbar-brand logo-image" href="index.html"><img src="images/logo.png" alt="alternative"></a>-->

    <!-- Mobile Menu Toggle Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-awesome fas fa-bars"></span>
        <span class="navbar-toggler-awesome fas fa-times"></span>
    </button>
    <!-- end of mobile menu toggle button -->

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link page-scroll" href="index.jsp">??????<span class="sr-only">(current)</span></a>
            </li>
            <!--            <li class="nav-item">-->
            <!--                <a class="nav-link page-scroll" href="#intro">??????</a>-->
            <!--            </li>-->
            <!--            <li class="nav-item">-->
            <!--                <a class="nav-link page-scroll" href="#services">??????</a>-->
            <!--            </li>-->
            <li class="nav-item">
                <a class="nav-link page-scroll" href="http://localhost:8080/webapp/zoneServlet?action=list">??????????????????</a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#callMe">????????????</a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#delete">????????????</a>
            </li>
            <!--            <li class="nav-item">-->
            <!--                <a class="nav-link page-scroll" href="#projects">????????????</a>-->
            <!--            </li>-->
            <!--            <li class="nav-item">-->
            <!--                <a class="nav-link page-scroll" href="#singers">????????????</a>-->
            <!--            </li>-->

            <!-- Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle page-scroll" href="#about" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">????????????</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="pages/common/terms-conditions.jsp"><span class="item-text">????????????</span></a>
                    <div class="dropdown-items-divide-hr"></div>
                    <a class="dropdown-item" href="pages/common/privacy-policy.jsp"><span class="item-text">????????????</span></a>
                </div>
            </li>
            <!-- end of dropdown menu -->

            <li class="nav-item">
                <a class="nav-link page-scroll" href="#contact">????????????</a>
            </li>
        </ul>
        <span class="nav-item social-icons">
                <span class="fa-stack">
                    <a href="#your-link">
                        <span class="hexagon"></span>
                        <i class="fab fa-facebook-f fa-stack-1x"></i>
                    </a>
                </span>
                <span class="fa-stack">
                    <a href="#your-link">
                        <span class="hexagon"></span>
                        <i class="fab fa-twitter fa-stack-1x"></i>
                    </a>
                </span>
            </span>
    </div>
</nav>

<header id="header" class="header">
    <div class="header-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-container">
                        <h1>??????????????? <span id="js-rotating"> </span></h1>
                        <a class="btn-solid-lg page-scroll" href="#callMe">????????????</a>
                        <a class="btn-solid-lg page-scroll" href="#delete">????????????</a>
                    </div>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of header-content -->
</header> <!-- end of header -->
<!-- end of header -->

<div id="callMe" class="form-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <!-- Call Me Form -->
                <form data-toggle="validator" data-focus="false" action="managerServlet" method="post">
                    <input type="hidden" name="action" value="addSong">
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="songName" name="songName" required>
                        <label class="label-control" for="songName">??????</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="singerName" name="singerName" required>
                        <label class="label-control" for="singerName">??????</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="albumName" name="albumName" required>
                        <label class="label-control" for="albumName">?????????</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="songLink" name="songLink" required>
                        <label class="label-control" for="songLink">????????????</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group checkbox white">
                        <input type="checkbox" id="lterms" value="Agreed-to-Terms" name="lterms" required>????????????????????????????????????
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="form-control-submit-button">??????</button>
                    </div>
                </form>
                <!-- end of call me form -->

            </div> <!-- end of col -->

            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="static/images/tianjia.jpg" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of form-1 -->

<div id="delete" class="form-1">

    <div class="container">
        <div class="row">
            <div class="image-container">
                <img class="img-fluid" src="static/images/dele.jpg" alt="alternative">
            </div> <!-- end of image-container -->
            <div class="col-lg-6">
                <div class="text-container">
                    <div class="section-title">?????????</div>
                    <h2 class="white">????????????</h2>
                    <form data-toggle="validator" data-focus="false" action="../../userServlet" method="post">

                        <ul class="list-unstyled li-space-lg white">
                            <%
                                ArrayList<CompleteSong> completeSongs = (ArrayList<CompleteSong>) session.getAttribute("completeSongList");
                                for(int i=0; i<completeSongs.size(); i++){
                            %>
                                <%="<li class=\"media\">"%>
                                <%="<i class=\"fas fa-square\"></i>"%>
                                <%="<div class=\"media-body\">"%>
                                <%="???"+completeSongs.get(i).getName()+"???--"+completeSongs.get(i).getAuthorName()%>
                                <%=" <a href=\"http://localhost:8080/webapp/managerServlet?action=deleteSong&songId="+completeSongs.get(i).getId()+"\" " +
                                        "class=\"form-control-submit-aTmp\">??????</a></div>"%>
                                <%="</li>"%>
                            <%}%>
                        </ul>
                    </form>

                </div>
            </div> <!-- end of col -->
            <div class="col-lg-6">



            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of form-1 -->


<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="text-container about">
                    <h4>?????????????????????????????????</h4>
                    <p class="white">???????????????????????????????????????????????????????????????????????????</p>
                    <p class="white">????????????????????????????????????????????????????????????????????????</p>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-md-2">
                <div class="text-container">
                    <h4>????????????</h4>
                    <ul class="list-unstyled li-space-lg white">
                        <li>
                            <a class="white" href="https://y.qq.com/">QQ??????</a>
                        </li>
                        <li>
                            <a class="white" href="https://music.migu.cn/v3?mcn=gxcdbdtfpc526&WT.mc_id=iNaTBg3oi8lWmOD9iCyt&UX.aucm=a562DhoaD2h12JDXc6FO">????????????</a>
                        </li>
                        <li>
                            <a class="white" href="https://music.163.com/">???????????????</a>
                        </li>
                    </ul>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-md-2">
                <div class="text-container">
                    <h4>????????????</h4>
                    <ul class="list-unstyled li-space-lg">
                        <li>
                            <a class="white" href="#your-link">????????????</a>
                        </li>
                        <li>
                            <a class="white" href="#your-link">????????????</a>
                        </li>
                        <li class="media">
                            <a class="white" href="#your-link">????????????</a>
                        </li>
                    </ul>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-md-2">
                <div class="text-container">
                    <h4>????????????</h4>
                    <ul class="list-unstyled li-space-lg">
                        <li>
                            <a class="white" href="#your-link">????????????</a>
                        </li>
                        <li>
                            <a class="white" href="#your-link">????????????</a>
                        </li>
                    </ul>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of footer -->
<!-- end of footer -->


<!-- Copyright -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <p class="p-small">Copyright ?? 2020 by Fan & Xu</p>
            </div> <!-- end of col -->
        </div> <!-- enf of row -->
    </div> <!-- end of container -->
</div> <!-- end of copyright -->
<!-- end of copyright -->


<!-- Scripts -->
<script src="static/js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
<script src="static/js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
<script src="static/js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
<script src="static/js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
<script src="static/js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
<script src="static/js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
<script src="static/js/morphext.min.js"></script> <!-- Morphtext rotating text in the header -->
<script src="static/js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
<script src="static/js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
<script src="static/js/scripts.js"></script> <!-- Custom scripts -->

</body>
</html>
