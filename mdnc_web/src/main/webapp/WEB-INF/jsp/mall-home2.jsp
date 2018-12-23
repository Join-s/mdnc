<%--
  Created by IntelliJ IDEA.
  User: PD
  Date: 2018/12/23
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE  >
<html  >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>摩登商城首页</title>
    <link href="${pageContext.request.contextPath }/resources/mall-AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/mall-AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/mall-basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/mall-css/hmstyle.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath }/resources/mall-AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js" ></script>
    <script src="${pageContext.request.contextPath }/resources/mall-AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
</head>

<body id="mallPage" >
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <!--登录前显示-->
                <div class="menu-hd">
                    <c:if test="${user==null}">
                    <a href="login.html" target="_top" class="h">亲，请登录</a>
                    </c:if>
                    <c:if test="${user!=null}">
                        <div style="width:40px;height: 40px;display: inline">
                            <a href="#" target="_top"><img src="${pageContext.request.contextPath }/resources/images/login/avtar2-2.jpg" width="35px"></a>
                        </div>
                            <a href="#" target="_top" style="float:right" class="h">欢迎：${user.uname}</a><!--点击后进入我的个人界面->
                    </c:if>
                    <a href="register.html" target="_top">免费注册</a>
                </div>
                <!-------登录后显示
                 ----------->
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="#mallPage" target="_top" class="h">商城首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a href="#" target="_top" onclick="popup()"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
            </div>
            <div class="topMessage mini-cart">
                <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top" onclick="popup()"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top" onclick="popup()"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
        </ul>
    </div>

    <!--悬浮搜索框-->

    <div class="nav white">
        <!--<div class="logo"><img src="${pageContext.request.contextPath }/resources/mall-images/logo.png" /></div>
        <div class="logoBig">
            <li><img src="${pageContext.request.contextPath }/resources/mall-images/logobig.png" /></li>
        </div>-->

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="#"></a>
            <form >
                <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit" onclick="OpenSearch()">
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>

<b class="line"></b><!---绿色的线--->

