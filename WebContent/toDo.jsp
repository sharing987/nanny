<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>用户中心</title>
<link rel="stylesheet"
	href="other/bootstrap-3.3.7/css/bootstrap.min.css">
<link href="css/addskill.css" type="text/css" rel="stylesheet" />
<script src="js/jquery.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/basic.js"></script>
<script src="js/nanny.js"></script>
<script src="js/employer.js"></script>
<script src="js/showdiv.js"></script>
<script src="js/getOrder.js"></script>
<script src="js/toDo.js"></script>
<script src="other/DJMask/js/jquery-DJMask.2.1.1.js"></script>
<script src="other/DJMask/js/jquery.js"></script>
<script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<link rel="stylesheet"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" />
<link rel="stylesheet"
	href="other/validation/vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="other/validation/dist/css/formValidation.css">
<script type="text/javascript"
	src="other/validation/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/formValidation.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/framework/bootstrap.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/language/zh_CN.js"></script>
<link rel="stylesheet" href="other/jquery-nav/css/style.min.css">
<link rel="stylesheet" href="other/jquery-nav/css/style.css">
<script src="other/jquery-nav/js/production/materialMenu.min.js"></script>
<script src="other/autosize-master/autosize.js"></script>

<link rel="icon" href="./assets/favicon.png">
<link rel="apple-touch-icon" href="./assets/apple-touch-icon.png">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Courgette">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="./assets/buttons.css">
<link rel="stylesheet" href="./dist/sweetalert2.min.css">

<script src="./dist/sweetalert2.js"></script>


<script type="text/javascript" src="js/LoginItem.js"></script>
<script type="text/javascript" src="js/SignIn.js"></script>
<script type="text/javascript" src="js/logout.js"></script>
<script type="text/javascript" src="js/forappend.js"></script>

<link rel="stylesheet" href="dist/css/logincss.css" media="all">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">

<script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 













</script>
</script>

<script>
jQuery(document).ready(function($) {
	$('.theme-login').click(function(){
		$('.theme-popover-mask').fadeIn(100);
		$('.theme-popover').slideDown(200);
	})
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
	})
	
	var currentEmail = "<%=session.getAttribute("sessionName")%>
	";
		if (currentEmail != "null") {
			DisplayAndHiddenBtn("signIn", "h");
			DisplayAndHiddenBtn("login", "h");
			DisplayAndHiddenBtn("userEmail", "d");
			DisplayAndHiddenBtn("logout", "d");
			$("#userEmail").text(currentEmail);

		}

	})
</script>
</head>

