package org.gs.controller;
//ctrl controller控制器简写

import java.util.List;

import org.gs.model.Speaker;
import org.gs.model.Subject;
import org.gs.model.Video;
import org.gs.model.VideoSimple;
import org.gs.service.SpeakerService;
import org.gs.service.SubjectService;
import org.gs.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//添加视频跟讲师信息
@Controller
@RequestMapping("/front/video")
public class FrontVideoCtrl {
	
	@Autowired
	private VideoService videoService;
	
	private SpeakerService speakerService;
	@Autowired
	//private SubjectService subjectService;
//	
	@RequestMapping("/index.do")
	public String VideoIndex(/*Model model,int subjectId*/){
		//Subject subject = subjectService.queryById(subjectId);
		//model.addAttribute("subjectName",subject.getName() );
		return "front/video/index";
	}
	
	@RequestMapping("/content.do")
	public String videoIndex(int videoId,Model model){
//中间处理信息
	Video video = videoService.queryById(videoId);	
		model.addAttribute("video",video);
		//查询当前course下的将是信息
		Integer spearkerId = video.getSpearkerId();
		Speaker speaker=speakerService.queryById(spearkerId);
		model.addAttribute("speaker",speaker);
		
		//查询当前course下的所有视频
/*		Integer courseId = video.getCourseId();
*/		/*List<VideoSimple> videoList = videoService.queryByCourseId(courseId);*/
		Integer courseId = video.getCourseId();
		List<Video> videoList = videoService.queryByCourseIdForVideo(videoId);
		model.addAttribute("videolist",videoList);
		
		//List<Video> allVideo = videoService.queryByCourseIdForVideo(courseId);
		//model.addAttribute("allVideo", allVideo);
		return "front/video/content";
		
	}
}
