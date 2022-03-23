<%@ page import="Pojo.User" %>
<%@ page import="Pojo.CompleteSong" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Pojo.Sheet" %><%--
  Created by IntelliJ IDEA.
  User: longm
  Date: 2020/12/23
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
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

    <!-- Website Title -->
    <!-- <title>Aria - Business HTML Landing Page Template</title> -->
    <title>Listen</title>

    <!-- Styles -->
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


<!-- Navbar 导航栏 -->
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
                <a class="nav-link page-scroll" href="http://localhost:8080/webapp/index.jsp">主页<span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link page-scroll" href="http://localhost:8080/webapp/zoneServlet?action=list">
                    My zone
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link page-scroll" href="http://localhost:8080/webapp/managerServlet?action=list">
                    <%
                        User user = (User) session.getAttribute("user");
                        if(user!=null)
                        if(user.getIs_admin()==1){
                    %>
                    <%="管理页面"%>
                    <%
                        }
                    %>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#intro">简介</a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#services">服务</a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#callMe">联系我们</a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#projects">音乐专辑</a>
            </li>
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#singers">合作歌手</a>
            </li>

            <!-- Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle page-scroll" href="#about" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">关于我们</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="pages/common/terms-conditions.jsp"><span class="item-text">条款条件</span></a>
                    <div class="dropdown-items-divide-hr"></div>
                    <a class="dropdown-item" href="pages/common/privacy-policy.jsp"><span class="item-text">隐私政策</span></a>
                </div>
            </li>
            <!-- end of dropdown menu -->

            <li class="nav-item">
                <a class="nav-link page-scroll" href="#contact">CONTACT</a>
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
</nav> <!-- end of navbar -->
<!-- end of navbar -->


