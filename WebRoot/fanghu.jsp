<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>体质健康</title>
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
	<link rel="stylesheet" href="css/fanghu.css" type="text/css"/>
  <script type="text/javascript" src="js/jquery.min.js"></script></head>
  
  <body>
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
             <ul class="menu_list">
				<!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
				<li class="menu_1"><a
					href="<%=basePath%>ServletQueryPersonData?sid=15023052"><i></i><span>首页</span>
				</a>
				</li>
				<li class="menu_2"><a href="<%=basePath%>ServletCountGrade"><i></i><span>整体数据</span>
				</a>
				</li>
				<li class="menu_3"><a><i></i><span>个人中心</span>
				</a>
				</li>
				<li class="menu_4"><a href="fanghu.jsp"  class="current"><i></i><span>体质健康</span>
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
    <div class="pm_overview" >
	<div class="overview">
		<div class="pm">
			<div class="pm_title">
				<p>中央民族大学<br></p>
			</div>
			<div class="pm_notes">
				<p>关于大学生体测，这里有你必须要知道的事……</p>
			</div>
		</div>
		<div class="protect">
			<div class="pr12">
			<div class="protect1">
				<img src="images/kouzhao.png"/>
				<p></p>
			</div>
			<div class="protect2">
				<img src="images/shanyao.png"/>
				<p></p>
			</div>
			</div>
			<div class="pr34">
			<div class="protect3">
				<img src="images/sports.png"/>
				<p></p>
			</div>
			<div class="protect4">
				<img src="images/ill.png"/>
				<p></p>
			</div>
			</div>
		</div>
	</div>
	</div>
<div class="main">
	<div class="pro">
		<div class="pr1">
		<div class="title">Tip1:饮食</div>
		<div class="box">
			<div class="pr1_1">
				<div class="proimg">
					<img src="images/yinshi.jpg"/>
				</div>
				<div class="protext">
				<div class="protitle">     </div>
				<div class="procontext">记得吃早/午饭！可以适量补充富含盐分的
				食物为你提供足够的热量和能量。但也不要过度饮食~尤其注意不
				要饮水过多，以免增加消化、泌尿系统和心脏的负担。运动前三十
				分钟内不要进食。</div>
				</div>
			</div>
			
		</div>
		</div>
		<div class="pr2">
		<div class="title">Tip2:作息</div>
		<div class="box">
			<div class="pr2_1">
				<div class="proimg">
					<img src="images/zuoxi.jpg"/>
				</div>
				<div class="protext">
				<div class="protitle">          </div>
				<div class="procontext">在体测前夜最好早睡，并保证八小时以上睡眠
				时间。保持良好体力，避免体测时出现过度疲劳</div>
				<div class="procontext"></div>
				</div>
			</div>
			
		</div>
		</div>
		<div class="pr3">
		<div class="title">Tip3:着装</div>
		<div class="box">
			<div class="pr3_1">
				<div class="proimg">
					<img src="images/zhuozhuang.jpg"/>
				</div>
				<div class="protext">
				<div class="protitle">        </div>
				<div class="procontext">袜子应选纯棉质地的运动袜，一为充分吸收汗液
				，二为能使脚掌与鞋子结合紧密，便于发力；
				最好选用轻质薄底宽纹运动鞋、一定要系好鞋带
				（鞋带最好打上死结，并要把鞋带塞进鞋内）
				；个人可以准备一条小毛巾，方便出汗时擦汗。</div>
				<div class="procontext"></div>
				</div>
			</div>
		</div>
		</div>
		<div class="pr4">
		<div class="title">Tip4:热身</div>
		<div class="box">
			<div class="pr4_1">
				<div class="proimg">
					<img src="images/resheng.jpg"/>
				</div>
				<div class="protext">
				<div class="protitle">       </div>
				<div class="procontext">一般性热身运动应由轻体力活动组成，时间以
				5-10分钟、达到微微出汗的效果为宜。
				其目的是提高心率和呼吸频率。这将会加快血液流动
				进而有助于氧和营养物质向工作肌的运送。</div>
				<div class="procontext"></div>
				</div>
			</div>
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
