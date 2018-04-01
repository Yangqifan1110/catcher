<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>CATCHER</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/banner.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
	<div class="container-fluid header" id="header">
		<div class="row">
			<div class="col-md-4 logo">
				<span class="title">CATCHER</span> <input type="text"
					placeholder="搜索"> <span
					class="glyphicon glyphicon-search search"></span>
			</div>
			<div class="col-md-4 nav">
				<span><a href="">首页</a></span> <span><a href="">动态</a></span> <span><a
					href="">探索</a></span> <span><a href="">活动</a></span> <span><a
					href="">榜单</a></span> <span><a href="">商店</a></span> <span><a
					href="">关于</a></span>
			</div>
			<div class="col-md-4 login">
				<span><a href="#creat" data-toggle="modal"
					data-target="#creat">注册</a></span> <span><a href="#login"
					data-toggle="modal" data-target="#login">登录</a></span>
			</div>
		</div>
	</div>






	<!-- banner begain -->

	<div class="carousel-wrap" id="carousel">
		<transition-group tag="ul" class='slide-ul' name="list">
		<li v-for="(list,index) in slideList" :key="index"
			v-show="index===currentIndex" @mouseenter="stop" @mouseleave="go">
			<img :src="list.image">
			<p class="p1">{{list.p1}}</p>
			<p class="p2">{{list.p2}}</p>
			<p class="p3">{{list.p3}}</p>

		</li>
		</transition-group>
		<div class="carousel-items">
			<span v-for="(item,index) in slideList.length"
				:class="{'active':index===currentIndex}" @mouseover="change(index)"></span>
		</div>
	</div>
	<!-- banner end -->


	<!-- contant -->
	<div class="container-fluid " id="choose">
		<div class="row">
			<span>热门推荐</span><span>热门推荐</span><span>热门推荐</span><span>热门推荐</span>
		</div>
		<div class="row">
			<span>热门推荐</span><span>热门推荐</span><span>热门推荐</span><span>热门推荐</span><span>热门推荐</span>
		</div>
	</div>

	<!-- photo -->
	<div class="container-fluid" id="contant">
		<div class="row">
			<ul>
				<a href='check.do?gos_id=1'><photo id="photo1" phter='maxuewei' location='哈尔滨' url='images/pictures/1.jpg'
					time='3-15' @click.native='check'></photo></a>
				<a href='check.do?gos_id=2'><photo phter='sdfsdfwei' location='哈尔滨' url='images/pictures/2.jpg'
					time='3-15' @click.native='check'></photo></a>
				<a href='check.do?gos_id=3'><photo phter='maxuewei' location='哈尔滨' url='images/pictures/3.jpg'
					time='3-15' @click.native='check'></photo></a>
				<photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg'
					time='3-15'></photo>
				<photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg'
					time='3-15'></photo>
				<photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg'
					time='3-15'></photo>

			</ul>
		</div>
	</div>



	<!-- footer -->
	<div class="container-fluid footer">

		<ul>
			<li><div class="glyphicon glyphicon-earphone"></div>
				<p>tel:15764501914</p></li>
			<li><div class="glyphicon glyphicon-map-marker"></div>
				<p>东北林业大学</p></li>
			<li><div class="glyphicon glyphicon-envelope"></div>
				<p>shanpao_maxuewei@163.COM</p></li>
		</ul>


		<p class="bottom">网络文化经营许可证：sdfsdfsdf ICP:02237472 地址：啦啦啦啦啦啦啦
			联系电话：8732497</p>

	</div>


	<!-- creat -->
	<div class="modal fade" id="creat" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog model-sm" role="document">
			<div class="modal-content">

				<div class="modal-body">
					<div class="container-fluid">
						<div class="row creatCon">
							<h3>欢迎加入CATCHER</h3>
							<h4>立即注册，开启约拍之旅</h4>
							<div class="view">
								<div class="who">
									<button type="button" class="btn btn-primary btn-lg">我是约拍者</button>
									<button type="button" class="btn btn-default btn-lg">我是摄影师</button>
								</div>
								<input type="text" name="res_username" placeholder="用户名"
									class="form-control">
								<p>等待验证</p>
								<input type="password" name="res_password" placeholder="密码"
									class="form-control">
								<p>等待验证</p>
								<input type="password" placeholder="重复密码" class="form-control">
								<p>等待验证</p>
								<input type="text" name="name" placeholder="真实姓名"
									class="form-control">
								<p>等待验证</p>
								<input type="text" name="tel" placeholder="手机号"
									class="form-control">
								<p>等待验证</p>
								<div class="location">
									<select class="form-control">
										<option>黑龙江</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select> <select class="form-control">
										<option>哈尔滨</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select> <select class="form-control">
										<option>香坊区</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="isModel"
										name="isModel" value="0"> 申请成为模特
									</label>
								</div>
								<button type="button" id="btn_register"
									class="btn btn-success btn-lg">接受协议并注册</button>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>


	<!-- login -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog model-sm" role="document">
			<div class="modal-content">

				<div class="modal-body">

					<div class="lging">
						<h2>登陆</h2>
						<div class="who">
							<button type="button" class="btn btn-primary btn-lg">我是约拍者</button>
							<button type="button" class="btn btn-default btn-lg">我是摄影师</button>
						</div>
						<div class="go">
							<input type="text" id="log_username" name="log_username"
								placeholder="用户名" class="form-control"> <input
								type="password" id="log_password" name="log_password"
								placeholder="密码" class="form-control">
							<button type="button" id="btn_login"
								class="btn btn-success btn-lg">登陆</button>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vue.main.js"></script>
	<script src="js/banner.js"></script>

	<!-- 注册验证 -->
	<script>
		var crt = document.getElementById('creat')
		var oIn = crt.getElementsByTagName('input')
		var oP = crt.getElementsByTagName('p')

		var user = /^[a-zA-Z][a-zA-Z0-9_-]{3,15}$/; //用户名
		var pswd = /^(?![^a-zA-Z]+$)(?!\D+$)/;//密码
		var namee = /^[\u4E00-\u9FA5A-Za-z]+$/;//姓名
		var phone = /[0-9]{11,11}/;
		
