<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>CATCHER</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style1.css">
</head>
<body>
  <div class="container-fluid header" id="header">
    <div class="row">
      <div class="col-md-4 logo">
        <span class="title">CATCHER</span>
        <input type="text" placeholder="搜索">
        <span class="glyphicon glyphicon-search search"></span>
      </div>
      <div class="col-md-4 nav" >
            <span><a href="">首页</a></span>
            <span><a href="">动态</a></span>
            <span><a href="">探索</a></span>
            <span><a href="">活动</a></span>
            <span><a href="">榜单</a></span>
            <span><a href="">商店</a></span>
            <span><a href="">关于</a></span>
      </div>
      <div class="col-md-4 login">
        <span><a href="#creat" data-toggle="modal" data-target="#creat">注册</a></span>

        <span><a href="#login" data-toggle="modal" data-target="#login">登录</a></span>
      </div>
    </div>
  </div>


  <!-- photo -->
  <div class="container-fluid" id="view">
    <div class="row">
        <div class="col-md-9 pic" id="pho">
          <div class="watch">
            <img src="images/pictures/${good.gos_id}.jpg" alt="">
          </div>
          <div class="list" >
            <ul>
              <li v-for='pho in urls' v-on:click='border'>
                <img :src='pho.url' >
              </li>
            </ul>
            <span class="left glyphicon glyphicon-menu-left"></span>
            <span class="right glyphicon glyphicon-menu-right"></span>
        </div>
        <!-- 内置jsp or ajax？ -->
          <div class="style">
          <a href='checkGoods.do?gos_id=${good.gos_id-1}'>向左</a>
          <c:forEach items="${good.gos_style}" var="g">
            <span  class="label label-default">${g.sty_name}</span>
            </c:forEach>
            <a href='checkGoods.do?gos_id=${good.gos_id+1}'>向右</a>
          </div>
        </div>



        <div class="col-md-3 text">
          <div class="phter">
            <div class="phterHead"><img src="images/con1.jpg" alt=""></div>
            <div class="phterName">${pho.pho_name}</div>
          </div>
          <div class="clear"></div>
          <div class="phter2">
            <p class="prize">500</p>
          </div>
          <div class="phter3">
            <span class="sp1">类别</span>
            <span class="sp2">风格1</span>
          </div>

          <div class="phter4">
            <div>
              <span class="glyphicon glyphicon-map-marker"></span>
              <span>工作室：</span>
              <span>${pho.pho_studio}</span>
            </div>
            <div>
              <span class="glyphicon glyphicon-earphone"></span>
              <span>手机号：</span>
              <span>${pho.pho_tel}</span>
            </div>
            <div>
              <span class="glyphicon glyphicon-camera"></span>
              <span>评分：</span>
              <span>5.54</span>
            </div>
            <div>
              <span class="glyphicon glyphicon-tags"></span>
              <span>风格：</span>
              <c:forEach items="${pho.pho_style}" var="p">
                  <span>${p.sty_name}</span>
              </c:forEach>
            </div>
          </div>


        <div class="list-group phter5">
              <a href="#" class="list-group-item">
              <h5 class="list-group-item-heading">用户1</h5>
              <p class="list-group-item-text">很好很好</p>
              </a>
              <a href="#" class="list-group-item">
              <h5 class="list-group-item-heading">用户2</h5>
              <p class="list-group-item-text">垃圾垃圾真垃圾</p>
              </a>
              <a href="#" class="list-group-item">
              <h5 class="list-group-item-heading">用户3</h5>
              <p class="list-group-item-text">很好很好！！！！</p>
              </a>

              <button type="button" class="btn btn-primary btn1">换一批评论</button>
                <button type="button" class="btn btn-success btn2" href="#say" data-toggle="modal" data-target="#say">
               			 
                </button>
                <div>
                    <button type="button" class="btn btn-danger btn3">立即预约</button>
                </div>
      </div>


        </div>

    </div>
  </div>


  <!-- contant -->
  <div class="container-fluid " id="choose">
    <div class="row">
      <span>相关照片</span>
    </div>
  </div>

<!-- photo -->
  <div class="container-fluid" id="contant">
    <div class="row">
      <ul>
        <photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg' time='3-15'></photo>
        <photo phter='sdfsdfwei' location='哈尔滨' url='images/con1.jpg' time='3-15'></photo>
        <photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg' time='3-15'></photo>
        <photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg' time='3-15'></photo>
        <photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg' time='3-15'></photo>
        <photo phter='maxuewei' location='哈尔滨' url='images/con1.jpg' time='3-15'></photo>

      </ul>
    </div>
  </div>

  <!-- footer -->
  <div class="container-fluid footer">

      	<ul>
      		<li><div class="glyphicon glyphicon-earphone"></div><p>tel:15764501914</p></li>
      		<li><div class="glyphicon glyphicon-map-marker"></div><p>东北林业大学</p></li>
      		<li><div class="glyphicon glyphicon-envelope"></div><p>shanpao_maxuewei@163.COM</p></li>
      	</ul>


      	<p class="bottom">网络文化经营许可证：sdfsdfsdf ICP:02237472 地址：啦啦啦啦啦啦啦 联系电话：8732497</p>

      </div>



<div class="modal fade" id="say" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog model-sm" role="document">
          <div class="modal-content">

            <div class="modal-body">

              <div class="lging">
                <h2>添加评论</h2>
                      <textarea name="content" rows="8" cols="60" class="form-control"></textarea><br>
                      <button type="button" name="button" class="btn btn-success ">提交</button>


              </div>
            </div>

          </div>
        </div>
      </div>


  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/vue.main.js"></script>
  <script src="js/banner.js"></script>
  <script>
  $(function(){
	  
	  $("#left").click(function(){
		  alert(2);
	  })
  })
  </script>
</body>
</html>
