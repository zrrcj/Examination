<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="<%=application.getContextPath() %>/assets/js/main.css" type="text/css" media="screen, projection" /> <!-- main stylesheet -->
<link rel="stylesheet" type="text/css" media="all" href="<%=application.getContextPath() %>/assets/js/tipsy.css" /> <!-- Tipsy implementation -->

<script type="text/javascript" src="<%=application.getContextPath() %>/assets/js/jquery-1.7.2.min.js"></script> <!-- uiToTop implementation -->
<script type="text/javascript" src="<%=application.getContextPath() %>/assets/js/custom-scripts.js"></script>
<script type="text/javascript" src="<%=application.getContextPath() %>/assets/js/jquery.tipsy.js"></script> <!-- Tipsy -->

<script type="text/javascript">

$(document).ready(function(){
			
	universalPreloader();
						   
});

$(window).load(function(){
	universalPreloaderRemove();
	
	rotate();
    dogRun();
	dogTalk();
	
	//Tipsy implementation
	$('.with-tooltip').tipsy({gravity: $.fn.tipsy.autoNS});
						   
});

</script>


<title>404 - 页面丢失</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>

<!-- Universal preloader -->
<div id="universal-preloader">
    <div class="preloader">
        <img src="images/universal-preloader.gif" alt="universal-preloader" class="universal-preloader-preloader" />
    </div>
</div>
<!-- Universal preloader -->

<div id="wrapper">
<!-- 404 graphic -->
	<div class="graphic"></div>
<!-- 404 graphic -->
<!-- Not found text -->
	<div class="not-found-text">
    	<h1 class="not-found-text">页面未找到</h1>
    </div>
<!-- Not found text -->

<!-- search form -->
<div class="search">
	<form name="search" method="get" action="#" />
        <input type="text" name="search" value="搜索 ..." />
        <input class="with-tooltip" title="Search!" type="submit" name="submit" value="" />
    </form>
</div>
<!-- search form -->

<!-- top menu -->
<div class="top-menu">
	<a href="#" class="with-tooltip" title="Return to the home page">主页</a> | <a href="#" class="with-tooltip" title="Navigate through our sitemap">Sitemap</a> | <a href="#" class="with-tooltip" title="Contact us!">Contact</a> | <a href="#" class="with-tooltip" title="Request additional help">帮助</a>
</div>
<!-- top menu -->

<div class="dog-wrapper">
<!-- dog running -->
	<div class="dog"></div>
<!-- dog running -->
	
<!-- dog bubble talking -->
	<div class="dog-bubble">
    	
    </div>
    
    <!-- The dog bubble rotates these -->
    <div class="bubble-options">
    	<p class="dog-bubble">
        	你迷路了吗?不用担心,我是一个优秀的导游!
        </p>
    	<p class="dog-bubble">
	        <br />
        	Arf! Arf!
        </p>
        <p class="dog-bubble">
        	<br />
        别担心!有我在!
        </p>
        <p class="dog-bubble">
        	我希望我有一块饼干<br /><img style="margin-top:8px" src="images/cookie.png" alt="cookie" />
        </p>
        <p class="dog-bubble">
        	<br />
        	天啊!这是很无聊的!
        </p>
        <p class="dog-bubble">
        	<br />
        	我接近吗?
        </p>
        <p class="dog-bubble">
        	或者我只是在圈子里?不…
        </p>
        <p class="dog-bubble">
        	<br />
            好的,我现在正式失去了……
        </p>
        <p class="dog-bubble">
        	我想我看到了 <br /><img style="margin-top:8px" src="images/cat.png" alt="cat" />
        </p>
        <p class="dog-bubble">
        	我们应该寻找到底是什么?@ @
        </p>
    </div>
</div>

	<div class="planet"></div>
</div>
</body>
</html>