//		var picName = /^(/picture/)(.jpg)$/

		oIn[0].onblur = function() {
			if (oIn[0].value == '') {
				oP[0].innerHTML = "等待验证";
				oP[0].className = "";
			} else {
				if (user.test(oIn[0].value)) {
					oP[0].innerHTML = "通过√";
					oP[0].className = "ok";
				} else {
					oP[0].innerHTML = "用户名4-16位字母或数字，首位为字母";
					oP[0].className = "no";
				}
			}
		}

		oIn[1].onblur = function() {
			if (oIn[1].value == '') {
				oP[1].innerHTML = "等待验证";
				oP[1].className = "";
			} else {
				if (pswd.test(oIn[1].value) && oIn[1].value.length >= 8) {
					oP[1].innerHTML = "通过√";
					oP[1].className = "ok";
				} else {
					oP[1].innerHTML = "密码大于8位，必须有字母和数字";
					oP[1].className = "no";
				}
			}
		}

		oIn[2].onblur = function() {
			if (oIn[2].value == '') {
				oP[2].innerHTML = "等待验证";
				oP[2].className = "";
			} else {
				if (oIn[2].value == oIn[1].value) {
					oP[2].innerHTML = "通过√";
					oP[2].className = "ok";
				} else {
					oP[2].innerHTML = "请重复输入密码";
					oP[2].className = "no";
				}
			}
		}

		oIn[3].onblur = function() {
			if (oIn[3].value == '') {
				oP[3].innerHTML = "等待验证";
				oP[3].className = "";
			} else {
				if (namee.test(oIn[3].value)) {
					oP[3].innerHTML = "通过√";
					oP[3].className = "ok";
				} else {
					oP[3].innerHTML = "请输入真实姓名";
					oP[3].className = "no";
				}
			}
		}

		oIn[4].onblur = function() {
			if (oIn[4].value == '') {
				oP[4].innerHTML = "等待验证";
				oP[4].className = "";
			} else {
				if (phone.test(oIn[4].value)) {
					oP[4].innerHTML = "通过√";
					oP[4].className = "ok";
				} else {
					oP[4].innerHTML = "请输入正确手机号";
					oP[4].className = "no";
				}
			}
		}
		
		$(function() {
			alert(1); 
			//会话中有“user”时不执行自动登录
//			if("${user}"==null)
//				alert(0);
//			else
//				alert(1);
			
			//自动登录，右上角显示用户姓名
			$.getJSON("autoLogin.do", {}, function(user) {
				alert("自动登录成功！");
				alert(user.cus_name+",您好！");
			})

			$("#btn_register").click(function() {
				$.getJSON("cusRegister.do", {
					username : oIn[0].value,
					password : oIn[1].value,
					name : oIn[3].value,
					tel : oIn[4].value
				}, function(user) {
					alert("注册成功！");
					alert(user.cus_name+",您好！");
				})
			})
			
			//登录，右上角显示用户姓名
			$("#btn_login").click(function(){
				alert("登录成功！");
				$.getJSON("login.do",{username:$("#log_username").val(),password:$("#log_password").val()},function(user){
					alert(user.cus_name+",您好！");
				})
			})
							
		})
	</script>
</body>
</html>
