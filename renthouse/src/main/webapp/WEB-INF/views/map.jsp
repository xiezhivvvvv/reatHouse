<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	body, html {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	#allmap{
		width:500px;
		height:600px;
	}
	#r-result,#r-result table{width:100%;}
	</style>
	<script src="static/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&ak=hBCHPXWnY6VsoHBO7x9qD4IWh8swsIqr"></script>
	<title>地图展示</title>
</head>
<body>
	<div id="allmap"></div>
	<input type="button" value="我的位置" id="btnAdd"/>
	<input type="button" value="步行" id="btnRun">
	<div id="r-result"></div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom("广州",15);         // 设置地图显示的城市 此项是必须设置的
/* 	var x =113.300542;
	var y =23.125022; */

	var x =113.30441;
	var y =23.125022;
	var new_point = new BMap.Point(x,y);
	var marker = new BMap.Marker(new_point);  // 创建标注
	map.addOverlay(marker);              // 将标注添加到地图中
	map.panTo(new_point);  
	
	var label = new BMap.Label("晓港公园",{offset:new BMap.Size(20,-10)});
	marker.setLabel(label);
	
	
	$(function(){
		$("#btnAdd").click(function(){
			var geolocation = new BMap.Geolocation();
			geolocation.getCurrentPosition(function(r){
				if(this.getStatus() == BMAP_STATUS_SUCCESS){
					var mk = new BMap.Marker(r.point);
					var label = new BMap.Label("我的位置",{offset:new BMap.Size(20,-10)});
					mk.setLabel(label);
					map.addOverlay(mk);
					map.panTo(r.point);

					//计算两点之间的距离，并画图表示
					// 百度地图API功能
				
					var pointA = new_point;  // 创建点坐标A--大渡口区
					var pointB = r.point; // 创建点坐标B--江北区
					console.log(map.getDistance(pointA,pointB).toFixed(2)+'米。'); //获取两点距离,保留小数点后两位
					var polyline = new BMap.Polyline([pointA,pointB], {strokeColor:"yellow", strokeWeight:8, strokeOpacity:0.5});  //定义折线
					map.addOverlay(polyline);     //添加折线到地图上
				}
				else {
					alert('failed'+this.getStatus());
				}        
			},{enableHighAccuracy: true})
		});
		$(function(){
			$("#btnRun").click(function(){
				// 百度地图API功能
		
				
				var walking = new BMap.WalkingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
				walking.search("中山纪念堂", "晓港公园");
				
			})
			
		})
	})
	

</script>
