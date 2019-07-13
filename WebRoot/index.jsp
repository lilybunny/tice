<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	List personDataList = (List) request.getAttribute("personDataList");
	List paimingDataList = (List)request.getAttribute("paimingDataList");
	List gradeDataList =  (List)request.getAttribute("gradeDataList");
	
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
<link rel="stylesheet" href="css/index.css" type="text/css" />
<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<link rel="stylesheet" href="css/table.css" type="text/css"></link>

<link rel="stylesheet" href="css/new.css" type="text/css"></link>
</head>

<body>
	<div class="menu_width">
		<div class="menu">
			<div class="menu_logo">
				<a href="/"></a>
			</div>
			<ul class="menu_list">
				<!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
				<li class="menu_1"><a class="current"
					href="<%=basePath%>ServletQueryPersonData?sid=15002019"><i></i><span>首页</span>
				</a>
				</li>
				<li class="menu_2"><a href="<%=basePath%>ServletCountGrade"><i></i><span>整体数据</span>
				</a>
				</li>
				<li class="menu_3"><a><i></i><span>个人中心</span>
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
						<div class="thisdistrict">欢迎您，${personDataList[0].sno}！</div>
						<div class="districts"></div>
					</div>
					<div class="notes">
						<div class="time">数据更新时间：${personDataList[0].year}</div>
						<div class="unit">点此转换为分数显示</div>
					</div>
				</div>
				<hr class="hr">
				<div class="air_details">
					<div class="aqi">
						<p class="num" id="aqinum">${personDataList[0].height}</p>
						<p class="name">身高</p>
					</div>
					<div class="pm25">
						<p class="num" id="pm25num">${personDataList[0].weight}</p>
						<p class="name">体重</p>
					</div>
					<div class="pm10">
						<p class="num" id="pm10num">${personDataList[0].fhl}</p>
						<p class="name">肺活量</p>
					</div>
					<div class="co">
						<p class="num" id="conum">${personDataList[0].run50}</p>
						<p class="name">50米</p>
					</div>
					<div class="no2">
						<p class="num" id=no2num>${personDataList[0].run1000}</p>
						<p class="name">长跑</p>
					</div>
					<div class="o3">
						<p class="num" id="o3num">${personDataList[0].zwt}</p>
						<p class="name">体前屈</p>
					</div>
					<div class="so2">
						<p class="num" id="so2num">${personDataList[0].ytxs}</p>
						<p class="name">引体向上</p>
					</div>
				</div>
				<div class="content">
					<p>您的体测分数为</p>
					<p>大一：    ${paimingDataList[0].y1}          </p>
					<p>大二：    ${paimingDataList[0].y2}          </p>
					<p>大三：    ${paimingDataList[0].y3}          </p>
					<p>大四：    ${paimingDataList[0].y4}         </p>
					<p>总成绩： ${paimingDataList[0].score}     </p>
					
				</div>
			</div>
		</div>
		<div class="main">
			
				<div class="district_details">
		<div class="predit">
			<div class="predit_title">
	
			2018  体质报告</div>
			<div style="text-align:center">
			<c:if test="${gradeDataList[0].gsrun=='不及格'}">
					<p style="color:grey">该学生的类型为:<c:out value="爆发力不足型"/></p></c:if>
					<c:if test="${gradeDataList[0].gzwt=='不及格'}">
					<p style="color:grey">该学生的类型为:<c:out value="柔韧度不足型"/></p></c:if>
					<c:if test="${gradeDataList[0].gup=='不及格'}">
					<p style="color:grey">该学生的类型为:<c:out value="腰腹力量薄弱型"/></p></c:if>
					<c:if test="${gradeDataList[0].gbmi=='超重'}">
					<p style="color:grey">该学生的类型为:<c:out value="超重型"/></p></c:if>
					<c:if test="${gradeDataList[0].gbmi=='低体重'}">
					<p style="color:grey">该学生的类型为:<c:out value="孱弱型"/></p></c:if>
					<c:if test="${gradeDataList[0].glrun=='不及格'}">
					<p style="color:grey">该学生的类型为:<c:out value="耐力不足型"/></p></c:if>
					<c:if test="${gradeDataList[0].gjump=='不及格'}">
					<p style="color:grey">该学生的类型为:<c:out value="下肢力量薄弱型"/></p></c:if>
			</div>
			<hr>
			<div style="padding-left:120px;position: absolute;">
			<input id="ipt" type="text" placeholder="请选择项目" />
				<ul id="ul"
					style="list-style:none;width:150px;border:1px solid #000;display:none;background-color:#ffffff">
					<li><a>BMI指数</a>
					</li>
					<li><a>肺活量</a>
					</li>
					<li><a>50m短跑</a>
					</li>
					<li><a>800m长跑</a>
					</li>
					<li><a>1000m长跑</a>
					</li>
					<li><a>跳远</a>
					</li>
					<li><a>坐位体前屈</a>
					</li>
					<li><a>仰卧起坐</a>
					</li>
					<li><a>引体向上</a>
					</li>
				</ul>
				<script type="text/javascript">
					var ipt=document.getElementById('ipt');
					var ul=document.getElementById('ul');
					var lis=ul.children;
					ipt.onfocus=function(){
						ul.style.display='block';
					}
					ipt.onblur=function(){
						setTimeout(function(){
							ul.style.display='none';
						},200)
						
					}
		function changePoint(pv){
		if(pv=="正常"){
			$(".grade").css("background-color","#68cb00");
			$(".grade p").html("正常");
		}
		else if(pv=="优秀"){
			$(".grade").css("background-color","#68cb00");
			$(".grade p").html("优秀");
		}
		else if(pv=="低体重"){
			$(".grade").css("background-color","#f6e200");
			$(".grade p").html("低体重");
		}else if(pv=="良好"){
			$(".grade").css("background-color","#f6e200");
			$(".grade p").html("良好");
		}else if(pv=="超重"){
			$(".grade").css("background-color","#fb890f");
			$(".grade p").html("超重");
		}
		else if(pv=="及格"){
			$(".grade").css("background-color","#fb890f");
			$(".grade p").html("及格");
		}
		else if(pv=="肥胖"){
			$(".grade").css("background-color","#df2d00");
			$(".grade p").html("肥胖");
		}
		else if(pv=="不及格"){
			$(".grade").css("background-color","#df2d00");
			$(".grade p").html("不及格");
		}
	}
					var instring;
					var height = ${personDataList[0].height/100};
					var weight= ${personDataList[0].weight};
					//模拟option点击事件
					for(var i=0;i<lis.length;i++){
						lis[i].onclick=function(){
							ipt.value=this.innerText;
							instring=this.innerText;
							document.getElementById("ipt").setAttribute("placeholder",String);
							if(instring=="BMI指数"){
							     var bmi = weight/(height*height);
							     bmi = bmi.toFixed(2);
							     var ins = "成绩：";
							     ins +=bmi;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：22.92(男),21.25(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：人体胖瘦程度以及是否健康";
							     var pv='${gradeDataList[0].gbmi}';
							     changePoint(pv);
							}
							else  if(instring=="肺活量"){
							     var fhl = ${personDataList[0].fhl};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：4186(男),2838(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：呼吸机能的潜在能力";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：5.86%(男),2.07%(女)";
							     var pv='${gradeDataList[0].gfhl}';
							     changePoint(pv);
							}
							else  if(instring=="50m短跑"){
							     var fhl = ${personDataList[0].run50};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：8.14(男),9.87(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：爆发力，肌肉耐力";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：3.85%(男),20.76%(女)";
							     var pv='${gradeDataList[0].gsrun}';
							     changePoint(pv);
							}
								else  if(instring=="800m长跑"){
							     var fhl = ${personDataList[0].run800};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：3.96(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：肌肉耐力，呼吸系统机能";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：13.64%(女)";
							     var pv='${gradeDataList[0].glrun}';
							     changePoint(pv);
							}
							else  if(instring=="1000m长跑"){
							     var fhl = ${personDataList[0].run1000};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：4.13(男)";
							     document.getElementById("tz_power").innerHTML = "相关能力：肌肉耐力，呼吸系统机能";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：26.59%(男)";
							     var pv='${gradeDataList[0].glrun}';
							     changePoint(pv);
							}
							else  if(instring=="跳远"){
							     var fhl = ${personDataList[0].jump};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：216.57(男),164.30(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：下肢力量";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：3.85%(男),20.76%(女)";
							     var pv='${gradeDataList[0].gjump}';
							     changePoint(pv);
							}
							else  if(instring=="坐位体前屈"){
							     var fhl = ${personDataList[0].zwt};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：15.51(男),18.86(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：柔韧性";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：3.33%(男),1.18%(女)";
							     var pv='${gradeDataList[0].gzwt}';
							     changePoint(pv);
							}
							else  if(instring=="仰卧起坐"){
							     var fhl = ${personDataList[0].ywqz};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：30.65(女)";
							     document.getElementById("tz_power").innerHTML = "相关能力：腰腹力量";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：20.63%(女)";
							     var pv='${gradeDataList[0].gup}';
							     changePoint(pv);
							}
							else  if(instring=="引体向上"){
							     var fhl = ${personDataList[0].ytxs};
							     var ins = "成绩：";
							     ins +=fhl;
							     document.getElementById("tz_grade").innerHTML = ins;
							     document.getElementById("tz_avg").innerHTML = "学校均值：5.31(男)";
							     document.getElementById("tz_power").innerHTML = "相关能力：上肢力量";
							     document.getElementById("tz_risk").innerHTML = "挂科风险*：72.71%(男)";
							     var pv='${gradeDataList[0].gup}';
							     changePoint(pv);
							}
							
						}
					}
				  </script>
			</div>
			<div class="predit_content">
				<div class="grade"><p>优</p></div>
				<div class="predit_notes">
					<p id="tz_grade">成绩：--</p><br>
					<p id="tz_avg">人群均值：--</p><br>
					<p id="tz_power">相关能力：--</p><br>
					<p id="tz_risk">挂科风险*：--</p><br>
					
				</div>
			</div>
			<div class="grade_img">
				<img  style="margin-left:150px" src="images/grade.png" class="grade_img"/>
			</div>
			<div class="tips" style="margin-left:330px">
				<p style="font-size:15px;color:red">*挂科风险：表示该项不合格与总成绩不合格相关的概率</p>
			</div>
		</div>
		</div>
		<div class="panel_jiance">
				<p class="pg_title">各项成绩等级</p>
				<div class="pj_area ui-switchable" data-widget-cid="widget-1">
					<table class="table table-striped">
						<thead>
							<tr>
							    <th>体重</th>
								<th>肺活量</th>
								<th>短跑</th>
								<th>长跑</th>
								<th>坐位体前屈</th>
								<th>跳远</th>
								<th>引体向上/仰卧起坐</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${gradeDataList[0].gbmi}</td>
								<td>${gradeDataList[0].gfhl}</td>
								<td>${gradeDataList[0].gsrun}</td>
								<td>${gradeDataList[0].glrun}</td>
								<td>${gradeDataList[0].gzwt}</td>
								<td>${gradeDataList[0].gjump}</td>
								<td>${gradeDataList[0].gup}</td>								
							</tr>
							
							
						</tbody>
					</table>
					
				</div>
		
			
<div class="choose_item">
					<ul>
						<li id="i1">肺活量</li>
						<li id="i2">短跑(50m)</li>
						<li id="i3">跳远</li>
						<li id="i4">坐位体前屈</li>
						<li id="i5">长跑(800m/1000m)</li>
						<li id="i6">仰卧起坐/引体向上</li>
					</ul>
				</div>
				<div class="items">
					<div class="item">
						<table>
							<tr><td width="70px">项目名称</td><td class="iname">肺活量</td></tr>
							<tr><td width="70px">测定意义</td><td class="imeaning">肺活量是一次呼吸的最大通气量，在一定意义上可反映呼吸机能的潜在能力</td></tr>
							<tr><td width="70px">不及格率</td><td class="ipercent">5.86%</td></tr>
							<tr><td width="70px">反映问题</td><td class="iproblem">肺活量检测数值低（与正常数值相比），说明机体摄氧能力和排出废气的能力差，人体内部的氧供应就不充裕，机体的一些工作就不能正常。一旦机体需要大量消耗氧的情况（如长时间学习、工作、剧烈运动时）就会出现氧供应的严重不足，从而导致诸如头痛、头晕、胸闷、精神萎靡、注意力不集中、记忆力下降、失眠等不良反映，这不仅仅会影响了学习与工作，而且会给身体健康造成许多无法挽回的损失。</td></tr>
							<tr><td width="70px">提高建议</td><td class="iadvice">体育锻炼可以明显提高肺活量，譬如可以经常性的做一些扩胸、振臂等徒手操练习，坚持耐久跑、游泳、踢足球、打篮球、折返跑等，像中长跑运动员和游泳运动员的肺活量可达6000毫升以上。</td></tr>
						</table>
					</div>
				</div>
	<script type="text/javascript">
		$(function changeitem() {
        $('.choose_item li').click(function () {
            if(this.id=="i1"){
            	$(".item").css("background-image","url(./images/w1.png)").css("background-size","100% 100%");
     			$(".iname").html("肺活量");
     			$(".imeaning").html("肺活量是一次呼吸的最大通气量，在一定意义上可反映呼吸机能的潜在能力");
     			$(".ipercent").html("5.86%");
     			$(".iproblem").html("肺活量检测数值低（与正常数值相比），说明机体摄氧能力和排出废气的能力差，人体内部的氧供应就不充裕，机体的一些工作就不能正常。一旦机体需要大量消耗氧的情况（如长时间学习、工作、剧烈运动时）就会出现氧供应的严重不足，从而导致诸如头痛、头晕、胸闷、精神萎靡、注意力不集中、记忆力下降、失眠等不良反映，这不仅仅会影响了学习与工作，而且会给身体健康造成许多无法挽回的损失。");
     			$(".iadvice").html("体育锻炼可以明显提高肺活量，譬如可以经常性的做一些扩胸、振臂等徒手操练习，坚持耐久跑、游泳、踢足球、打篮球、折返跑等，像中长跑运动员和游泳运动员的肺活量可达6000毫升以上。");
            }else if(this.id=="i2"){
            	$(".item").css("background-image","url(./images/w2.png)").css("background-size","100% 100%");
     			$(".iname").html("短跑");
     			$(".imeaning").html("短跑是人体运动器官和内脏器官在大量缺氧的条件下完成最大强度的工作，属于极限强度的运动，能有效地发展速度素质");
     			$(".ipercent").html("3.85%");
     			$(".iproblem").html("短跑慢说明腿部肌肉的耐力和爆发力较弱,反应力与灵活性较差，呼吸方式和频率需要调整");
     			$(".iadvice").html("1.速度训练；准备活动、拉长活动、协调联系、冲刺跑。<br>2.耐力训练；先做准备活动，然后慢跑，注意呼吸均匀、步伐均匀，稳住速度，重心略微前倾，期间不能停。<br>3.力量训练；悬垂举腿、仰卧起坐提升肌肉力量素质<br>4.协调训练；利用残存部分的感觉、听觉、视觉、触觉等来促进随意运动的控制能力");
     		}else if(this.id=="i3"){
            	$(".item").css("background-image","url(./images/w3.png)").css("background-size","100% 100%");
     			$(".iname").html("立定跳远");
     			$(".imeaning").html("立定跳远是发展下肢爆发力与弹跳力的运动项目。它要求下肢与髋部肌肉协调快速用力，并与上肢的摆动相配合，所以它也需要一定的灵巧性。");
     			$(".ipercent").html("27.07%");
     			$(".iproblem").html("立定跳远用的就是腿部和腹部肌肉的力量，如果长期缺乏运动，身体不灵活，腿部筋拉伸也不够，力量也不行，立定跳远是跳不远的。立定跳远会摔倒最主要的原因就是重心太靠后，由于距离的测定是按照脚跟的距离来测定，那么测试者会过分关注脚跟，尽可能的将脚跟前送，而上半身留在了后面");
     			$(".iadvice").html("要提高立定跳远成绩，力量是基础，特别要提高膝、踝、髋三个关节的协调用力及爆发用力的能力。你还需要注意两点，首先是注意摆臂，一定要直臂，大幅度摆动，这能给你带来更大的提拉。第二点就是注意能量转化，屈膝下蹲的动作是势能转化为动能，为你增加初速度，增加距离。");
     		}else if(this.id=="i4"){
            	$(".item").css("background-image","url(./images/b3.png)").css("background-size","100% 100%");
     			$(".iname").html("坐位体前屈");
     			$(".imeaning").html("是测量在静止状态下的躯干、腰、髋等关节可能达到的活动幅度主要反映这些部位的关节、韧带和肌肉的伸展性和弹性及身体柔韧素质的发展水平");
     			$(".ipercent").html("3.33%");
     			$(".iproblem").html("一个人的柔韧性程度越好，表示其关节的活动幅度越大，关节灵活性越强。柔韧素质与健康的关系极为密切，柔韧性的提高，对增强身体的协调能力，更好地发挥力量、速度等素质，提高技能和技术，防止运动创伤等都有积极的作用。");
     			$(".iadvice").html("在锻炼柔韧性练习的时候一定要注意做准备活动，不要急于求成，练得过快、幅度过大过猛。尤其在冬季锻炼必须充分做好准备活动。其锻炼前不热身，则容易引起肌肉、韧带拉伤或扭伤。坐位体前屈成绩的提高不是一时可以完成的，它需要我们循序渐进，从易到难，持之以恒，逐步来提高。");
     		}else if(this.id=="i5"){
            	$(".item").css("background-image","url(./images/b2.png)").css("background-size","100% 100%");
     			$(".iname").html("长跑");
     			$(".imeaning").html("提高呼吸系统和心血管系统机能，有利于防病治病 健身长跑使血液循环加快及保持心情舒畅");
     			$(".ipercent").html("26.59%");
     			$(".iproblem").html("中长跑运动是一个需要速度和耐力的综合性项目，中长跑运动是成绩的好坏其一来自于队员的先天素质，良好的体型和内脏功能是一个运动员出成绩的基础。其二，后天的专项训练是其运动成绩提高的手段。当一员优秀的运动员具有很好的身体优势，但当他的运动成绩到了一定的阶段时就会出现停滞不前，这时就需要先进的手段来提高运动成绩。");
     			$(".iadvice").html("中长跑的动作要注意向前运动的效果，身体重心不要下降过大，两腿、两臂动作自然放松省力，两腿落地要柔和并有弹性。中长跑采用的训练方法有重复训练法、间歇训练法、快慢交替训练法以及山坡跑、沙滩跑、高原训练等。");
           }else{
           		$(".item").css("background-image","url(./images/b1.png)").css("background-size","100% 100%");
     			$(".iname").html("仰卧起坐/引体向上");
     			$(".imeaning").html("仰卧起坐主要测试腹部肌肉的耐力<br>引体向上测试上肢肌肉力量的发展水平，以及臂力和腰腹力量");
     			$(".ipercent").html("72.71%");
     			$(".iproblem").html("仰卧起坐差说明用力姿势方法不对、腰腹力量不足、腰部赘肉太多<br>引体向上差说明相对力量不足、发力不正确、只是凭借自己的手臂去发力，核心未收紧");
     			$(".iadvice").html("仰卧起坐需要掌握正确的的姿势，提升腹部力量、学会循序渐进、适当将上半身提高，弯曲并让同伴压腿<br>标准引体向上对手臂力量的要求较高，没有太多技巧。借力引体向上的技巧性较强，对手臂力量的要求相对较弱。此处主要介绍借力引体向上的技巧：保持身体挺直而稳定；肘部和肩部应是全身主要运动的部位，动作尽量连贯");
           }
        })
    })
    </script>
	</div>
	<div class="panel_jiance">
				<p class="pg_title">历史体测数据</p>
				<div class="pj_area ui-switchable" data-widget-cid="widget-1">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>年份</th>
								<th>身高</th>
								<th>体重</th>
								<th>肺活量</th>
								<th>跳远</th>
								<th>50M</th>
								<th>800M</th>
								<th>体前屈</th>
								<th>仰卧起坐</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${personDataList[0].year}</td>
								<td>${personDataList[0].height}</td>
								<td>${personDataList[0].weight}</td>
								<td>${personDataList[0].fhl}</td>
								<td>${personDataList[0].jump}</td>
								<td>${personDataList[0].run50}</td>
								<td>${personDataList[0].run800}</td>
								<td>${personDataList[0].zwt}</td>
								<td>${personDataList[0].ywqz}</td>
							</tr>
							<tr>
								<td>${personDataList[1].year}</td>
								<td>${personDataList[1].height}</td>
								<td>${personDataList[1].weight}</td>
								<td>${personDataList[1].fhl}</td>
								<td>${personDataList[1].jump}</td>
								<td>${personDataList[1].run50}</td>
								<td>${personDataList[1].run800}</td>
								<td>${personDataList[1].zwt}</td>
								<td>${personDataList[1].ywqz}</td>
							</tr>
							<tr>
								<td>${personDataList[2].year}</td>
								<td>${personDataList[2].height}</td>
								<td>${personDataList[2].weight}</td>
								<td>${personDataList[2].fhl}</td>
								<td>${personDataList[2].jump}</td>
								<td>${personDataList[2].run50}</td>
								<td>${personDataList[2].run800}</td>
								<td>${personDataList[2].zwt}</td>
								<td>${personDataList[2].ywqz}</td>
							</tr>
							<tr>
								<td>${personDataList[3].year}</td>
								<td>${personDataList[3].height}</td>
								<td>${personDataList[3].weight}</td>
								<td>${personDataList[3].fhl}</td>
								<td>${personDataList[3].jump}</td>
								<td>${personDataList[3].run50}</td>
								<td>${personDataList[3].run800}</td>
								<td>${personDataList[3].zwt}</td>
								<td>${personDataList[3].ywqz}</td>
							</tr>
						</tbody>
					</table>
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
							<a href="<%=basePath%>ServletQueryPersonData?sid=16046024">个人体测数据</a><br> <a href="wholedata.jsp">整体数据趋势</a><br>
							<a href="fanghu.jsp">国家体质测试标准</a><br>
						</dd>
					</dl>
					<dl class="footer_left_item2">
						<dt>相关资讯</dt>
						<dd>
							<a href="wholedata.jsp"
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
