<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
    <title>摩登农场</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <!-- css links -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/caption-hover.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/circle-hover.css" />
    <link href="${pageContext.request.contextPath }/resources/css/slider.css" rel="stylesheet" type="text/css" media="all">
    <link href="${pageContext.request.contextPath }/resources/css/home.css" rel="stylesheet" type="text/css" media="all">
    <!-- /css links -->
    <!-- <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'> -->
    <!-- <link href='https://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'> -->
    <script src="${pageContext.request.contextPath }/resources/js/SmoothScroll.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>


    <!--自动获取日期函数-->
    <script>
        function getCurrentDate() {
            var date = new Date();
            var monthArray=new Array
            ("January","February","March","April","May","June","July","August",
                "September","October","November","December");
            /*var weekArray = new Array("Sunday","Monday","Tuesday",
                 "Wednesday","Thursday","Friday","Saturday");*/
            month=date.getMonth();
            day=date.getDate();
            if(day.toString().length == 1){
                day="0"+day.toString();
            }
            document.write(monthArray[month]+"  "+day+"  "+
                date.getFullYear());
        }
    </script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- Fixed navbar 固定导航-->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation 切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#myPage">欢迎来到摩登农场</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#myPage">首页</a></li>
                <li><a style="cursor: pointer;" onclick=join_mall()>商城</a></li><!--进入农场商城信息，可以买东西也可以卖东西（考虑到同平台问题价格会有区间限制，一为珍惜种植成果，二价格便宜吸引顾客购买，农场则无限制）， -->
                <li><a href="#">我的</a></li>  <!--可以查看自己的种植情况，个人信息等-->
                <li><a href="#contact">联系我们</a></li> <!--可以联系我们给与建议，以及提投诉等 -->
                <c:if test="${user==null}" var="uuser">
                    <li><a style="cursor: pointer;" onclick=login_jump()>登录/注册</a></li>

                </c:if>
                <c:if test="${!uuser}">
                    <li><a style="cursor: pointer;" href="/mdnc/login">${user.uname}</a></li>


                </c:if>

                <li >
                    <form class="bs-example bs-example-form" role="form">
                        <div class="input-group" style="width:300px">
                            <input type="text" class="form-control" placeholder="twitterhandle"  style="top:10px;height: 20px">
                            <span class="input-group-addon glyphicon glyphicon-search" style="top:10px;background:  #B0E0E6"></span>
                        </div>
                    </form>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<!-- /Fixed navbar -->
<!-- Banner 横幅-->
<div class="banner">
    <div id="content">
        <div id="slider">
            <img src="${pageContext.request.contextPath }/resources/images/banner1.jpg" alt="Welcome" data-url="#1">
            <img src="${pageContext.request.contextPath }/resources/images/banner2.jpg" alt="Flowers Breeding" data-url="#2">
            <img src="${pageContext.request.contextPath }/resources/images/banner3.jpg" alt="Fruit Farm" data-url="#3">
            <img src="${pageContext.request.contextPath }/resources/images/banner4.jpg" alt="Crop Havesting" data-url="#4">
        </div>
    </div>
</div>
<!-- /Banner -->
<!-- About 摩登生活新方式-->
<section class="about-us" id="about">
    <h3 class="text-center slideanim">摩登生活新方式</h3><!--介绍摩登生活的方式与乐趣 -->
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-2 slideanim">
                <p>1、新方式种植</p>
                <p>*用户根据自己地理位置决定租用哪个农场田地</p>
                <p>*根据自己兴趣，选取自己想要种植的农产品</p>
                <p>*用户可以亲自种植照顾也可以请人照顾</p>
                <p>2、管理新颖</p>
                <p>*用户自主管理自己种植的产品</p>
                <p>*在特殊情况下用户可以雇佣其他人照顾</p>
                <p>*农场全程进行技术教授，手把手教会栽种</p>
            </div>
            <div class="col-lg-4 slideanim">
                <p>3、产品安全</p>
                <p>*摩登农场坚决不用激素、不催熟、不使用防腐剂保鲜剂</p>
                <p>*对不同的产品采用不同的管理方式，保证绿色安全</p>
                <p>4、收获</p>
                <p>*摩登农场通过多年的经验，根据季节、纬度定出不同菜品的生长周期，在最好的时机采摘果实</p>
                <p>*可以选择自己采摘，也可以送货到家</p>
            </div>
        </div>
    </div>