<body>
	<div class="TheNomalNavbar">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秋裤网</a>
			</div>
			<ul class="nav navbar-nav navbar-left">
				<li><a href="#"><span class="glyphicon glyphicon-tags"></span>
						月嫂登记</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-home"></span>
						月嫂分布</a></li>
				<li><a href="#"><span
						class="glyphicon glyphicon-credit-card"></span> 秋裤快报</a></li>
				<li><a href="ToFindNanny.jsp"><span
						class="glyphicon glyphicon-eye-open"></span> 如何找月嫂</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-heart"></span>
						月嫂工资</a></li>
			</ul>
			<form class="navbar-form navbar-left " role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" style="display: block" id="signIn"><span
						class="glyphicon glyphicon-user"></span> 注册</a></li>
				<li><a href="#" style="display: block" id="login"><span
						class="glyphicon glyphicon-log-in theme-login"></span> 登录</a></li>
				<li><a href="basic.jsp" style="display: none" id="userEmail"><span
						class="glyphicon glyphicon-user"></span></a></li>
				<li><a href="#" style="display: none" id="logout"><span
						class="glyphicon glyphicon-log-in"></span> 注销</a></li>
			</ul>
		</div>

		<div class="theme-popover">
			<div class="theme-poptit">
				<a title="关闭" class="close"><strong>×</strong></a>
				<h3>欢迎登录秋裤网！</h3>
			</div>
			<div class="theme-popbod dform">
				<form class="theme-signin" name="loginform" action="" method="post">
					<ol>
						<li><h4>请输入您的信息！</h4></li>
						<li><strong>用户名：</strong><input class="inputarea7"
							type="email" name="log" placeholder="电子邮件" size="20"
							id="input_email" /></li>
						<li><strong>密码：</strong><input class="inputarea7"
							type="password" name="pwd" placeholder="密　码" size="20"
							id="input_password" /></li>
						<li><button class="button7 button7-primary" type="button"
								name="submit" value="登 录 " id="loginIn" /></li>
					</ol>
				</form>
			</div>
		</div>
		</nav>
	</div>

	<div id="wrapper" class="wrapper"></div>
	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
	<nav id="mm-menu" class="mm-menu">
	<div class="mm-menu__header">
		<h2 class="mm-menu__title">用户中心</h2>
	</div>
	<ul class="mm-menu__items">
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="basic.jsp"> <span class="mm-menu__link-text"><i
					class="md md-home"></i> 基本信息</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-person"></i>
					选填信息</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-inbox"></i>
					修改密码</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="getNanny.jsp"> <span class="mm-menu__link-text"><i
					class="md md-favorite"></i> 月嫂认证</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="getEmployer.jsp"> <span class="mm-menu__link-text"><i
					class="md md-settings"></i> 雇主认证</span>
		</a></li>
	</ul>

	<div class="mm-menu__header">
		<h2 class="mm-menu__title">任务中心</h2>
	</div>
	<ul class="mm-menu__items">
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="order.jsp"> <span class="mm-menu__link-text"><i
					class="md md-home"></i> 待处理预约</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="toDo.jsp">
				<span class="mm-menu__link-text"><i class="md md-inbox"></i>
					待进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="doing.jsp">
				<span class="mm-menu__link-text"><i class="md md-favorite"></i>
					正在进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-settings"></i>
					历史任务</span>
		</a></li>
	</ul>
	</nav>

	<script>
		var menu = new Menu;
	</script>

	<div id="pending" class="container">
		<div class="page-header">
			<h1><b>待进行任务</b></h1>
		</div>

		<div id="main" role="main">
			<ul id="tiles">


				<!-- End of grid blocks -->
			</ul>
		</div>

		<input type="button" id="conf" class="btn btn-default" value="新增预约"
			onclick="qqqzz()"> <input type="button" id="conf"
			class="btn btn-default" value="添加信息" onclick="qqqa()">

		<script type="text/javascript">
			function qqqzz() {
				alert("aa");
				var $tiles = $('#tiles'),
		          $handler = $('li', $tiles),
		          $main = $('#main'),
		          $window = $(window),
		          $document = $(document),
		          options = {
		            autoResize: true, // This will auto-update the layout when the browser window is resized.
		            container: $main, // Optional, used for some extra CSS styling
		            offset: 20, // Optional, the distance between grid items
		            itemWidth:280 // Optional, the width of a grid item
		          };
				var data=[
				    [
				        {
				        	"identity" : "nanny",
				            "theLastTime": "2017-05-02",
				            "address": "北京",
				            "highSalary": "12000",
				            "startTime": "2017-05-09",
				            "endTime": "2017-05-08",
				            "id": 1,
				            "lowSalary": "9000",
				            "nanny_id": 7,
				            "employer_id": 8
				        },
				        {
				            "residence": "北京市海淀区北京交通大学",
				            "phone": "11111",
				            "city": "北京",
				            "user_id": 8,
				            "id_card": "430623199511051634",
				            "name": "祁家祯",
				            "pic_url": "./imgResources/8.jpg"
				        },
				        {
				            "baby_weight": 3,
				            "education": "专科",
				            "is_home": "是",
				            "mother_age": 25,
				            "can_pay": 9500,
				            "experience_need": "2年以上",
				            "baby_birth": "2012/1/1",
				            "user_id": 8,
				            "work_address": "北京市海淀区",
				            "mother_height": 166,
				            "vacation": 2,
				            "mother_weight": 50,
				            "childbirth_count": 1,
				            "childbirth_method": "顺产"
				        }
				    ]
				];
				var json = eval(data);
				
				var html = '';
				if (json[0][0].identity == "nanny") {
					html += '<div class="panel-body">';
					html += '<div>';
					html += '<img src="img/u90.png" class="img-rounded col-sm-2">';
					html += '</div>';
					html += '<div class="col-sm-6">';
					html += '<b><h3 id="workTime">工作时间:</h3></b>';
					html += '<b><h3 id="salary">可支付工资:</h3></b>';
					html += '<b><h3 id="workPlace">工作地点:</h3></b>';
					html += '</div>';
					html += '<div class="col-sm-4">';
					html += '<br>';
					html += '<div>';
					html += '<input type="button" id="contactEmployer" class="btn btn-default" value="联系雇主">';
					html += '</div>';
					html += '<br>';
					html += '<div>';
					html += '<input type="button" id="confirm" class="btn btn-default" value="解除预约" onclick="confirmOrder();"';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '<hr>';
					$tiles.append(html);
				}
				if (json[0][0].identity == "empoloyer") {
					html += '<div class="panel-body">';
					html += '<div>';
					html += '<img src="img/u90.png" class="img-rounded col-sm-2">';
					html += '</div>';
					html += '<div class="col-sm-6">';
					html += '<b><h2 id="workTime">工作时间:</h2></b>';
					html += '<b><h2 id="salary">可支付工资:</h2></b>';
					html += '<b><h2 id="workPlace">工作地点:</h2></b>';
					html += '</div>';
					html += '<div class="col-sm-4">';
					html += '<br>';
					html += '<div>';
					html += '<input type="button" id="contactEmployer" class="btn btn-default" value="联系月嫂">';
					html += '</div>';
					html += '<br>';
					html += '<div>';
					html += '<input type="button" id="confirm" class="btn btn-default" value="解除预约" onclick="confirmOrder();"';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					$tiles.append(html);
					}
				var workStartTime = json[0][0].startTime;
				var workendTime = json[0][0].endTime;
				var lowSalary = json[0][0].lowSalary;
				var highSalary = json[0][0].highSalary;
				var workPlace = json[0][0].address;
				document.getElementById("workTime").innerHTML = "工作时间:" + workStartTime + "至" + workendTime;
				document.getElementById("salary").innerHTML = "可支付工资:" + lowSalary + "元至" + highSalary + "元";
				document.getElementById("workPlace").innerHTML = "工作地点:" + workPlace;
			};
			function show(obj, id) {
				var objDiv = $("#" + id + "");
				$(objDiv).css("display", "block");
				$(objDiv).css("left", event.clientX);
				$(objDiv).css("top", event.clientY + 10);
			}
			function hide(obj, id) {
				var objDiv = $("#" + id + "");
				$(objDiv).css("display", "none");
			};
			function confirmOrder() {
				var msg = "您真的确定要预约吗？请确认！";  
	            if (confirm(msg)==true){  			                
	                $("#aaa").remove(); 
	            }   
			};
		</script>

	</div>
	
	
	<!--  var today = new Date(${serverTime}); // 将服务器时间输出到这里
var hour = today.getHours();
if (hour >= 8 && hour < 9) {
    // to do something
}-->
	

	<div id="employerDiv"
		style="position: absolute; display: none; border: 1px solid silver; background: silver;">
		<b><h2 id="name">姓名：</h2></b> <b><h2 id="phone">手机号:</h2></b> <b><h2
				id="mail">邮箱号:</h2></b> <b><h2 id="place">居住地点:</h2></b> <b><h2
				id="birthday">婴儿出生日期:</h2></b>
	</div>

</body>
</html>