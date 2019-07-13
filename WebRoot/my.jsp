<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	List studentDataList = (List) request.getAttribute("studentDataList");

	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/c-ss" href="styles.css">
	-->
<link rel="shortcut icon" href="<%=basePath%>images/one.png">
<link rel="stylesheet" href="css/index.css" type="text/css" />
<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<link rel="stylesheet" href="css/table.css" type="text/css"></link>

<link rel="stylesheet" href="css/new.css" type="text/css"></link></head>

<body>
	<div class="menu_width">
		<div class="menu">
			<div class="menu_logo">
				<a href="/"></a>
			</div>
			<ul class="menu_list">
				<!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
				<li class="menu_1"><a
					href="<%=basePath%>ServletQueryPersonData?sid=15023052"><i></i><span>首页</span>
				</a>
				</li>
				<li class="menu_2"><a href="<%=basePath%>ServletCountGrade"><i></i><span>整体数据</span>
				</a>
				</li>
				<li class="menu_3"><a  class="current" ><i></i><span>个人中心</span>
				</a>
				</li>
				<li class="menu_4"><a href="fanghu.jsp"><i></i><span>体质健康</span>
				</a>
				</li>
				<li class="menu_5"><a href="aboutUs.jsp"><i></i><span>关于我们</span>
				</a>
				</li>
				<div class="clear"></div>
			</ul>
		</div>
	</div>

	<div class="main_width">
		<div class="district_overview">
			<div class="overview">
				<div class="district">
					<div class="choose_district">
						<div class="thisdistrict">欢迎您，${personDataList[0].sname}！</div>
						<div class="districts"></div>
					</div>
					
				</div>
				
				<div class="content">
					<p>个人中心</p>
					<br>
					<p>学号:15023052${paimingDataList[0].sno}</p>
					<br>
					<p>姓名:钱坤${paimingDataList[0].sname}</p>
					<br>
					<p>性别:女</p>
					<br>
					<p>民族:汉族</p>
					<br>
					<p>出生年月:1996年12月13日${paimingDataList[0].birthday}</p>
					<br>
					<p>学院:文学与新闻传播学院</p>
					<br>
					<p>年级:2015${paimingDataList[0].yno}</p>
					<br>
					<p>生源所在地:甘肃${paimingDataList[0].sorigin}</p>
					<br>
				</div>
			</div>
		</div>
		
	</div>
	<div class="footer_width">
		<div class="footer">
			<div class="footer_left">
				<div class="footer_left_links">
					<dl class="footer_left_item1">
						<dt>快捷导航</dt>
						<dd>
							<a href="rank.jsp">个人体测数据</a><br> <a href="rank.jsp">整体数据趋势</a><br>
							<a href="fanghu.jsp">国家体质测试标准</a><br>
						</dd>
					</dl>
					<dl class="footer_left_item2">
						<dt>相关资讯</dt>
						<dd>
							<a href="<%=basePath%>ServletQueryAllData?name=station1"
								target="_blank">历史数据</a><br> <a href="fanghu.jsp"
								target="_blank">体质健康</a><br> <a href="aboutUs.jsp"
								target="_blank">关于我们</a><br>
						</dd>
					</dl>

					<div class="clear"></div>
				</div>
			</div>

			<div class="footer_right">
				<a class="footer_logo" href=""></a>
				<p class="footer_aboutus"></p>
				<p class="footer_email">意见建议：412854858@qq.com</p>

			</div>
			<div class="clear"></div>
		</div>
	</div>
</body>
</html>