</section>
<div class="content-section-a">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <div class="content1">
                    <h3 class="section-heading slideanim">水果优益C 今天你PICK我了吗</h3>
                    <hr class="section-heading-spacer slideanim">
                    <div class="clearfix"></div>
                    <p class="lead slideanim">1、水果是人民膳食生活中维生素A和C的主要来源。水果中所含的果胶具有膳食纤维的作用，同时水果也是维持酸碱平衡、电解质平衡不可缺少的东西。</p>
                    <p class="lead slideanim">2、水果中含丰富的抗氧化物质维生素E和微量元素，可以滋养皮肤，其美容效果可不是一般的化妆品可比的。</p>
                    <p class="lead slideanim">3、水果还富含大量天然植物化合物。这些物质可以调节解毒酶的活性，改善激素代谢，具有抗菌抗病毒的能力，并且发挥着延缓衰老的作用。</p>
                </div>
            </div>
            <div class="col-lg-5 col-lg-offset-2 col-sm-6 slideanim">
                <ul class="grid cs-style">
                    <li>
                        <figure>
                            <a href="farms.html" title="点击进入水果农场"><img src="${pageContext.request.contextPath }/resources/images/farm2/farm1.png" alt="" class="img-responsive"></a>
                            <figcaption>
                                <h3>水果优益C</h3>
                                <p>今天你PICK我了吗</p>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="content-section-b">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-lg-offset-1 col-sm-push-6 col-sm-6">
                <div class="content2">
                    <h3 class="section-heading slideanim">养我，嗯！！会手有余香</h3>
                    <hr class="section-heading-spacer slideanim">
                    <div class="clearfix"></div>
                    <p class="lead slideanim">1、花是天地灵秀之所钟，美的化身，赏花种花，在于悦其姿色而知其神骨。</p>
                    <p class="lead slideanim">2、鲜花代表心意，自己种植的花朵赠与他人，比买来的“情义”更加真实。</p>
                    <p class="lead slideanim">2、让我们的精神世界里充满鲜花和绿色，而不是沙漠。</p>
                </div>
            </div>
            <div class="col-lg-5 col-sm-pull-6 col-sm-6 slideanim">
                <ul class="grid cs-style">
                    <li>
                        <figure>
                            <a href="farms.html" title="点击进入花卉农场"><img src="${pageContext.request.contextPath }/resources/images/farm2.jpg" alt="" class="img-responsive"></a>
                            <figcaption>
                                <h3>养我</h3>
                                <p>嗯！！会手有余香</p>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="content-section-a">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <div class="content3">
                    <h3 class="section-heading slideanim">蔬ke!蔬ke!营养的缔造者</h3>
                    <hr class="section-heading-spacer slideanim">
                    <div class="clearfix"></div>
                    <p class="lead slideanim">1、 蔬菜含有丰富的维生素，其中以维生素C和维生素A最为重要，颜色越深绿或深黄的蔬菜，含有的维生素A和维生素C就越多。</p>
                    <p class="lead slideanim">2、有一些蔬菜含有丰富的钾、钙、钠、铁质等碱性矿物质，不仅能平稳血液中的酸碱值，也是小朋友生长需要的营养素重要来源。 </p>
                    <p class="lead slideanim">3、蔬菜中的纤维质能有效促进肠与胃的蠕动，所以能降低食物在肠道停留的时间，减少营养素被吸收，并及早协助排出对人体无益的废物</p>
                </div>
            </div>
            <div class="col-lg-5 col-lg-offset-2 col-sm-6 slideanim">
                <ul class="grid cs-style">
                    <li>
                        <figure>
                            <a href="farms.html" title="点击进入蔬菜农场"><img src="${pageContext.request.contextPath }/resources/images/farm3.jpg" alt="" class="img-responsive"></a>
                            <figcaption>
                                <h3>蔬ke!蔬ke!</h3>
                                <p>营养的缔造者</p>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- /About -->

