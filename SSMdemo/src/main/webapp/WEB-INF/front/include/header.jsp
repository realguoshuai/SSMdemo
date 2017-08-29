<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhouyc
  Date: 2017/6/30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>


		<c:if test="${not empty _userAccount}">
			<div id="userBlock" style="float:right">
				<a href="front/user/logout.action">退出</a>
				<a href="front/user/index.action" id="account">${sessionScope._userAccount}</a>
			</div>
		</c:if>
		<c:if test="${empty _userAccount}">
			<div id="regBlock" style="float:right">
				<a href="javascript:;" id="reg_open"><img src="img/we.png">注册</a>
				<a href="javascript:;" id="login_open"><img src="img/we.png">登录</a>
			</div>
		</c:if>

		<a onclick="JavaScript:addFavorite2()"><img src="img/sc.png" draggable="false">加入收藏</a>
		<%--<a onclick="pyRegisterCvt()" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2580094677&site=qq&menu=yes"><img src="img/we.png" draggable="false">联系我们</a>--%>
		<a target="_blank" href="admin/login.do"><img src="img/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img src="img/phone.png" draggable="false"> 0371-88888598&#x3000;&#x3000;4006-371-555</a>

	</div>
</header>
