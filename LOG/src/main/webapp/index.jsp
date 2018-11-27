<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

	<head>
		<meta charset="utf-8" />
		<title>苏州安曙达物流有限公司</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="static/css/main.css" />
	</head>

	<body>
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
					<a class="navbar-brand" href="index.html"><img src="static/images/logo.png"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="active">
							<a href="index.html">网站首页</a>
						</li>
						<li>
							<a href="about.html">关于我们</a>
						</li>
						<li>
							<a href="online.html">在线下单</a>
						</li>
						<li>
							<a href="service.html">业务范围</a>
						</li>
						<li>
							<a href="news.html">新闻资讯</a>
						</li>
						<li>
							<a href="contact.html">联系我们</a>
						</li>
					</ul>
					
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="static/images/banner/banner1.jpg" >
				</div>
				<div class="item">
					<img src="static/images/banner/banner2.jpg" >
				</div>
				<div class="item">
					<img src="static/images/banner/banner3.jpg" >
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- sec -->
		<div class="sec">
			<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<div class="online-add square-title">
							<div>
								<p>网上下单<span class="glyphicon glyphicon-arrow-right"></span></p>
							</div>
							<ul class="clearfix">
								<li>
									<a href="online.html">
										立即下单
									</a>
								</li>
								<li>
									<a href="problem.html">
										常见问题
									</a>
								</li>
							</ul>
						</div>
						<div class="service square-title">
							<div>
								<p>服务介绍<span class="glyphicon glyphicon-arrow-right"></span></p>
							</div>
							<ul class="clearfix">
								<li>
									<a href="service.html">
										<img src="static/images/serli/2.png" />
										<span>物流卡航</span>
									</a>
								</li>
								<li>
									<a href="service1.html">
										<img src="static/images/serli/6.png" />
										<span>物流空运</span>
									</a>
								</li>
								<li>
									<a href="service2.html">
										<img src="static/images/serli/5.png" />
										<span>限时到达</span>
									</a>
								</li>
								<li>
									<a href="service3.html">
										<img src="static/images/serli/4.png" />
										<span>物流普运</span>
									</a>
								</li>
								<li>
									<a href="service4.html">
										<img src="static/images/serli/3.png" />
										<span>城际快线</span>
									</a>
								</li>
								<li>
									<a href="service5.html">
										<img src="static/images/serli/1.png" />
										<span>合作共赢</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-7">
						<ul class="clearfix quicklink">
							<li class="link-yf">
								<a href="problem-detail3.html">
									<img src="static/images/serli/7.png" />
									<div>
										<span>运费咨询</span>
									</div>
								</a>
							</li>
							<li class="link-wd"> 
								<a href="problem-detail7.html">
									<img src="static/images/serli/8.png" />
									<div>
										<span>网点查询</span>
									</div>
								</a>
							</li>
							<li class="link-jj">
								<a href="problem-detail5.html">
									<img src="static/images/serli/9.png" />
									<div>
										<span>解决方案</span>
									</div>
								</a>
							</li>
						</ul>
						<div class="news">
							<div class="news-type">
								<ul class="clearfix">
									<li>新闻资讯</li>
									<li class="more"><a href="news.html">查看更多</a></li>
								</ul>
							</div>
							<ul class="news-list">
								<li>
									<a href="news-detail1.html">
										<span>2017-7-12</span>
										<p>国家邮政局发通告要求严格落实收寄验视制度</p>
									</a>
								</li>
								<li>
									<a href="news-detail2.html">
										<span>2017-7-12</span>
										<p>快递集团恭祝全国人民佳节愉快</p>
									</a>
								</li>
								<li>
									<a href="news-detail3.html">
										<span>2017-7-12</span>
										<p>快递一周年：有你就有力量</p>
									</a>
								</li>
								<li>
									<a href="news-detail4.html">
										<span>2017-7-12</span>
										<p>快递引领电商快递新风向上海站沙龙成功举办</p>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="container">
				<ul class="foot-nav clearfix">
					<li><a href="index.html">网站首页</a></li>
					<li><a href="about.html">关于我们</a></li>
					<li><a href="online.html">在线下单</a></li>
					<li><a href="service.html">业务范围</a></li>
					<li><a href="news.html">新闻资讯</a></li>
					<li><a href="contact.html">联系我们</a></li>
				</ul>
				<p class="cpr">
					Copyright © 2009-2011,All rights reserved
				</p>
			</div>
		</footer>
		<div class="fl">
			<ul>
				<li><a href="tel:15995656015">电话咨询</a></li>
				<li><a href="index.html">网站首页</a></li>
				<li><a href="">在线留言</a></li>
			</ul>
		</div>
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>
