<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="<%=basePath%>images/one.png">
  <link rel="stylesheet" href="css/main.css" type="text/css"/>
<link rel="stylesheet" href="css/about.css" type="text/css"></link></head>
  
  <body class="about">
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
              <ul class="menu_list">
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                    <li class="menu_1"><a href="<%=basePath%>ServletQueryPersonData?sid=15023052"><i></i><span>首页</span></a></li>
                    <li class="menu_2"><a href="<%=basePath%>ServletCountGrade"><i></i><span>整体数据</span></a></li>
                    <li class="menu_3"><a href="my.jsp"><i></i><span>个人中心</span></a></li>
                    <li class="menu_4"><a href="fanghu.jsp"><i></i><span>体质健康</span></a></li>
                    <li class="menu_5"><a class="current"  href="aboutUs.jsp"><i></i><span>关于我们</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<!-- 放你的东西 -->
       <section class="banner">
        <div class="container text-center t-white">
            <h1 class="animated">中央民族大学体质测试数据分析平台</h1>
            <p class="text-lg">体测数据，合理建议</p>
            <p class="info animated ptm">
                本作品是为中央民族大学体测中心开发<br/>
               为全体学生及相关人士提供个人体测数据及相关排名以及整体数据的展示和预测<br/>
				
            </p>
        </div>
    </section>
     <section class="block culture">
        <div class="container text-center">
            <div class="title mbl">
              <h1>团队创新</h1>
              <small>Team Creativity</small>
            </div>
            <div class="row clearfix">
                <div class="col-md-6 mbs tip1 clearfix">
                    <div class="tip">
                        <span>高效</span>
                        <small>	high_efficiency</small>
                    </div>
                    <div class="content"> 
                        <p class="visible-xs">节省检索个人数据时间，<br/>成绩排名，是否及格一目了然</p>
                    </div>
                </div>
                <div class="col-md-6 mbs tip2 clearfix">
                    <div class="tip">
                        <span>预测</span>
                        <small>Forecast</small>
                    </div>
                    <div class="content"> 
                        <p class="hidden-xs">通过往年数据，对某一集体进行未来趋势的预测<br/></p>
                    </div>
                </div>
                <div class="col-md-6 tip3 mbs clearfix">
                    <div class="content"> 
                        <p class="visible-xs">以网站可视化界面的形式展现，<br/>生动形象、方便日常生活查看使用</p>
                    </div>
                    <div class="tip">
                        <span> 可视化</span>
                        <small>Visible</small>
                    </div>
                </div>
                <div class="col-md-6 mbs tip4 clearfix">
                    <div class="content"> 
                        <p class="visible-xs">通过个人的各项指标<br/>给出针对不同项目的不同建议</p>
                    </div>
                    <div class="tip">
                        <span>建议</span>
                        <small>propose</small>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
<div class="footer_width">
       <div class="footer">
                <div class="footer_left">
                <div class="footer_left_links">
                <dl class="footer_left_item1"> 
                   <dt>快捷导航</dt>
                 <dd>
                    <a href="rank.jsp">个人中心</a><br>
                  <a href="rank.jsp">首页</a><br>
                  <a href="fanghu.jsp">整体数据</a><br>
                 </dd>
              </dl>
               <dl class="footer_left_item2"> 
                   <dt>体测资讯</dt>
                 <dd>
                  <a href="<%=basePath%>ServletQueryAllData?name=station1" target="_blank">历史数据</a><br>
                  <a href="fanghu.jsp" target="_blank">体测标准</a><br>
                  <a href="aboutUs.jsp" target="_blank">关于我们</a><br>
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
</div>
</body>
</html>
