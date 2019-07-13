<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%List deptGrade = (List) request.getAttribute("deptGrade");
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>整体数据分析</title>
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
<link rel="stylesheet" href="css/graph.css" type="text/css"></link>
<link rel="stylesheet" href="css/table.css" type="text/css"></link>
<link rel="stylesheet" href="css/new.css" type="text/css"></link>
  <script type="text/javascript" src="js/echarts.js"></script>
  <script type="text/javascript" src="js/china.js"></script>
  <script type="text/javascript" src="js/jquery.min.js">
  </script></head>
  
  <body>
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
              <ul class="menu_list">
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                    <li class="menu_1"><a href="<%=basePath%>ServletQueryPersonData?sid=15023052"><i></i><span>首页</span></a></li>
                    <li class="menu_2"><a class="current"  href="<%=basePath%>ServletCountGrade"><i></i><span>整体数据</span></a></li>
                    <li class="menu_3"><a href="my.jsp"><i></i><span>个人中心</span></a></li>
                    <li class="menu_4"><a href="fanghu.jsp"><i></i><span>体质健康</span></a></li>
                    <li class="menu_5"><a href="aboutUs.jsp"><i></i><span>关于我们</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
  </div>
  
  <div class="main_width">
<div class="main">
	
               			<div class="panel_graph ui-switchable" data-widget-cid="widget-2">
				<p class="pg_title">数据统计与分析</p>
				<div class="pg_area ui-switchable-content">
					<div style="height:358px" class="pg_content">
						<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g2"></div>
							<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g4">
							<table class="table table-striped" style="margin-top:50px">
						<thead>
							<tr>
								<th>成绩</th>
								<th>男</th>
								<th>女</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>优秀</td>
								<td>0.16%</td>
								<td>0.08%</td>
							<tr>
								<td>良好</td>
								<td>4.35%</td>
								<td>8.93%</td>
							</tr>
							<tr>
								<td>及格</td>
								<td>74.48%</td>
								<td>81.89%</td>
							</tr>
								<tr>
								<td>不及格</td>
								<td>21.25%</td>
								<td>9.11%</td>
							</tr>
						</tbody>
					</table>
							</div>
					</div>
					<div class="pg_area ui-switchable-content">

					<div style="height:560px;" class="pg_content">
						<div style="width:960px;height:550px;margin-left:10px;" id="g3"></div>
					</div>
				</div>
					
				</div>
			</div>
			<div class="panel_graph ui-switchable" data-widget-cid="widget-2">
				<p class="pg_title">单项成绩报告</p>
				<div class="pg_area ui-switchable-content">
					<div style="height:358px" class="pg_content">
							<div
							style="width:960px;margin-left:10px;"
							id="g8">
														<table class="table table-striped" style="margin-top:20px">
						<thead>
							<tr>
								<th>(男生)</th>
								<th>身高</th>
								<th>体重</th>
								<th>肺活量</th>
								<th>短跑</th>
								<th>长跑</th>
								<th>跳远</th>
								<th>体前屈</th>
								<th>引体向上</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>平均值</td>
								<td>172.43</td>
								<td>68.16</td>
								<td>4185.97</td>
								<td>8.14</td>
								<td>4.13</td>
								<td>216.57</td>
								<td>15.51</td>
								<td>5.31</td>
							<tr>
								<td>最大值</td>
								<td>196.00</td>
								<td>162.60</td>
								<td>9110.00</td>
								<td>6.10</td>
								<td>3.00</td>
								<td>298.00</td>
								<td>37.5</td>
								<td>32</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table table-striped" style="margin-top:30px">
						<thead>
							<tr>
								<th>(女生)</th>
								<th>身高</th>
								<th>体重</th>
								<th>肺活量</th>
								<th>短跑</th>
								<th>长跑</th>
								<th>跳远</th>
								<th>体前屈</th>
								<th>仰卧起坐</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>平均值</td>
								<td>160.53</td>
								<td>54.77</td>
								<td>2837.59</td>
								<td>9.87</td>
								<td>3.96</td>
								<td>164.30</td>
								<td>18.86</td>
								<td>30.65</td>
							<tr>
								<td>最大值</td>
								<td>186.00</td>
								<td>115.30</td>
								<td>5606.00</td>
								<td>5.30</td>
								<td>2.12</td>
								<td>258.00</td>
								<td>37.00</td>
								<td>60.00</td>
							</tr>
						</tbody>
					</table>
							
							</div>
					</div>
					<div class="panel_graph ui-switchable" data-widget-cid="widget-2">
			<p class="pg_title">不同生源地体质比较</p>
				<div class="pg_area ui-switchable-content">
					<div style="height:358px" class="pg_content">
						<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g5"></div>
							<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g6">
							
							</div>
					</div>
					</div>
					
				</div>
				
				<div class="panel_graph ui-switchable" data-widget-cid="widget-2">
			<p class="pg_title">大学四年体质变化</p>
				<div class="pg_area ui-switchable-content">
					<div style="height:358px" class="pg_content">
						<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g9"></div>
							<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g10">
								<table class="table table-striped" style="margin-top:50px">
						<thead>
							<tr>
								<th>年份</th>
								<th>男</th>
								<th>女</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2015</td>
								<td>66.13</td>
								<td>72.79</td>
							<tr>
								<td>2016</td>
								<td>65.31</td>
								<td>72.47</td>
							</tr>
							<tr>
								<td>2017</td>
								<td>59.90</td>
								<td>68.11</td>
							</tr>
								<tr>
								<td>2018</td>
								<td>59.11</td>
								<td>67.25</td>
							</tr>
						</tbody>
					</table>
							
							</div>
					</div>
					</div>
					
				</div>
			</div>
              <div class="clear"></div>
            </div>
        </div>
         <div class="footer_width">
		<div class="footer">
			<div class="footer_left">
				<div class="footer_left_links">
					<dl class="footer_left_item1">
						<dt>快捷导航</dt>
						<dd>
							<a href="<%=basePath%>ServletQueryPersonData?sid=15002019">个人体测数据</a><br> <a href="wholedata.jsp">整体数据趋势</a><br>
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
		<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('g2'));
         var option={
                title : {
                text: '2018年总体数据',
                x:'center'
                },
                 tooltip : {
                 trigger: 'item',
                 formatter: "{a} <br/>{b} : {c} ({d}%)"
                  },
                   legend: {
                   orient : 'vertical',
                   x : 'left',
                  data:['优秀','良好','及格','不及格']
                 },
                 color:['#68cb00', '#f6e200','#fb890f','#df2d00'],
                 toolbox: {
                    show : true,
                    feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    
                  restore : {show: true},
                  saveAsImage : {show: true}
                 }
              },
              calculable : true,
              series : [
                   {
                      name:'人数',
                      type:'pie',
                      radius : '55%',
                      center: ['50%', '60%'],
                      data:[
                              {value:25, name:'优秀'},
                              {value:759, name:'良好'},
                              {value:7615, name:'及格'},
                              {value:1303, name:'不及格'},

                            ]
                      }
                 ]
                
         };
           myChart.setOption(option);
    </script>
    
    	<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('g3'));

    var arr = new Array();
    var you =new Array();
    var liang =new Array();
    var jige = new Array();
    var fail =new Array();
    var index=0;
   
    <c:forEach items="${deptGrade}" var="datas">
               var i = index++;
               arr[i] = ${datas.gscore};
              if(arr[i]>=90){
               you.push([
                    '${datas.dname}',${datas.gscore}
                ]);
               }
             else if(arr[i]>=80&&arr[i]<90){
              liang.push([
                    '${datas.dname}',${datas.gscore}
                ]);
               }
              else if(arr[i]>=60&&arr[i]<80) {
               jige.push([
                   '${datas.dname}',${datas.gscore}
                ]);
               }
              else {
               fail.push([
                    '${datas.dname}',${datas.gscore}
                ]);
               }
         </c:forEach>
         
         var option={
                title : {
                text: '体测成绩院系分布',
                },
                 tooltip : {
                    trigger: 'axis',
                  },
                  
                   legend: {
                  data:['优秀','良好','及格','不及格']
                 },
                 color:['#68cb00', '#f6e200','#fb890f','#df2d00'],
                 toolbox: {
                          show : true,
                          feature : {
                          mark : {show: true},
                          dataZoom : {show: true},
                          dataView : {show: true, readOnly: false},
                          restore : {show: true},
                          saveAsImage : {show: true}
                        }
                 },
                  xAxis : [
                        {
                      type : 'category',
                      scale:true,
                      data: ['藏学研究院','朝鲜语言文学系', '法学院','管理学院','哈萨克语言文学系', '教育学院','经济学院','理学院', '历史文化学院','马克思主义学院',
                      '美术学院','蒙古语言文学系','民族学与社会学学院','少数民族语言文学系','生命与环境科学学院','外国语学院','维吾尔语言文学系','文学与新闻传播学院',
                      '舞蹈学院','信息工程学院'],
                       axisLabel : {
                        interval:0,
                                           rotate:40
                    }
                     }
                   
                  ],
                  yAxis : [
                     {            
                     type : 'value',
                     scale:true,
                     axisLabel : {
                           formatter: '{value}'
                    }
                    }
                 ],
                 series:[
                     {
                        name:'优秀',
                        type:'scatter',
                        data:you,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'良好',
                        type:'scatter',
                        data:liang,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'及格',
                        type:'scatter',
                        data:jige,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'不及格',
                        type:'scatter',
                        data:fail,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     }
                     
                 ]
                
         };
           myChart.setOption(option);
    </script>
    
    <script type="text/javascript">
         // 基于准备好的dom，初始化echarts实例
        var myChart1 = echarts.init(document.getElementById('g5'));
		option1 = {
		    title : {
		        text: '',
		        subtext: '身高',
		        left: 'center'
		    },
		    tooltip : {
		        trigger: 'item'
		    },
		    legend: {
		        orient: 'vertical',
		        left: 'left',
		        data:['身高']
		    },
		    visualMap: {
		        min: 172,
		        max: 172.2,
		        left: 'left',
		        top: 'bottom',
		        text:['高','低'],           // 文本，默认为数值文本
		        calculable : true
		    },
		    toolbox: {
		        show: true,
		        orient : 'vertical',
		        left: 'right',
		        top: 'center',
		        feature : {
		            mark : {show: true},
		            dataView : {show: true, readOnly: false},
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
		    series : [
		        {
		            name: '身高',
		            type: 'map',
		            mapType: 'china',
		            roam: false,
		            label: {
		                normal: {
		                    show: false
		                },
		                emphasis: {
		                    show: true
		                }
		            },
		            data:[
             		    {name: '北京',value: 172.148},
		                {name: '天津',value: 172.078},
		                {name: '河北',value: 172.138},
		                {name: '山西',value: 172.106},
		                {name: '内蒙古',value: 172.151},
		                {name: '辽宁',value: 172.121},
		                {name: '吉林',value: 172.153 },
		                {name: '黑龙江',value: 172.133},
		                {name: '上海',value: 172.012},
		                {name: '江苏',value: 172.136},
		                {name: '浙江',value: 172.081},
		                {name: '安徽',value: 172.134},
		                {name: '福建',value: 172.126},
		                {name: '江西',value: 172.089},
		                {name: '山东',value: 172.153},
		                {name: '河南',value: 172.122},
		                {name: '湖北',value: 172.148},
		                {name: '湖南',value: 172.114},
		                {name: '广东',value: 172.107},
		                {name: '广西',value: 172.110},
		                {name: '海南',value: 172.113},
		                {name: '重庆',value: 172.110},
		                {name: '四川',value: 172.070},
		                {name: '贵州',value: 172.104},
		                {name: '云南',value: 172.109},
		                {name: '西藏',value: 171.991},
		                {name: '陕西',value: 172.111},
		                {name: '甘肃',value: 172.113},
		                {name: '青海',value: 172.112},
		                {name: '宁夏',value: 172.098},
		                {name: '新疆',value: 172.102},
		                {name: '台湾',value: 0},
		                {name: '香港',value: 0},
		                {name: '澳门',value: 0}
		            ]
		        },
		    ]
		};
        // 使用刚指定的配置项和数据显示图表。
        myChart1.setOption(option1);
    </script>
    
    <script type="text/javascript">
         // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('g6'));
		option2 = {
		    title : {
		        text: '',
		        subtext: '肺活量',
		        left: 'center'
		    },
		    tooltip : {
		        trigger: 'item'
		    },
		    legend: {
		        orient: 'vertical',
		        left: 'left',
		        data:['肺活量']
		    },
		    visualMap: {
		        min: 4150,
		        max: 4200,
		        left: 'left',
		        top: 'bottom',
		        text:['高','低'],           // 文本，默认为数值文本
		        calculable : true
		    },
		    toolbox: {
		        show: true,
		        orient : 'vertical',
		        left: 'right',
		        top: 'center',
		        feature : {
		            mark : {show: true},
		            dataView : {show: true, readOnly: false},
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
		    series : [
		        {
		            name: '肺活量',
		            type: 'map',
		            mapType: 'china',
		            roam: false,
		            label: {
		                normal: {
		                    show: false
		                },
		                emphasis: {
		                    show: true
		                }
		            },
		            data:[
		                {name: '北京',value: 4166},
		                {name: '天津',value: 4167},
		                {name: '河北',value: 4166},
		                {name: '山西',value: 4165},
		                {name: '内蒙古',value: 4166},
		                {name: '辽宁',value:  4168},
		                {name: '吉林',value: 4167},
		                {name: '黑龙江',value: 4169},
		                {name: '上海',value: 4179},
		                {name: '江苏',value: 4167},
		                {name: '浙江',value: 4171},
		                {name: '安徽',value: 4167},
		                {name: '福建',value: 4170},
		                {name: '江西',value: 4168},
		                {name: '山东',value: 4165},
		                {name: '河南',value: 4168},
		                {name: '湖北',value: 4166},
		                {name: '湖南',value: 4169},
		                {name: '广东',value: 4171},
		                {name: '广西',value: 4168},
		                {name: '海南',value: 4169},
		                {name: '重庆',value: 4168},
		                {name: '四川',value: 4171},
		                {name: '贵州',value: 4170},
		                {name: '云南',value: 4170},
		                {name: '西藏',value: 4197},
		                {name: '陕西',value: 4170},
		                {name: '甘肃',value: 4168},
		                {name: '青海',value: 4170},
		                {name: '宁夏',value: 4171},
		                {name: '新疆',value: 4168},
		                {name: '台湾',value: 0},
		                {name: '香港',value: 0},
		                {name: '澳门',value: 0}
		            ]
		        },
		    ]
		};
        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option2);
    </script>
    
     <script type="text/javascript">
         var myChart = echarts.init(document.getElementById('g9'));
         option = {
		    title: {
		        text: '2015级'
		    },
		    tooltip: {
		        trigger: 'axis'
		    },
		    legend: {
		        data:['男生','女生']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    toolbox: {
		        feature : {
		            mark : {show: true},
		            dataView : {show: true, readOnly: false},
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        data: ['大一','大二','大三','大四']
		    },
		    yAxis: {
		       type: 'value'
		    },
		    series: [
		        {
		            name:'男生',
		            type:'line',
		            stack: '总量',
		            data:[66.13250000000008, 65.30565789473687, 59.89960526315794, 59.10657894736841]
		        },
		        {
		            name:'女生',
		            type:'line',
		            stack: '总量',
		            data:[72.78627450980406, 72.46935574229695, 68.1129971988795, 67.25036414565831]
		        }
		        
		    ]
		};
        myChart.setOption(option);
     </script>
    
    
   
</body>
</html>