<div class="shopNav">
    <div class="slideall" style="height: auto;">

        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="#">首页</a></li>
                <li class="qc"><a href="#LimitBuy">闪购</a></li>
                <li class="qc"><a href="#LimitBuy">限时抢</a></li>
                <li class="qc"><a href="#TeamBuy">团购</a></li>
            </ul>
            <!--<div class="nav-extra">   /////从商城里面登录后进入主界面时显示“我的农场”
                <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
                <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
            </div>-->
        </div>

        <div class="bannerTwo">
            <!--轮播 -->
            <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
                <ul class="am-slides">
                    <li class="banner1"><a><img src="${pageContext.request.contextPath }/resources/mall-images/ad5.jpg" /></a></li>
                    <li class="banner2"><a><img src="${pageContext.request.contextPath }/resources/mall-images/ad6.jpg" /></a></li>
                    <li class="banner3"><a><img src="${pageContext.request.contextPath }/resources/mall-images/ad7.jpg" /></a></li>
                    <li class="banner4"><a><img src="${pageContext.request.contextPath }/resources/mall-images/ad8.jpg" /></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>

        <!--侧边导航 -->
        <div id="nav" class="navfull" style="position: static;">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">

                    <div class="category" style="box-shadow:none ;margin-top: 2px;">
                        <ul class="category-list navTwo" id="js_climit_li">
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><a class="ml-22" title="">水     果</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="鲜果" style="color: #648B6C;">鲜果</span></dt>
                                                        <dd><a title="苹果" href="mall-search.html"><span>苹果</span></a></dd><!--点击后进入物品页面-->
                                                        <dd><a title="草莓" href="#"><span>草莓</span></a></dd>
                                                        <dd><a title="橘子" href="#"><span>橘子</span></a></dd>
                                                        <dd><a title="梨子" href="#"><span>梨子</span></a></dd>
                                                        <dd><a title="葡萄" href="#"><span>葡萄</span></a></dd>
                                                        <dd><a title="香蕉" href="#"><span>香蕉</span></a></dd>
                                                        <dd><a title="柚子" href="#"><span>柚子</span></a></dd>
                                                        <dd><a title="芒果" href="#"><span>芒果</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="果干" style="color: #648B6C;">果干</span></dt>
                                                        <dd><a title="葡萄干" href="#"><span>葡萄干</span></a></dd>
                                                        <dd><a title="芒果干" href="#"><span>芒果干</span></a></dd>
                                                        <dd><a title="草莓干" href="#"><span>草莓干</span></a></dd>
                                                    </dl>

                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt><!---点击后进入单个农场的页面-->
                                                        <dd><a rel="nofollow" title="乐客农场" target="_blank" href="#" rel="nofollow"><span  class="red" >乐客农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="格瑞农场" target="_blank" href="#" rel="nofollow"><span >格瑞农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="飞彦农场" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="乐生活农场" target="_blank" href="#" rel="nofollow"><span >乐生活农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="本真农场" target="_blank" href="#" rel="nofollow"><span  class="red" >本真农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="杭派农场" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派农场</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><a class="ml-22" title="">蔬菜</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="根菜类" style="color: #648B6C;">根菜类</span></dt>
                                                        <dd><a title="萝卜" href="#"><span>萝卜</span></a></dd>
                                                        <dd><a title="胡萝卜" href="#"><span>胡萝卜</span></a></dd>
                                                        <dd><a title="大头菜" href="#"><span>大头菜</span></a></dd>
                                                        <dd><a title="土豆" href="#"><span>土豆</span></a></dd>
                                                        <dd><a title="甜菜" href="#"><span>甜菜</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="茎菜类" style="color: #648B6C;">茎菜类</span></dt>
                                                        <dd><a title="莲藕" href="#"><span>莲藕</span></a></dd>
                                                        <dd><a title="姜" href="#"><span>姜</span></a></dd>
                                                        <dd><a title="竹笋" href="#"><span>竹笋</span></a></dd>
                                                        <dd><a title="莴苣笋" href="#"><span>莴苣笋</span></a></dd>
                                                        <dd><a title="慈菇" href="#"><span>慈菇</span></a></dd>
                                                        <dd><a title="芋头" href="#"><span>芋头</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="叶菜类" style="color: #648B6C;">叶莱类</span></dt>
                                                        <dd><a title="白菜" href="#"><span>白菜</span></a></dd>
                                                        <dd><a title="芥菜" href="#"><span>芥菜</span></a></dd>
                                                        <dd><a title="菠菜" href="#"><span>菠菜</span></a></dd>
                                                        <dd><a title="芹菜" href="#"><span>芹菜</span></a></dd>
                                                        <dd><a title="葱" href="#"><span>葱</span></a></dd>
                                                        <dd><a title="韭菜" href="#"><span>韭菜</span></a></dd>
                                                        <dd><a title="洋葱" href="#"><span>洋葱</span></a></dd>
                                                        <dd><a title="大蒜" href="#"><span>大蒜</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="果菜类" style="color: #648B6C;">果菜类</span></dt>
                                                        <dd><a title="茄子" href="#"><span>茄子</span></a></dd>
                                                        <dd><a title="番茄" href="#"><span>番茄</span></a></dd>
                                                        <dd><a title="辣椒" href="#"><span>辣椒</span></a></dd>
                                                        <dd><a title="毛豆" href="#"><span>毛豆</span></a></dd>
                                                        <dd><a title="豌豆" href="#"><span>豌豆</span></a></dd>
                                                        <dd><a title="蚕豆" href="#"><span>蚕豆</span></a></dd>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="生态园" target="_blank" href="#" rel="nofollow"><span  class ="red" >生态园</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡斯郎农场" target="_blank" href="#" rel="nofollow"><span >卡斯郎农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="池氏蔬菜场" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏蔬菜场</span></a></dd>
                                                        <dd><a rel="nofollow" title="索诺菜农场" target="_blank" href="#" rel="nofollow"><span >索诺菜农场</span></a></dd>
                                                        <dd><a rel="nofollow" title="乐客农场" target="_blank" href="#" rel="nofollow"><span  class ="red" >乐客农场</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><a class="ml-22" title="">花卉</a></h3>
                                    <em>&gt;</em>
                                </div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="鲜花" style="color: #648B6C;">鲜花束</span></dt>
                                                        <dd><a title="玫瑰" href="#"><span>玫瑰</span></a></dd>
                                                        <dd><a title="康乃馨" href="#"><span>康乃馨</span></a></dd>
                                                        <dd><a title="百合" href="#"><span>百合</span></a></dd>
                                                        <dd><a title="水仙" href="#"><span>水仙</span></a></dd>
                                                        <dd><a title="风信子" href="#"><span>风信子</span></a></dd>
                                                        <dd><a title="满天星" href="#"><span>满天星</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="干花" style="color: #648B6C;">干花</span></dt>
                                                        <dd><a title="满天星" href="#"><span>满天星</span></a></dd>
                                                        <dd><a title="勿忘我" href="#"><span>勿忘我</span></a></dd>
                                                        <dd><a title="薰衣草" href="#"><span>薰衣草</span></a></dd>
                                                        <dd><a title="百合" href="#"><span>百合</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="盆栽" style="color: #648B6C;">盆栽</span></dt>
                                                        <dd><a title="秋丽" href="#"><span>秋丽</span></a></dd>
                                                        <dd><a title="多肉雪莲" href="#"><span>多肉雪莲</span></a></dd>
                                                        <dd><a title="莲花掌" href="#"><span>莲花掌</span></a></dd>
                                                        <dd><a title="小虎蓝" href="#"><span>小虎蓝</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜种植园 </span></a></dd>
                                                        <dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋花卉种植区</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >童花种植园  </span></a></dd>
                                                        <dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春种植园 </span></a></dd>
                                                        <dd><a rel="nofollow" title="华盛花行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
                                                        <dd><a rel="nofollow" title="奈华植物花卉种植园" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="蒂莲花行" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--导航 -->
        <script type="text/javascript">
            (function() {
                $('.am-slider').flexslider();
            });
            $(document).ready(function() {
                $("li").hover(function() {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function() {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })
        </script>


        <!--小导航 -->
        <div class="am-g am-g-fixed smallnav">
            <div class="am-u-sm-3">
                <a href=""><img src="${pageContext.request.contextPath }/resources/mall-images/navsmall.jpg" />
                    <div class="title">商品分类</div><!--商品导航-->
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="mall-home2.html#LimitBuy"><img src="${pageContext.request.contextPath }/resources/mall-images/huismall.jpg" />
                    <div class="title">大聚惠</div><!--活动页-->
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/mall-images/mansmall.jpg" />
                    <div class="title">个人中心</div><!--个人中心-->
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/mall-images/moneysmall.jpg" />
                    <div class="title">购物记录</div><!--个人中心-->
                </a>
            </div>
        </div>


        <!--各类活动-->
        <div class="row">
            <li><a><img src="${pageContext.request.contextPath }/resources/mall-images/row1.jpg"/></a></li>
            <li><a><img src="${pageContext.request.contextPath }/resources/mall-images/row2.jpg"/></a></li>
            <li><a><img src="${pageContext.request.contextPath }/resources/mall-images/row3.jpg"/></a></li>
            <li><a><img src="${pageContext.request.contextPath }/resources/mall-images/row4.jpg"/></a></li>
        </div>
        <div class="clear"></div>
        <!--走马灯 -->

        <div class="marqueenTwo">
            <span class="marqueen-title"><i class="am-icon-volume-up am-icon-fw"></i>农场头条<em class="am-icon-angle-double-right"></em></span>
            <div class="demo"><!--管理员管理-->

                <ul>
                    <li class="title-first"><a target="_blank" href="#">
                        <img src="${pageContext.request.contextPath }/resources/mall-images/TJ2.jpg"></img>
                        <span>[特惠]</span>水果年末大促，全场最低五折
                    </a></li>
                    <li class="title-first"><a target="_blank" href="#">
                        <span>[公告]</span>农场与某农场签署战略合作协议
                        <img src="${pageContext.request.contextPath }/resources/mall-images/TJ.jpg"></img>
                        <p>XXXXXXXXXXXXXXXXXX</p>
                    </a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>女生节花卉爆品1分秒	</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>蔬菜狂欢千亿礼券 买1送1！</a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>水果年末大促，全场最低五折</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>

                </ul>

            </div>
        </div>
        <div class="clear"></div>

    </div>
    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function() {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }
            $(function() {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--热门活动 -->

        <div class="am-container" id="LimitBuy">

            <div class="sale-mt">
                <i><img src="${pageContext.request.contextPath }/resources/mall-images/sale-t.jpg" /></i>
                <em class="sale-title">限时秒杀</em>
                <div class="s-time" id="countdown">
                    <span class="hh">01</span>
                    <span class="mm">20</span>
                    <span class="ss">59</span>
                </div>
            </div>


            <div class="am-g am-g-fixed sale">
                <div class="am-u-sm-3 sale-item">
                    <div class="s-img">
                        <a href="#"><img src="${pageContext.request.contextPath }/resources/mall-images/sale3.jpg" /></a><!--点击进入单个物品页面-->
                    </div>
                    <div class="s-info">
                        <a href="#"><p class="s-title">玫瑰花束</p></a>
                        <div class="s-price">￥<b>9.90</b>/束
                            <a class="s-buy" href="#">秒杀</a>
                        </div>
                    </div>
                </div>

                <div class="am-u-sm-3 sale-item">
                    <div class="s-img">
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/sale2.jpg" /></a>
                    </div>
                    <div class="s-info">
                        <a href="#"><p class="s-title">水果</p></a>
                        <div class="s-price">￥<b>9.90</b>/3斤
                            <a class="s-buy" href="#">秒杀</a>
                        </div>
                    </div>
                </div>

                <div class="am-u-sm-3 sale-item">
                    <div class="s-img">
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/sale1.jpg" /></a>
                    </div>
                    <div class="s-info">
                        <a href="#"><p class="s-title">新鲜蔬菜</p></a>
                        <div class="s-price">￥<b>9.90</b>/5斤
                            <a class="s-buy" href="#">秒杀</a>
                        </div>
                    </div>
                </div>

                <div class="am-u-sm-3 sale-item">
                    <div class="s-img">
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/sale2.jpg " /></a>
                    </div>
                    <div class="s-info">
                        <a href="#"><p class="s-title">水果</p></a>
                        <div class="s-price">￥<b>9.90</b>/3斤
                            <a class="s-buy" href="#">秒杀</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="clear "></div>
        <div class="f1" id="TeamBuy">

            <!--水果1开始-->
            <div class="am-container " >
                <div class="shopTitle ">
                    <h4 class="floor-title">鲜果</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>每一种水果都有一个故事</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px;">
                        <a href="mall-search.html">蓝莓</a>|
                        <a href="# ">橘子</a>|
                        <a href="# ">龙眼</a>|
                        <a href="# ">樱桃</a>|
                        <a href="# ">葡萄</a>|
                        <a href="# ">香蕉</a>
                    </div>

                </div>
            </div>

            <div class="am-g am-g-fixed floodSix ">
                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜果</b></span></a>
                    </div>
                    <a href="mall-search.html">
                        <img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" />
                        <div class="outer-con ">
                            <div class="title ">
                                水果大礼包开抢啦
                            </div>
                            <div class="sub-title ">
                                当小鱼儿恋上水果
                            </div>
                        </div>
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            果之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act1.png" /></a>	<!--香蕉-->
                </div>

                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                樱桃
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/1.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                龙眼
                            </div>
                            <div class="sub-title ">
                                ¥5.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/2.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                橙子
                            </div>
                            <div class="sub-title ">
                                ¥3.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                葡萄
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/3.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                蓝莓
                            </div>
                            <div class="sub-title ">
                                ¥6.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/4.jpg" /></a>
                    </div>
                </li>
            </div>

            <div class="clear "></div>
        </div><!--水果1结束-->

        <!--水果2-->
        <div class="f3">
            <div class="am-container " >
                <div class="shopTitle ">
                    <h4 class="floor-title">果干</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>当我丢失H2O后就变成了另一个故事集</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px;">
                        <a href="# ">葡萄干</a>|
                        <a href="# ">芒果干</a>|
                        <a href="# ">草莓干 </a>|
                        <a href="# ">香蕉片</a>|
                        <a href="# ">猕猴桃片</a>|
                        <a href="# ">蔓越莓干</a>
                    </div>

                </div>
            </div>

            <div class="am-g am-g-fixed floodSix ">

                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">果干</b></span></a>
                    </div>
                    <a href="# ">
                        <img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" />
                        <div class="outer-con ">
                            <div class="title ">
                                水果零食大礼包开抢啦
                            </div>
                            <div class="sub-title ">
                                先到先得，美味在手
                            </div>
                        </div>
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            果之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act1.png" /></a>
                </div>

                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                芒果干
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/芒果.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                猕猴桃片
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/猕猴桃片.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                草莓干
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/草莓干.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                香蕉片
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/香蕉片.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                葡萄干
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/葡萄干.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>
        <div class="f4">

            <!--花卉-->
            <div class="am-container ">
                <div class="shopTitle ">
                    <h4 class="floor-title">鲜花</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>每一种花卉都有代表着一种情感</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px">
                        <a href="# ">玫瑰</a>|
                        <a href="# ">百合</a>|
                        <a href="# ">风信子</a>|
                        <a href="# ">水仙</a>|
                        <a href="# ">满天星</a>|
                        <a href="# ">康乃馨</a>
                    </div>
                </div>
            </div>
            <div class="am-g am-g-fixed floodSeven">
                <div class="am-u-sm-5 am-u-md-4 text-one list ">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">鲜花</b></span></a>
                    </div>
                    <a href="# ">
                        <div class="outer-con ">
                            <div class="title ">
                                鲜花束开售，先到先得
                            </div>
                            <div class="sub-title ">
                                鲜花大派送
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath }/resources/mall-images/f1.jpg" />
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-4 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            花之恋和风暖阳
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act2.png " /></a>

                </div>

                <li>
                    <div class="am-u-sm-7 am-u-md-4 text-two">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                玫瑰
                            </div>
                            <div class="sub-title ">
                                ¥13.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/6.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                风信子
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/7.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three big">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                水仙
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/10.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                康乃馨
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/8.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                满天星
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/9.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>

        <div class="f5">
            <!--花卉2-->

            <div class="am-container " >
                <div class="shopTitle ">
                    <h4 class="floor-title">干花</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>干花是情感的永恒</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px;">
                        <a href="# ">薰衣草</a>|
                        <a href="# ">满天星</a>|
                        <a href="# ">我忘我 </a>|
                        <a href="# ">百合</a>|
                        <a href="# ">康乃馨</a>|
                        <a href="# ">玫瑰</a>
                    </div>

                </div>
            </div>

            <div class="am-g am-g-fixed floodSix ">

                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">干花</b></span></a>
                    </div>
                    <a href="# ">
                        <img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" />
                        <div class="outer-con ">
                            <div class="title ">
                                高级干花定制
                            </div>
                            <div class="sub-title ">
                                香味持久
                            </div>
                        </div>
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            花之恋和风暖阳
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act1.png" /></a>
                </div>

                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                薰衣草
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/1.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                满天星
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/2.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                勿忘我
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                百合
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/3.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                康乃馨
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/4.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>
        <div class="f6">

            <!--花卉3-->
            <div class="am-container ">
                <div class="shopTitle ">
                    <h4 class="floor-title">盆栽</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>小巧可爱，还可以净化空气奥</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px">
                        <a href="# ">秋丽</a>|
                        <a href="# ">多肉雪莲</a>|
                        <a href="# ">莲花掌 </a>|
                        <a href="# ">小虎蓝</a>|
                        <a href="# ">开心果</a>|
                        <a href="# ">核桃仁</a>
                    </div>
                </div>
            </div>
            <div class="am-g am-g-fixed floodSeven">
                <div class="am-u-sm-5 am-u-md-4 text-one list ">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">盆栽</b></span></a>
                    </div>
                    <a href="# ">
                        <div class="outer-con ">
                            <div class="title ">
                                新品种盆栽
                            </div>
                            <div class="sub-title ">
                                简单，可爱
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath }/resources/mall-images/11.jpg" />
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-4 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            花之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act2.png " /></a>

                </div>

                <li>
                    <div class="am-u-sm-7 am-u-md-4 text-two">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                芦荟
                            </div>
                            <div class="sub-title ">
                                ¥13.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/6.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                秋丽
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/7.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three big">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                多肉雪莲
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/10.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                小虎蓝
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/8.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                莲花掌
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/9.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>

        <div class="f7">
            <!--蔬菜1 根菜类-->

            <div class="am-container " >
                <div class="shopTitle ">
                    <h4 class="floor-title">蔬菜</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>每一中蔬菜都代表一种营养</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px;">
                        <a href="# ">胡萝卜</a>|
                        <a href="# ">大头菜</a>|
                        <a href="# ">萝卜 </a>|
                        <a href="# ">土豆</a>|
                        <a href="# ">甜菜</a>|
                        <a href="# ">豌豆黄</a>
                    </div>

                </div>
            </div>

            <div class="am-g am-g-fixed floodSix ">

                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                    </div>
                    <a href="# ">
                        <img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" />
                        <div class="outer-con ">
                            <div class="title ">
                                新鲜蔬菜
                            </div>
                            <div class="sub-title ">

                            </div>
                        </div>
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            菜之恋和风大康
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act1.png" /></a>
                </div>

                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                胡萝卜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/1.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                大白菜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/2.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                土豆
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                甜菜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/3.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                萝卜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/4.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>
        <div class="f8">

            <!--蔬菜2 茎菜类-->
            <div class="am-container ">
                <div class="shopTitle ">
                    <h4 class="floor-title">蔬菜</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3></h3></div>
                    <div class="today-brands " style="right:0px ;top:13px">
                        <a href="# ">莲藕</a>|
                        <a href="# ">姜</a>|
                        <a href="# ">竹笋 </a>|
                        <a href="# ">莴苣笋</a>|
                        <a href="# ">慈菇</a>|
                        <a href="# ">芋头</a>
                    </div>
                </div>
            </div>
            <div class="am-g am-g-fixed floodSeven">
                <div class="am-u-sm-5 am-u-md-4 text-one list ">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                    </div>
                    <a href="# ">
                        <div class="outer-con ">
                            <div class="title ">
                                新鲜蔬菜开抢啦！
                            </div>
                            <div class="sub-title ">

                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath }/resources/mall-images/11.jpg" />
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-4 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            菜之恋和风大康
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act2.png " /></a>

                </div>

                <li>
                    <div class="am-u-sm-7 am-u-md-4 text-two">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                莲藕
                            </div>
                            <div class="sub-title ">
                                ¥13.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/6.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                姜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/7.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three big">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                竹笋
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/10.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                慈菇
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/8.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                芋头
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/9.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>

        <div class="f9">
            <!--蔬菜3 叶菜类-->

            <div class="am-container " >
                <div class="shopTitle ">
                    <h4 class="floor-title">蔬菜</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>每一种蔬菜都代表了一种营养</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px;">
                        <a href="# ">芥菜</a>|
                        <a href="# ">菠菜</a>|
                        <a href="# ">芹菜 </a>|
                        <a href="# ">葱</a>|
                        <a href="# ">韭菜</a>|
                        <a href="# ">大蒜</a>
                    </div>

                </div>
            </div>

            <div class="am-g am-g-fixed floodSix ">

                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                    </div>
                    <a href="# ">
                        <img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" />
                        <div class="outer-con ">
                            <div class="title ">
                                新鲜蔬菜开抢啦
                            </div>
                            <div class="sub-title ">

                            </div>
                        </div>
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            菜之恋和风大康
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act1.png" /></a>
                </div>

                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                菠菜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="mall-images/1.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-md-2 am-u-lg-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                芹菜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/2.jpg " /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                葱
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/5.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                大蒜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/3.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                韭菜
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/4.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>
        <div class="f10">

            <!--蔬菜4 果菜类-->
            <div class="am-container ">
                <div class="shopTitle ">
                    <h4 class="floor-title">蔬菜</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>每一种蔬菜都代表了一种营养</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px">
                        <a href="# ">番茄</a>|
                        <a href="# ">辣椒</a>|
                        <a href="# ">茄子 </a>|
                        <a href="# ">毛豆</a>|
                        <a href="# ">豌豆</a>|
                        <a href="# ">蚕豆</a>
                    </div>
                </div>
            </div>
            <div class="am-g am-g-fixed floodSeven">
                <div class="am-u-sm-5 am-u-md-4 text-one list ">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">蔬菜</b></span></a>
                    </div>
                    <a href="# ">
                        <div class="outer-con ">
                            <div class="title ">
                                新鲜蔬菜开抢啦！
                            </div>
                            <div class="sub-title ">
                                蔬菜大礼包
                            </div>
                        </div>
                        <img src="mall-images/11.jpg" />
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-4 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            菜之恋和风大康
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/act2.png " /></a>

                </div>

                <li>
                    <div class="am-u-sm-7 am-u-md-4 text-two">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                番茄
                            </div>
                            <div class="sub-title ">
                                ¥13.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/6.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                辣椒
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/7.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three big">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                茄子
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/10.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                豌豆
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/8.jpg" /></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-3 am-u-md-2 text-three ">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                蚕豆
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="${pageContext.request.contextPath }/resources/mall-images/9.jpg" /></a>
                    </div>
                </li>
            </div>
            <div class="clear "></div>
        </div>



        <div class="footer ">
            <div class="footer-hd ">
                <p>
                    <a href="${pageContext.request.contextPath }/mdnc/index">摩登农场</a>
                    <b>|</b>
                    <a href="#mallPage">商城首页</a>
                    <b>|</b>
                    <a href="# ">支付宝</a>
                    <b>|</b>
                    <a href="# ">物流</a>
                </p>
            </div>
            <div class="footer-bd ">
                <p>
                    <a href="${pageContext.request.contextPath }/mdnc/index#about">关于摩登农场</a>
                    <a href="# ">合作伙伴</a>
                    <a href="${pageContext.request.contextPath }/mdnc/index#contact">联系我们</a>
                    <a href="# ">网站信息</a>
                    <em>© 2015-2025 Hengwang.com 版权所有. 更多信息<a href="${pageContext.request.contextPath }/mdnc/index" target="_blank" title="摩登农场">摩登农场</a> - Collect from <a href="index.html" title="摩登农场" target="_blank">摩登农场</a></em>
                </p>
            </div>
        </div>
    </div>
</div>
</div>
</div>

<!--引导 -->
<div class="navCir">
    <li class="active"><a href="#mallPage"><i class="am-icon-home "></i>首页</a></li>
    <li><a href="#mallPage"><i class="am-icon-list"></i>分类</a></li>
    <!-----登录前，点击事件，点击提示登录----->
    <li><a href="#" onclick="popup()"><i class="am-icon-shopping-basket"></i>购物车</a></li>
    <li><a href="#" onclick="popup()"><i class="am-icon-user"></i>我的</a></li>
    <!-----登录后，点击事件，点击进入页面
    <li><a href="#" onclick="popup()"><i class="am-icon-shopping-basket"></i>购物车</a></li>
    <li><a href="#" onclick="popup()"><i class="am-icon-user"></i>我的</a></li>	---->
</div>
<!--菜单 -->
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item ">
                <!--登录前无显示内容，点击后弹出提示框，提示登录-->
                <a href="# " onclick="popup()">
                    <span class="setting "></span>
                </a>
                <!--登陆后显示，无点击内容，鼠标放在上面显示以下内容
                <a href="# "class="wo">
                    <span class="setting "></span>
                </a>
                <div class="ibar_login_box status_login ">
                    <div class="avatar_box ">
                        <p class="avatar_imgbox "><img src="${pageContext.request.contextPath }/resources/mall-images/no-img_mid_.jpg " /></p>
                        <ul class="user_info ">
                            <li>用户名：sl1903</li>
                            <li>级&nbsp;别：普通会员</li>
                        </ul>
                    </div>
                    <div class="login_btnbox ">
                        <a href="# " class="login_order ">我的订单</a>
                        <a href="# " class="login_favorite ">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white "></i>
                </div>
                -->
            </div>
            <div id="shopCart " class="item ">
                <!--登录前无显示内容，点击后弹出提示框，提示登录-->
                <a href="#" onclick="popup()">
                    <span class="message "></span>
                </a>

                <!--登陆后显示，无点击内容，鼠标放在上面显示以下内容
                <a href="#">
                    <span class="message "></span>
                </a>
                <p>
                    购物车
                </p>
                <p class="cart_num ">0</p>-->
            </div>
            <div id="asset " class="item ">
                <!--登录前无显示内容，点击后弹出提示框，提示登录-->
                <a href="# " onclick="popup()">
                    <span class="view "></span>
                </a>

                <!--登陆后显示，无点击内容，鼠标放在上面显示以下内容
                <a href="# ">
                    <span class="view "></span>
                </a>
                <div class="mp_tooltip ">
                    我的资产
                    <i class="icon_arrow_right_black "></i>
                </div>-->
            </div>

            <div id="foot " class="item ">
                <!--登录前无显示内容，点击后弹出提示框，提示登录-->
                <a href="# " onclick="popup()">
                    <span class="zuji "></span>
                </a>

                <!--登陆后显示，无点击内容，鼠标放在上面显示以下内容
                <a href="# ">
                    <span class="zuji "></span>
                </a>
                <div class="mp_tooltip ">
                    我的足迹
                    <i class="icon_arrow_right_black "></i>
                </div>-->
            </div>

            <div id="brand " class="item ">
                <!--登录前无显示内容，点击后弹出提示框，提示登录-->
                <a href="#" onclick="popup()">
                    <span class="wdsc "><img src="${pageContext.request.contextPath }/resources/mall-images/wdsc.png " /></span>
                </a>

                <!--登陆后显示，无点击内容，鼠标放在上面显示以下内容
                <a href="#">
                    <span class="wdsc "><img src="${pageContext.request.contextPath }/resources/mall-images/wdsc.png " /></span>
                </a>
                <div class="mp_tooltip ">
                    我的收藏
                    <i class="icon_arrow_right_black "></i>
                </div>-->
            </div>
            <div class="quick_toggle ">
                <!--客服，二维码 ,不确定要不要留，先别删
                <li class="qtitem ">
                    <a href="# "><span class="kfzx "></span></a>
                    <div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
                </li>

                <li class="qtitem ">
                    <a href="#none "><span class="mpbtn_qrcode "></span></a>
                    <div class="mp_qrcode " style="display:none; "><img src="${pageContext.request.contextPath }/resources/mall-images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
                </li>--->
                <li class="qtitem ">
                    <a href="#top " class="return_top "><span class="top "></span></a>
                </li>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop " class="quick_links_pop hide "></div>

        </div>

    </div>
    <div id="prof-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            资产
        </div>

        <div class="ia-head-list ">
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">优惠券</div>
            </a>
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">红包</div>
            </a>
            <a href="# " target="_blank " class="pl money ">
                <div class="num ">￥0</div>
                <div class="text ">余额</div>
            </a>
        </div>

    </div>
    <div id="foot-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>

<script>
    window.jQuery || document.write('<script src="${pageContext.request.contextPath }/resources/basic/js/jquery.min.js "><\/script>');
</script>
<script type="text/javascript " src="${pageContext.request.contextPath }/resources/mall-basic/js/quick_links.js "></script>
<script>/*提醒登录的弹窗函数*/
function popup(){
    alert("您未登录！请先登录系统");
}
</script>
<script>/*搜索页面链接*/
function OpenSearch(){
    $(window.open("mall-search.html"));
}
</script>
</body>

</html>