<!-- Header -->
<div id="delete" class="form-1">

    <div class="container">
        <div class="row">
            <div class="image-container">
                <img class="img-fluid" src="static/images/dele.jpg" alt="alternative">
            </div> <!-- end of image-container -->
            <div class="col-lg-6">
                <div class="text-container">
                    <div class="section-title"><%=user.getUsername()%></div>
                    <h2 class="white">Search Result</h2>
                    <form data-toggle="validator" data-focus="false" action="../../userServlet" method="post">

                        <ul class="list-unstyled li-space-lg white">
                            <%
                                ArrayList<CompleteSong> completeSongs = (ArrayList<CompleteSong>) session.getAttribute("searchRes");
                                if(completeSongs!=null);
                                for(int i=0; i<completeSongs.size(); i++){
                            %>

                            <%="<li class=\"media\">"%>
                            <%="<i class=\"fas fa-square\"></i>"%>
                            <%="<div class=\"media-body\">"%>
                            <%="《"+completeSongs.get(i).getName()+"》--"+completeSongs.get(i).getAuthorName()%>
                            <%=" <select name=\"加入歌单\" onchange=\"self.location.href=options[selectedIndex].value\" class=\"form-control-submit-button1\">"
                                    +"<OPTION select = \"selected\">选择歌单</OPTION>"%>
                            <%
                                ArrayList<Sheet> userSheets = (ArrayList<Sheet>) session.getAttribute("userSheets");
                                if(userSheets!=null)
                                    for (int k=0; k<userSheets.size(); k++){%>
                            <%="<OPTION value=\"http://localhost:8080/webapp/zoneServlet?action=addSongIntoSheet&sheetIdToAdd="
                                    +userSheets.get(k).getId()+"&songIdToAdd="+completeSongs.get(i).getId()+"\">"
                                    +userSheets.get(k).getName()+"</OPTION>"%>

                            <%}%>
                            <%="</select>"%>
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
<!-- end of header -->


<!-- Intro -->
<div id="intro" class="basic-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="text-container">
                    <div class="section-title">网站简介</div>
                    <h2>我们的网站是一个聚合音乐网站</h2>
                    <p>在这里，您可以通过注册并登录后成为正式用户，搜索、聆听自己喜爱的歌曲，创建属于自己的歌单，并将自己喜爱的歌曲添加进去</p>
                    <p class="testimonial-text">"我们旨在提供给您舒适的使用界面，并让您得到更好的音乐体验！</p>
                    <p class="testimonial-text">所以，快来享受您的音乐世界吧 ~"</p>
                    <div class="testimonial-author">——Fan</div>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <!-- 接下来是那张图片-->
            <div class="col-lg-7">
                <div class="image-container">
                    <img class="img-fluid" src="static/images/jianjie.jpg" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-1 -->
<!-- end of intro -->


<!-- Description -->
<!--    这下面就是那几个卡片-->
<!--    <div class="cards-1">-->
<!--        <div class="container">-->
<!--            <div class="row">-->
<!--                <div class="col-lg-12">-->
<!--                    -->
<!--                    &lt;!&ndash; Card &ndash;&gt;-->
<!--                    <div class="card">-->
<!--                        <span class="fa-stack">-->
<!--                            <span class="hexagon"></span>-->
<!--                            <i class="fas fa-binoculars fa-stack-1x"></i>-->
<!--                        </span>-->
<!--                        <div class="card-body">-->
<!--                            <h4 class="card-title">Environment Analysis</h4>-->
<!--                            <p>The starting point of any success story is knowing your current position in the business environment</p>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    &lt;!&ndash; end of card &ndash;&gt;-->

<!--                    &lt;!&ndash; Card &ndash;&gt;-->
<!--                    <div class="card">-->
<!--                        <span class="fa-stack">-->
<!--                            <span class="hexagon"></span>-->
<!--                            <i class="fas fa-list-alt fa-stack-1x"></i>-->
<!--                        </span>-->
<!--                        <div class="card-body">-->
<!--                            <h4 class="card-title">Development Planning</h4>-->
<!--                            <p>After completing the environmental analysis the next stage is to design and  plan your development strategy</p>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    &lt;!&ndash; end of card &ndash;&gt;-->

<!--                    &lt;!&ndash; Card &ndash;&gt;-->
<!--                    <div class="card">-->
<!--                        <span class="fa-stack">-->
<!--                            <span class="hexagon"></span>-->
<!--                            <i class="fas fa-chart-pie fa-stack-1x"></i>-->
<!--                        </span>-->
<!--                        <div class="card-body">-->
<!--                            <h4 class="card-title">Execution & Evaluation</h4>-->
<!--                            <p>In this phase you will focus on executing the actions plan and evaluating the results after each marketing campaign</p>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    &lt;!&ndash; end of card &ndash;&gt;-->

<!--                </div> &lt;!&ndash; end of col &ndash;&gt;-->
<!--            </div> &lt;!&ndash; end of row &ndash;&gt;-->
<!--        </div> &lt;!&ndash; end of container &ndash;&gt;-->
<!--    </div> &lt;!&ndash; end of cards-1 &ndash;&gt;-->
<!-- end of description -->


<!-- Services -->
<!--    下面是服务板块，也是分为三个小的card-->
<div id="services" class="cards-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">服务</div>
                <h2>请耐心往下看~<br>/\_/\</h2>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <!--           下面就是具体的-->

    </div> <!-- end of container -->
</div> <!-- end of cards-2 -->
<!-- end of services -->


<!-- Details 1 -->
<div id="details" class="accordion">
    <div class="area-1">
    </div><!-- end of area-1 on same line and no space between comments to eliminate margin white space --><div class="area-2">

    <!-- Accordion -->
    <div class="accordion-container" id="accordionOne">
        <h2>以下是我们可以为您提供的服务</h2>
        <div class="item">
            <div id="headingOne">
                        <span data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" role="button">
                            <span class="circle-numbering">1</span><span class="accordion-title">怎样能让您拥有良好体验</span>
                        </span>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionOne">
                <div class="accordion-body">
                    在我们的网站，界面简约而不失观感，设计感十足，让您进入网站时，眼前一亮，使用方法也十分简单，能让您拥有良好体验！
                </div>
            </div>
        </div> <!-- end of item -->

        <div class="item">
            <div id="headingTwo">
                        <span class="collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" role="button">
                            <span class="circle-numbering">2</span><span class="accordion-title">为何能有很好的音乐体验</span>
                        </span>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionOne">
                <div class="accordion-body">
                    我们的网站之所以称之为音乐聚合平台，是因为我们整合了合作网站的音乐，让用户能无需担心版权问题！
                </div>
            </div>
        </div> <!-- end of item -->

        <div class="item">
            <div id="headingThree">
                        <span class="collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" role="button">
                            <span class="circle-numbering">3</span><span class="accordion-title">用户还能创建自己的歌单</span>
                        </span>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionOne">
                <div class="accordion-body">
                    想循环列表里的歌时，苦于列表里太多太杂？那么您可以在我们的网站创建歌单，并添加您喜欢的歌曲！
                </div>
            </div>
        </div> <!-- end of item -->
    </div> <!-- end of accordion-container -->
    <!-- end of accordion -->

</div> <!-- end of area-2 -->
</div> <!-- end of accordion -->
<!-- end of details 1 -->




<!-- Testimonials -->
<div class="slider">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>对网站的评价</h2>
                <p class="p-heading">下面是来自几位合作歌手、用户以及管理员的中肯评价</p>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <div class="row">
            <div class="col-lg-12">

                <!-- Card Slider -->
                <div class="slider-container">
                    <div class="swiper-container card-slider">
                        <div class="swiper-wrapper">

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="static/images/tt1.jpg" alt="alternative">
                                    <div class="card-body">
                                        <div class="testimonial-text">“哎哟不错哟，我很喜欢这个网站，也很高兴作为首席代言人，快来这里，开启你的音乐世界吧！”</div>
                                        <div class="testimonial-author">首席代言人——周杰伦</div>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="static/images/tt2.jpg" alt="alternative">
                                    <div class="card-body">
                                        <div class="testimonial-text">“很荣幸能和杰伦一起成为网站的合伙人，在这里，能让你们得到非同寻常的音乐享受噢！”</div>
                                        <div class="testimonial-author">著名歌手——林俊杰</div>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="static/images/tt3.jpg" alt="alternative">
                                    <div class="card-body">
                                        <div class="testimonial-text">“我觉得在这里能让我的音乐更加散发出魅力，感谢两位网站创始人给我和其他歌手的粉丝们一个畅游音乐世界的机会！”</div>
                                        <div class="testimonial-author">著名歌手 - 王力宏</div>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="static/images/ttad.jpg" alt="alternative">
                                    <div class="card-body">
                                        <div class="testimonial-text">“作为网站的资深用户，我也是成为了管理员级别的用户，体验一直都是满分，以后也还会一直用下去的！”</div>
                                        <div class="testimonial-author">管理员——阿东</div>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="static/images/ttxx.jpg" alt="alternative">
                                    <div class="card-body">
                                        <div class="testimonial-text">“诶嘿！我是忠实JM！这个网站我爱了！JJ就没有我3秒听不出来的歌！”</div>
                                        <div class="testimonial-author">用户——小香</div>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="static/images/ttgg.jpg" alt="alternative">
                                    <div class="card-body">
                                        <div class="testimonial-text">“这个用户很懒，没有留下什么~”</div>
                                        <div class="testimonial-author">用户——龟龟</div>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                        </div> <!-- end of swiper-wrapper -->

                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <!-- end of add arrows -->

                    </div> <!-- end of swiper-container -->
                </div> <!-- end of sliedr-container -->
                <!-- end of card slider -->

            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of slider -->
<!-- end of testimonials -->


<!-- Call Me -->
<%--<div id="callMe" class="form-1">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="text-container">--%>
<%--                    <div class="section-title">CALL ME</div>--%>
<%--                    <h2 class="white">Have Us Contact You By Filling And Submitting The Form</h2>--%>
<%--                    <p class="white">You are just a few steps away from a personalized offer. Just fill in the form and send it to us and we'll get right back with a call to help you decide what service package works.</p>--%>
<%--                    <ul class="list-unstyled li-space-lg white">--%>
<%--                        <li class="media">--%>
<%--                            <i class="fas fa-square"></i>--%>
<%--                            <div class="media-body">It's very easy just fill in the form so we can call</div>--%>
<%--                        </li>--%>
<%--                        <li class="media">--%>
<%--                            <i class="fas fa-square"></i>--%>
<%--                            <div class="media-body">During the call we'll require some info about the company</div>--%>
<%--                        </li>--%>
<%--                        <li class="media">--%>
<%--                            <i class="fas fa-square"></i>--%>
<%--                            <div class="media-body">Don't hesitate to email us for any questions or inquiries</div>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div> <!-- end of col -->--%>
<%--            <div class="col-lg-6">--%>

<%--                <!-- Call Me Form -->--%>
<%--                <form data-toggle="validator" data-focus="false" action="userServlet" method="post">--%>
<%--                    <input type="hidden" name="action" value="login">--%>
<%--                    <div class="form-group">--%>
<%--                        <input type="text" class="form-control-input" id="username" name="username" required>--%>
<%--                        <label class="label-control" for="username">Username</label>--%>
<%--                        <div class="help-block with-errors"></div>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input type="password" class="form-control-input" id="password" name="password" required>--%>
<%--                        <label class="label-control" for="password">Password</label>--%>
<%--                        <div class="help-block with-errors"></div>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <button type="submit" class="form-control-submit-button">Sign in</button>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--                <div class="form-group">--%>
<%--                    <a  class="btn-solid-reg" href="http://localhost:8080/webapp/pages/common/register.jsp" style="text-align: right" >Not a member? Sign up</a>--%>
<%--                </div>--%>
<%--                <!-- end of call me form -->--%>

<%--            </div> <!-- end of col -->--%>
<%--        </div> <!-- end of row -->--%>
<%--    </div> <!-- end of container -->--%>
<%--</div> <!-- end of form-1 -->--%>
<!-- end of call me -->


<!-- Projects -->
<div id="projects" class="filter">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">音乐专辑</div>
                <h2>被本站用户收藏最多的专辑</h2>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <div class="row">
            <div class="col-lg-12">
                <!-- Filter -->
                <div class="button-group filters-button-group">
                    <a class="button is-checked" data-filter="*"><span>所有专辑</span></a>
                    <a class="button" data-filter=".design"><span>周杰伦</span></a>
                    <a class="button" data-filter=".development"><span>林俊杰</span></a>
                    <a class="button" data-filter=".marketing"><span>王力宏</span></a>
                    <a class="button" data-filter=".seo"><span>邓紫棋</span></a>
                </div> <!-- end of button group -->
                <div class="grid">
                    <div class="element-item design">
                        <a class="popup-with-move-anim" href="#project-1"><div class="element-item-overlay"><span>《七里香》</span></div><img src="static/images/qlx.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item design">
                        <a class="popup-with-move-anim" href="#project-2"><div class="element-item-overlay"><span>《十一月的萧邦》</span></div><img src="static/images/xb.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item design">
                        <a class="popup-with-move-anim" href="#project-3"><div class="element-item-overlay"><span>《魔杰座》</span></div><img src="static/images/mjz.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item development">
                        <a class="popup-with-move-anim" href="#project-4"><div class="element-item-overlay"><span>《新地球》</span></div><img src="static/images/xdq2.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item development">
                        <a class="popup-with-move-anim" href="#project-5"><div class="element-item-overlay"><span>《学不会》</span></div><img src="static/images/xbh.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item marketing">
                        <a class="popup-with-move-anim" href="#project-6"><div class="element-item-overlay"><span>《改变自己》</span></div><img src="static/images/gbzj.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item marketing">
                        <a class="popup-with-move-anim" href="#project-7"><div class="element-item-overlay"><span>《火力全开》</span></div><img src="static/images/hlqk.jpg" alt="alternative"></a>
                    </div>
                    <div class="element-item seo">
                        <a class="popup-with-move-anim" href="#project-8"><div class="element-item-overlay"><span>《光年之外》</span></div><img src="static/images/gnzw.jpg" alt="alternative"></a>
                    </div>
                </div> <!-- end of grid -->
                <!-- end of filter -->

            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of filter -->
<!-- end of projects -->


<!-- Project Lightboxes -->
<!-- Lightbox -->
<div id="project-1" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/qlx.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>《七里香》</h3>
            <hr class="line-heading">
            <h6>歌手：周杰伦</h6>
            <p>《七里香》是一张带有浓重东方抒情摇滚风格的专辑。该专辑维持了周杰伦一贯的高格调，风格也更加统一。在被流行乐坛一再忽略或曲解的本土文化中，周杰伦调动着民乐所有灵性的想像力，展现了独树一帜的音乐才华</p>
            <p>收录歌曲有：《七里香》、《搁浅》、《园游会》等</p>
            <div class="testimonial-container">
                <p class="testimonial-text">“《七里香》是一张上乘之作，但是该专辑也有一些不足，比如专辑中一些歌曲可以看到周杰伦之前歌曲的影子，比如《借口》和《断了的弦》在副歌部分就有些相似。但是也应该看到周杰伦的改变，比如这张专辑中金属质感的歌曲就占据了相当的比例”</p>
                <p class="testimonial-author">——腾讯网</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E4%B8%83%E9%87%8C%E9%A6%99/2181450#viewPageContent">详细信息</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">返回</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-2" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/xb.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>《十一月的萧邦》</h3>
            <hr class="line-heading">
            <h6>歌手：周杰伦</h6>
            <p>《11月的萧邦》是周杰伦于2005年11月1日发行的音乐专辑，共收录12首歌曲，由周杰伦担任专辑制作人。2005年，该专辑获得新城劲爆颁奖礼新城劲爆创作大碟奖</p>
            <p>收录歌曲有：《发如雪》、《夜曲》、《枫》、《一路向北》等</p>
            <div class="testimonial-container">
                <p class="testimonial-text">“《11月的萧邦》是一张具有品质的音乐专辑。慢歌《发如雪》具有水准，词曲创作让听众想起《东风破》。《夜曲》中，开头一段的木吉他solo和几个钢琴音符便带着伤感，Rap一段随着吉他声、钢琴声逐渐显现。进入副歌后，周杰伦开始了自己独特的浅吟低唱。优美的旋律加上伤感的气氛，轻快、忧郁又凄美华丽。”</p>
                <p class="testimonial-author">——新浪网</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/11%E6%9C%88%E7%9A%84%E8%90%A7%E9%82%A6/467565?fromtitle=%E5%8D%81%E4%B8%80%E6%9C%88%E7%9A%84%E8%90%A7%E9%82%A6&fromid=468218&fr=aladdin">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-3" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/mjz.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>《魔杰座》</h3>
            <hr class="line-heading">
            <h6>歌手：周杰伦</h6>
            <p>《魔杰座》是周杰伦2008年10月15日发行的专辑。2009年凭借该专辑周杰伦在第20届台湾金曲奖颁奖典礼上获得年度最佳歌曲奖、年度最佳音乐录影带、年度最佳国语男歌手三个奖项并在北京流行音乐典礼上获得年度最受欢迎男歌手、年度最佳制作人、年度最佳创作歌手、年度金曲四个奖项</p>
            <p>收录歌曲：《稻香》、《花海》、《说好的幸福呢》等</p>
            <div class="testimonial-container">
                <p class="testimonial-text">“这张具有多样曲风的专辑以魔术元素让音乐变幻无穷。周杰伦填词作曲的《稻香》是一首融合嘻哈民谣与周式饶舌曲风的歌曲，能够让人产生回归心灵的自然，追寻最朴实最真诚的感动，方文山作词的情歌《说好的幸福呢》则是一首令人听了会想哭的歌。”</p>
                <p class="testimonial-author">——新浪</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E9%AD%94%E6%9D%B0%E5%BA%A7">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-4" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/xdq2.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>Van Moose</h3>
            <hr class="line-heading">
            <h6>Strategy Development</h6>
            <p>Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current needs</p>
            <p>By offering the best professional services and quality products in the market. Don't hesitate and get in touch with us.</p>
            <div class="testimonial-container">
                <p class="testimonial-text">Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current requirements.</p>
                <p class="testimonial-author">General Manager</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E6%96%B0%E5%9C%B0%E7%90%83/16184564">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-5" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/xbh.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>Joy Moments</h3>
            <hr class="line-heading">
            <h6>Strategy Development</h6>
            <p>Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current needs</p>
            <p>By offering the best professional services and quality products in the market. Don't hesitate and get in touch with us.</p>
            <div class="testimonial-container">
                <p class="testimonial-text">Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current requirements.</p>
                <p class="testimonial-author">General Manager</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E5%AD%A6%E4%B8%8D%E4%BC%9A/18898707#viewPageContent">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-6" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/gbzj.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>Spark Events</h3>
            <hr class="line-heading">
            <h6>Strategy Development</h6>
            <p>Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current needs</p>
            <p>By offering the best professional services and quality products in the market. Don't hesitate and get in touch with us.</p>
            <div class="testimonial-container">
                <p class="testimonial-text">Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current requirements.</p>
                <p class="testimonial-author">General Manager</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E6%94%B9%E5%8F%98%E8%87%AA%E5%B7%B1/18638#viewPageContent">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-7" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/hlqk.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>Casual Wear</h3>
            <hr class="line-heading">
            <h6>Strategy Development</h6>
            <p>Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current needs</p>
            <p>By offering the best professional services and quality products in the market. Don't hesitate and get in touch with us.</p>
            <div class="testimonial-container">
                <p class="testimonial-text">Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current requirements.</p>
                <p class="testimonial-author">General Manager</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E7%81%AB%E5%8A%9B%E5%85%A8%E5%BC%80/33887">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->

<!-- Lightbox -->
<div id="project-8" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="row">
        <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
        <div class="col-lg-8">
            <img class="img-fluid" src="static/images/gnzw.jpg" alt="alternative">
        </div> <!-- end of col -->
        <div class="col-lg-4">
            <h3>Zazoo Apps</h3>
            <hr class="line-heading">
            <h6>Strategy Development</h6>
            <p>Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current needs</p>
            <p>By offering the best professional services and quality products in the market. Don't hesitate and get in touch with us.</p>
            <div class="testimonial-container">
                <p class="testimonial-text">Need a solid foundation for your business growth plans? Aria will help you manage sales and meet your current requirements.</p>
                <p class="testimonial-author">General Manager</p>
            </div>
            <a class="btn-solid-reg" href="https://baike.baidu.com/item/%E5%85%89%E5%B9%B4%E4%B9%8B%E5%A4%96/20318525">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#projects">BACK</a>
        </div> <!-- end of col -->
    </div> <!-- end of row -->
</div> <!-- end of lightbox-basic -->
<!-- end of lightbox -->
<!-- end of project lightboxes -->


<!-- Team -->
<!--    改成合作歌手-->
<div id="singers" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>合作歌手</h2>
                <p class="p-heading">以下是部分与我们合作的知名歌手</p>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <div class="row">
            <div class="col-lg-12">

                <!-- Team Member -->
                <div class="team-member">
                    <div class="image-wrapper">
                        <a href="https://baike.baidu.com/item/%E5%91%A8%E6%9D%B0%E4%BC%A6/129156?fr=aladdin"><img class="img-fluid" src="static/images/chou.jpg" alt="alternative"></a>
                    </div> <!-- end of image-wrapper -->
                    <p class="p-large">周杰伦</p>
                    <p class="job-title">网站首席代言人、“流行天王”</p>
                    <span class="social-icons">
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
                </div> <!-- end of team-member -->
                <!-- end of team member -->

                <!-- Team Member -->
                <div class="team-member">
                    <div class="image-wrapper">
                        <a href="https://baike.baidu.com/item/%E7%8E%8B%E5%8A%9B%E5%AE%8F/104887?fr=aladdin"><img class="img-fluid" src="static/images/leehom.jpg" alt="alternative"></a>
                    </div> <!-- end of image wrapper -->
                    <p class="p-large">王力宏</p>
                    <p class="job-title">“行走的优秀”</p>
                    <span class="social-icons">
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
                </div> <!-- end of team-member -->
                <!-- end of team member -->

                <!-- Team Member -->
                <div class="team-member">
                    <div class="image-wrapper">
                        <a href="https://baike.baidu.com/item/%E6%9E%97%E4%BF%8A%E6%9D%B0/131821"><img class="img-fluid" src="static/images/JJ.png" alt="alternative"></a>
                    </div> <!-- end of image wrapper -->
                    <p class="p-large">林俊杰</p>
                    <p class="job-title">“行走的CD”</p>
                    <span class="social-icons">
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
                </div> <!-- end of team-member -->
                <!-- end of team member -->

                <!-- Team Member -->
                <div class="team-member">
                    <div class="image-wrapper">
                        <a href="https://baike.baidu.com/item/%E9%82%93%E7%B4%AB%E6%A3%8B/6798196"><img class="img-fluid" src="static/images/dzq.jpg" alt="alternative"></a>
                    </div> <!-- end of image wrapper -->
                    <p class="p-large">邓紫棋</p>
                    <p class="job-title">“巨肺小天后”</p>
                    <span class="social-icons">
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
                </div> <!-- end of team-member -->
                <!-- end of team member -->

            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-2 -->
<!-- end of team -->


<!-- About -->
<div id="about" class="counter">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-xl-6">
                <div class="image-container">
                    <img class="img-fluid" src="static/images/last.jpg" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
            <div class="col-lg-7 col-xl-6">
                <div class="text-container">
                    <div class="section-title">关于我们</div>
                    <h2>我们的网站用户正处于乐观的增长状态</h2>
                    <p>我们的目标是给用户提供更佳的服务、让用户得到更好的体验</p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">我们还正在招募更多的良好行为用户作为管理员，并参与管理网站</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">我们也在积极地找更多的歌手进行合作</div>
                        </li>
                    </ul>

                    <!-- Counter -->
                    <div id="counter">
                        <div class="cell">
                            <div class="counter-value number-count" data-count="231">1</div>
                            <div class="counter-info">Happy<br>Users</div>
                        </div>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="66">1</div>
                            <div class="counter-info">Issues<br>Solved</div>
                        </div>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="159">1</div>
                            <div class="counter-info">Good<br>Reviews</div>
                        </div>
                    </div>
                    <!-- end of counter -->

                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of counter -->
<!-- end of about -->


<!--    &lt;!&ndash; Contact &ndash;&gt;-->
<!--    <div id="contact" class="form-2">-->
<!--        <div class="container">-->
<!--            <div class="row">-->
<!--                <div class="col-lg-6">-->
<!--                    <div class="text-container">-->
<!--                        <div class="section-title"></div>-->
<!--                        <h2>Get In Touch Using The Form</h2>-->
<!--                        <p>You can stop by our office for a cup of coffee and just use the contact form below for any questions and inquiries</p>-->
<!--                        <ul class="list-unstyled li-space-lg">-->
<!--                            <li class="address"><i class="fas fa-map-marker-alt"></i>22nd Innovative Street, San Francisco, CA 94043, US</li>-->
<!--                            <li><i class="fas fa-phone"></i><a href="tel:003024630820">+81 720 22 126</a></li>-->
<!--                            <li><i class="fas fa-phone"></i><a href="tel:003024630820">+81 720 22 128</a></li>-->
<!--                            <li><i class="fas fa-envelope"></i><a href="mailto:office@aria.com">office@aria.com</a></li>-->
<!--                        </ul>-->
<!--                        <h3>Follow Aria On Social Media</h3>-->

<!--                        <span class="fa-stack">-->
<!--                            <a href="#your-link">-->
<!--                                <span class="hexagon"></span>-->
<!--                                <i class="fab fa-facebook-f fa-stack-1x"></i>-->
<!--                            </a>-->
<!--                        </span>-->
<!--                        <span class="fa-stack">-->
<!--                            <a href="#your-link">-->
<!--                                <span class="hexagon"></span>-->
<!--                                <i class="fab fa-twitter fa-stack-1x"></i>-->
<!--                            </a>-->
<!--                        </span>-->
<!--                        <span class="fa-stack">-->
<!--                            <a href="#your-link">-->
<!--                                <span class="hexagon"></span>-->
<!--                                <i class="fab fa-pinterest fa-stack-1x"></i>-->
<!--                            </a>-->
<!--                        </span>-->
<!--                        <span class="fa-stack">-->
<!--                            <a href="#your-link">-->
<!--                                <span class="hexagon"></span>-->
<!--                                <i class="fab fa-instagram fa-stack-1x"></i>-->
<!--                            </a>-->
<!--                        </span>-->
<!--                        <span class="fa-stack">-->
<!--                            <a href="#your-link">-->
<!--                                <span class="hexagon"></span>-->
<!--                                <i class="fab fa-linkedin-in fa-stack-1x"></i>-->
<!--                            </a>-->
<!--                        </span>-->
<!--                        <span class="fa-stack">-->
<!--                            <a href="#your-link">-->
<!--                                <span class="hexagon"></span>-->
<!--                                <i class="fab fa-behance fa-stack-1x"></i>-->
<!--                            </a>-->
<!--                        </span>-->
<!--                    </div> &lt;!&ndash; end of text-container &ndash;&gt;-->
<!--                </div> &lt;!&ndash; end of col &ndash;&gt;-->
<!--                <div class="col-lg-6">-->
<!--                    -->
<!--                    &lt;!&ndash; Contact Form &ndash;&gt;-->
<!--                    <form id="contactForm" data-toggle="validator" data-focus="false">-->
<!--                        <div class="form-group">-->
<!--                            <input type="text" class="form-control-input" id="cname" required>-->
<!--                            <label class="label-control" for="cname">Name</label>-->
<!--                            <div class="help-block with-errors"></div>-->
<!--                        </div>-->
<!--                        <div class="form-group">-->
<!--                            <input type="email" class="form-control-input" id="cemail" required>-->
<!--                            <label class="label-control" for="cemail">Email</label>-->
<!--                            <div class="help-block with-errors"></div>-->
<!--                        </div>-->
<!--                        <div class="form-group">-->
<!--                            <textarea class="form-control-textarea" id="cmessage" required></textarea>-->
<!--                            <label class="label-control" for="cmessage">Your message</label>-->
<!--                            <div class="help-block with-errors"></div>-->
<!--                        </div>-->
<!--                        <div class="form-group checkbox">-->
<!--                            <input type="checkbox" id="cterms" value="Agreed-to-Terms" required>I agree with Aria's stated <a href="privacy-policy.html">Privacy Policy</a> and <a href="terms-conditions.html">Terms Conditions</a> -->
<!--                            <div class="help-block with-errors"></div>-->
<!--                        </div>-->
<!--                        <div class="form-group">-->
<!--                            <button type="submit" class="form-control-submit-button">SUBMIT MESSAGE</button>-->
<!--                        </div>-->
<!--                        <div class="form-message">-->
<!--                            <div id="cmsgSubmit" class="h3 text-center hidden"></div>-->
<!--                        </div>-->
<!--                    </form>-->
<!--                    &lt;!&ndash; end of contact form &ndash;&gt;-->

<!--                </div> &lt;!&ndash; end of col &ndash;&gt;-->
<!--            </div> &lt;!&ndash; end of row &ndash;&gt;-->
<!--        </div> &lt;!&ndash; end of container &ndash;&gt;-->
<!--    </div> &lt;!&ndash; end of form-2 &ndash;&gt;-->
<!--    &lt;!&ndash; end of contact &ndash;&gt;-->


<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="text-container about">
                    <h4>一些有关我们的网站的话</h4>
                    <p class="white">我们致力于让所有的用户得到前所未有的优质音乐感受！</p>
                    <p class="white">所以，请尽快加入我们的网站吧！开启您的音乐之旅！</p>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-md-2">
                <div class="text-container">
                    <h4>合作网站</h4>
                    <ul class="list-unstyled li-space-lg white">
                        <li>
                            <a class="white" href="https://y.qq.com/">QQ音乐</a>
                        </li>
                        <li>
                            <a class="white" href="https://music.migu.cn/v3?mcn=gxcdbdtfpc526&WT.mc_id=iNaTBg3oi8lWmOD9iCyt&UX.aucm=a562DhoaD2h12JDXc6FO">咪咕音乐</a>
                        </li>
                        <li>
                            <a class="white" href="https://music.163.com/">网易云音乐</a>
                        </li>
                    </ul>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-md-2">
                <div class="text-container">
                    <h4>关于我们</h4>
                    <ul class="list-unstyled li-space-lg">
                        <li>
                            <a class="white" href="#your-link">创始团队</a>
                        </li>
                        <li>
                            <a class="white" href="#your-link">服务条款</a>
                        </li>
                        <li class="media">
                            <a class="white" href="#your-link">隐私政策</a>
                        </li>
                    </ul>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-md-2">
                <div class="text-container">
                    <h4>联系我们</h4>
                    <ul class="list-unstyled li-space-lg">
                        <li>
                            <a class="white" href="#your-link">业务合作</a>
                        </li>
                        <li>
                            <a class="white" href="#your-link">问题反馈</a>
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
                <p class="p-small">Copyright © 2020 by Fan & Xu</p>
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