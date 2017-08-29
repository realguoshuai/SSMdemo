<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhouyc
  Date: 2017/6/30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>


<div class="intro">
	<div class="container">
		<div class="v-intro">
			<div class="left">
				<video id="videoPlayer" src="${video.videoUrl}" class="video-js vjs-default-skin" controls width="627" height="280"
					   poster="${video.imageUrl}" data-setup="{}">
				</video>
			</div>

			<div class="right">
				<p class="right-title">${video.name}</p>
				<div class="avatar">
					<span style="background-image: url(${speaker.headImgUrl})"></span>
					<p><b>讲师：${speaker.name}</b><br><i>${speaker.speakerDesc}</i></p>
				</div>
				<p class="video-intro">
					<span>本节内容：</span> ${video.detail}
				</p>
			</div>
		</div>

		<div class="kcjs">
			<p class="title">课程介绍</p>
			<p class="content">${course.courseDesc}</p>
		</div>

	</div>
</div>
<!--目录-->
<div class="catalog">
	<div class="container">
		<p class="title">目录</p>

		<c:forEach items="${videoList}" var="video" >
			<div class="chapter">
				<p class="biaoti"><a href="front/video/showVideo.action?videoId=${video.id}&subjectName=${subjectName}">${video.title}</a></p>
				<p class="lecturer">${video.detail}</p>
				<p class="lecturer">讲师：${video.speakerName}</p>
			<%-- 	<p class="lecturer">讲师：${video.speakerName}</p> --%>
				<div class="v-info">
					<span class="count"><img src="img/count.png" alt="">${video.playNum}</span>
					<span class="duration"><img src="img/player.png" alt="">${video.showTime}</span>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