<!-- /Services -->
<section class="our-services" id="services">
    <h3 class="text-center slideanim">先进的设备</h3>
    <ul class="ch-grid">
        <li>
            <div class="ch-item ch-img-1 slideanim">
                <div class="ch-info-wrap">
                    <div class="ch-info">
                        <div class="ch-info-front ch-img-1"></div>
                        <div class="ch-info-back">
                            <h5>培育幼苗</h5>
                            <p>使用先进的科学技术</p>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="slideanim">培育幼苗</h4>
            <p class="slideanim">使用先进的科学技术</p>
        </li>
        <li>
            <div class="ch-item ch-img-2 slideanim">
                <div class="ch-info-wrap">
                    <div class="ch-info">
                        <div class="ch-info-front ch-img-2"></div>
                        <div class="ch-info-back">
                            <h5>灌溉方便</h5>
                            <p>先进的灌溉技术</p>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="slideanim">灌溉方便</h4>
            <p class="slideanim">使用先进的灌溉技术</p>
        </li>
        <li>
            <div class="ch-item ch-img-3 slideanim">
                <div class="ch-info-wrap">
                    <div class="ch-info">
                        <div class="ch-info-front ch-img-3"></div>
                        <div class="ch-info-back">
                            <h5>管理先进</h5>
                            <p>使用先进的管理设备</p>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="slideanim">管理先进</h4>
            <p class="slideanim">使用先进的管理设备</p>
        </li>
        <li>
            <div class="ch-item ch-img-4 slideanim">
                <div class="ch-info-wrap">
                    <div class="ch-info">
                        <div class="ch-info-front ch-img-4"></div>
                        <div class="ch-info-back">
                            <h5>机械化收割</h5>
                            <p>先进的收割技术</p>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="slideanim">机械化收割</h4>
            <p class="slideanim">使用先进的收割技术</p>
        </li>
    </ul>
</section>
<!-- /Services -->
<!-- Portfolio Grid Section -->
<section id="portfolio">
    <h3 class="text-center slideanim">我们的作品集</h3>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-paper-plane-o"></i>
                        </div>
                    </div>
                    <img src="${pageContext.request.contextPath }/resources/images/port1.jpg" class="img-responsive" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-paper-plane-o"></i>
                        </div>
                    </div>
                    <img src="${pageContext.request.contextPath }/resources/images/port2.jpg" class="img-responsive" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-paper-plane-o"></i>
                        </div>
                    </div>
                    <img src="${pageContext.request.contextPath }/resources/images/port3.jpg" class="img-responsive" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-paper-plane-o"></i>
                        </div>
                    </div>
                    <img src="${pageContext.request.contextPath }/resources/images/port4.jpg" class="img-responsive" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-paper-plane-o"></i>
                        </div>
                    </div>
                    <img src="${pageContext.request.contextPath }/resources/images/port5.jpg" class="img-responsive" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-paper-plane-o"></i>
                        </div>
                    </div>
                    <img src="${pageContext.request.contextPath }/resources/images/port6.jpg" class="img-responsive" alt="">
                </a>
            </div>
        </div>
    </div>
</section>
<!-- /Portfolio Grid Section -->
<div class="copyrights">Collect from <a href="#myPage" >摩登农场</a></div>
<!-- Portfolio Modals -->
<div class="portfolio-modal modal fade slideanim" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>培育的幼苗</h3>
                        <hr>
                        <img src="${pageContext.request.contextPath }/resources/images/port1.jpg" class="img-responsive img-centered" alt="">
                        <p>摩登农场</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>采摘的蔬菜</h3>
                        <hr>
                        <img src="${pageContext.request.contextPath }/resources/images/port2.jpg" class="img-responsive img-centered" alt="">
                        <p>摩登农场</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>收获的用户</h3>
                        <hr>
                        <img src="${pageContext.request.contextPath }/resources/images/port3.jpg" class="img-responsive img-centered" alt="">
                        <p>摩登农场</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>正在管理的工作人员</h3>
                        <hr>
                        <img src="${pageContext.request.contextPath }/resources/images/port4.jpg" class="img-responsive img-centered" alt="">
                        <p>摩登农场</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>生长的农作物</h3>
                        <hr>
                        <img src="${pageContext.request.contextPath }/resources/images/port5.jpg" class="img-responsive img-centered" alt="">
                        <p>摩登农场</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>田地的耕犁</h3>
                        <hr>
                        <img src="${pageContext.request.contextPath }/resources/images/port6.jpg" class="img-responsive img-centered" alt="">
                        <p>摩登农场</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /Portfolio Modals -->
