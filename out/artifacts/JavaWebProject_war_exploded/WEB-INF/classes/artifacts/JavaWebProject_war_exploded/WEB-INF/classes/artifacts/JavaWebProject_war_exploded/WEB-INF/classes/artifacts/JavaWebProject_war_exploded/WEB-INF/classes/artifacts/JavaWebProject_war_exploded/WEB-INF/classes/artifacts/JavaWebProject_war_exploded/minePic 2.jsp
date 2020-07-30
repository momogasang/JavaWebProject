<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <title>Daddy旅行社</title>
  <meta name="keywords" content="Daddy旅行社">
  <meta name="description" content="Daddy旅行社">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="shortcut icon" href="images/favicon.ico">

  <!-- include main css -->
  <link rel="stylesheet" type="text/css" href="css/slick.css"/>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css"/>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
  <link rel="stylesheet" type="text/css" href="css/animate.css"/>

</head>
<body>

<div>
  <!--header-->
  <header class="header_zi">
    <div class="container">
      <div class="logo">
        <a href="index.jsp"><img src="images/logo1.png" alt=""/></a>
      </div>
      <a href="#mmenu" class="phone-nav"><i class="fa fa-list"></i></a>
      <div class="logo_right">
        <nav class="nav">
          <ul>
            <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/Court">热门图片</a></li>
            <li><a href="${pageContext.request.contextPath}/new">最新图片</a></li>
          </ul>
        </nav>
        <div class="search">
          <c:if test="${sessionScope.user == null}">
                <span class="y_z">
		  	 		<a href="login.jsp" class="zh active" style="margin-right: 30px">
                        <button type="button" class="btn btn-default btn-sm"
                                onclick="location.href='login.jsp'">登录</button>
                    </a>
                    <a href="login.jsp" class="en">
                        <button type="button" class="btn btn-default btn-sm"
                                onclick="location.href='login.jsp'">注册</button>
                    </a>
		  	 	</span>
        </c:if>
          <c:if test="${sessionScope.user != null}">
                    <span class="y_z">
            <select name="sele" onchange="s_click(this)" style="width: 100px;display: inline-block;margin-bottom: 10px">
              <option value="javaScript:;">${sessionScope.user.name}</option>
              <option value="addPic.jsp">分享图片</option>
              <option value="/mineC">我的收藏</option>
              <option value="/minePic">我的分享</option>
              <option value="/login?type=5">退出登录</option>
            </select>
          </span>
          </c:if>
        </div>
      </div>
    </div>
  </header>

  <!--banner  start-->
  <section class="banner_zi">
    <div><img src="images/comfortable.png" alt=""></div>
  </section>
  <!--banner end-->
  <div class="head_bar">
    <span>位置：</span><a href="${pageContext.request.contextPath}/index">首页 </a> > <span class="active">我的分享</span>
  </div>
  <div class="comfor_con">
    <div class="top_tit">
      <span class="span1"><a href="comfortable.jsp">我的分享</a></span><br/>
      <span class="span2">Latest upload</span>
    </div>
    <div class="com_shi">
      <br>
    </div>
    <div class="zx_fang">
        <c:forEach items="${requestScope.list}" var="pro">
          <div class="f_da wow bounceIn" style="max-height:300px;height: 280px; overflow: hidden;margin-bottom: 20px;">
            <div style="max-height:300px;"><img src="${pro.img}" alt=""/>
              <ul>
                <li><span style="font-size: 25px;">${pro.title}</span></li>
                <li><strong>[作者]</strong><span>${pro.author}</span></li>
                <li><strong>[图片简介]</strong><span>${pro.introduction}</span></li>
                <li><strong>[热度]</strong><span>${pro.heat}</span></li>
                <li><strong>[国家]</strong><span>${pro.state}</span></li>
                <li><strong>[城市]</strong><span>${pro.city}</span></li>
                <li><strong>[发布时间]</strong><span>${pro.time}</span></li>
                <li>
                    <span class="icon-collection" aria-hidden="true" style="color: red">
                      <button class="Collection" onclick="location.href = '/picEditor?type=update&id=${pro.id}'">修改</button>
                    </span>
                    <span class="icon-collection" aria-hidden="true" style="color: red">
                      <button class="Collection" onclick="location.href = '/picEditor?type=delete&id=${pro.id}'">删除</button>
                    </span>
                </li>
              </ul>
            </div>
          </div>
        </c:forEach>
    </div>
  </div>


  <!--footer  start-->
  <footer class="footer">
    <div class="footer_con">
      <div class="con">
        <div class="nei">
          <div class="clear"></div>
          <div class="lian">
            电话：<a href="tel:021-31265245">021-********</a><br/>
            邮箱：<a href="mailto:Eason.wang@71360.com">***********@qq.com</a><br/>
            手机：<a href="tel:189 1610 1908">18* **** ****</a><br/>
            地址：**市**区**路**号<br/>
            <span>
							<a href="http://www.71360.com/" target="_blank">
								<img src="images/yu.png" alt=""/>
							</a>

							<span class="er_a">
								<img src="images/er.png" alt="" class="one_img"/>
								****公众号
								<img src="images/erwei.png" alt="" class="er_img"/>
							</span>

						</span>
          </div>

        </div>
      </div>

    </div>
    <div class="copy">Copyright© 2016 版权所有：********公司</div>
  </footer>
  <!--footer  end-->

  <!--移动端  Mmenu-->
  <nav id="mmenu">
    <ul>
      <li><a href="index.jsp" class="active">首页</a></li>
      <li><a href="court_travel_show.jsp">热门图片</a>
        <ul>
          <li><a href="court_travel_show.jsp">万竹林海</a></li>
          <li><a href="court_travel_show.jsp">庐山瀑布</a></li>
          <li><a href="court_travel_show.jsp">乐山大佛</a></li>
        </ul>
      </li>
      <li><a href="comfortable.jsp">最新图片</a></li>
    </ul>
  </nav>
</div>

<!--Include Js-->
<script src="js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>

<!--移动端导航-->
<script src="js/jquery.mmenu.all.min.js" type="text/javascript" charset="utf-8"></script>

<script src="js/public.js" type="text/javascript" charset="utf-8"></script>

<!--slick-->
<script src="js/slick.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/wow.js" type="text/javascript" charset="utf-8"></script>

<!--placeholder-->
<script src="js/jquery.placeholder.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
  $(function () {
    $('input, textarea').placeholder();
  });
  function s_click(obj) {
    var num = 0;
    for (var i = 0; i < obj.options.length; i++) {
      if (obj.options[i].selected === true) {
        num++;
      }
    }
    if (num === 1) {
      var url = obj.options[obj.selectedIndex].value;
      window.location.href = url;
    }
  }
</script>

<!--<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->

</body>
<script>
</script>
</html>