<!-- Blog -->
<section class="our-blog" id="blog">
    <h3 class="text-center slideanim">互动区</h3>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-xs-12">
                <div class="view view-seventh slideanim">
                    <img src="${pageContext.request.contextPath }/resources/images/blog1.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5><script>getCurrentDate();</script></h5>
                        <p>农业知识大比拼，将你知道的农业知识或种植技巧告诉我们</p>
                        <a href="#contact-info" class="info">科普知识</a>
                    </div>
                </div>
                <div class="blog-content slideanim">
                    <p class="p1">News - <script>getCurrentDate();</script></p>
                    <a href="#"><h4>农业种植百科</h4></a>
                    <p class="p2">分享农业技术、农药技术、大棚技术、养殖技术、种植技术、病虫防治知识</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="view view-seventh slideanim">
                    <img src="${pageContext.request.contextPath }/resources/images/blog2.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5><script>getCurrentDate();</script></h5>
                        <p>将你的农场趣事告诉我们，让你的快乐让更多人知道</p>
                        <a href="#contact-info" class="info">分享趣事</a>
                    </div>
                </div>
                <div class="blog-content slideanim">
                    <p class="p1">News - <script>getCurrentDate();</script></p>
                    <a href="#"><h4>农场生活百态</h4></a>
                    <p class="p2">分享农场生活趣事，让你从此爱上Farms</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="view view-seventh slideanim">
                    <img src="${pageContext.request.contextPath }/resources/images/blog3.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5><script>getCurrentDate();</script></h5>
                        <p>将你的心意，送给你最想送的人</p>
                        <a href="#contact-info" class="info">送心意</a>
                    </div>
                </div>
                <div class="blog-content slideanim">
                    <p class="p1">News -<script>getCurrentDate();</script></p>
                    <a href="#"><h4>心意传送带</h4></a>
                    <p class="p2">分享你的劳动成果，填写相关“传递”信息，我们会将你的心意完美送达</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="view view-seventh slideanim">
                    <img src="${pageContext.request.contextPath }/resources/images/blog4.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5><script>getCurrentDate();</script></h5>
                        <p>展示自己的劳动成果，我劳动，我光荣</p>
                        <a href="#contact-info" class="info">发动态</a>
                    </div>
                </div>
                <div class="blog-content slideanim">
                    <p class="p1">News - <script>getCurrentDate();</script></p>
                    <a href="#"><h4>你的摩登农场的生活</h4></a>
                    <p class="p2">分享你的动态，展示自己的种植成果，分享快乐心情</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Blog -->
<!-- Contact-Us -->
<section class="contact-us" id="contact">
    <h3 class="text-center slideanim">联系我们</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12 slideanim">
                    <iframe class="googlemaps" src="https://map.baidu.com/" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="col-md-4 col-xs-12 slideanim">
                    <h4>我们的联系方式 :</h4>
                    <p>电话:18726921155</p>
                    <p>邮件:<a href="mailto:name@example.com">name@example.com</a></p>
                    <p>地址:安徽省阜阳市清河西路100号阜阳师范学院</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
</section>
<!-- /Contact-Us -->
<!-- Contact-Form -->
<section class="contact-form" id="contact-info">
    <h3 class="text-center slideanim">联系农场</h3>
    <p class="text-center slideanim">将你想说的话，或者想反应的问题告诉我们</p>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 slideanim">
                <form role="form">
                    <div class="row">
                        <div class="form-group col-lg-4">
                            <label>姓名</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>邮件地址</label>
                            <input type="email" class="form-control">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>电话号码</label>
                            <input type="tel" class="form-control">
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-group col-lg-12">
                            <label>信息</label>
                            <textarea class="form-control" rows="6"></textarea>
                        </div>
                        <div class="form-group col-lg-12">
                            <button type="submit" href="#" class="btn btn-lg btn-outline">提交</button>
                            <button type="submit" href="#" class="btn btn-lg btn-outline">投诉</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /Contact-Form -->
<!-- Footer -->
<footer class="text-center ">
    <div class="footer-above">
        <div class="container">
            <div class="row">
                <div class="footer-col col-md-4">
                    <h4>位置</h4>
                    <p>安徽省阜阳市<br>清河西路100号阜阳师范学院</p>
                </div>
                <div class="footer-col col-md-4">
                    <h4>网页</h4>
                    <ul class="list-inline">
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="footer-col col-md-4">
                    <h4>关于摩登农场</h4>
                    <p>用诚挚的服务 换你真心的快乐</p>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-below">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2018.The copyright belongs to Modern Farm <a href="#myPage" target="_blank" title="摩登农场">摩登农场</a> - Collect from <a href="#myPage" title="摩登农场" target="_blank">摩登农场</a></p>
                </div>
            </div>
        </div>
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
    </div>
</footer>
<!-- js files -->
<script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/classie.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/index.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/index2.js"></script>
<script>
    $(document).ready(function(){
        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

            // Prevent default anchor click behavior
            event.preventDefault();

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function(){

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
            });
        });
    })
</script>
<script>
    $(window).scroll(function() {
        $(".slideanim").each(function(){
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
</script>
<!--登录页面跳转-->
<script>
    function login_jump(){
        $(window.open("/mdnc/login","_self"));
    }
</script>
<!--进入商城-->
<script>
    function join_mall(){
        $(window.open("/mdnc/mall-home2","_self"));
    }
</script>
<!-- /js files -->
</body>
</html>
