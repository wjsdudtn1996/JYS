package com.ys.nd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.ys.nd.dao.MemberDAO;
import com.ys.nd.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class Member {
	 
	@Autowired
	MemberDAO mDAO;
	
	@RequestMapping("/loginForm.nd")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("/member/login");
		
		return mv;
	}
	
	@RequestMapping("/loginProc.nd")
	public ModelAndView loginProc(ModelAndView mv, MemberVO mVO, HttpSession session, RedirectView rv) {
		
		mv.addObject("DATA", mVO);
		// dao에 있는 login 함수 실행 시켜서 cnt에 값 담기
		int cnt = mDAO.getLogin(mVO);
		// cnt에 담긴 값을 mv에 담는다.
		mv.addObject("cnt", cnt);
		
		if(cnt == 1) {
			// cnt 가 1인경우 로그인 성공
			session.setAttribute("SID", mVO.getId());
			System.out.println("id : " + mVO.getId());
			rv.setUrl("../");
		}else {
			 // cnt 가 1이 아닌경우 로그인 실패. 다시 redirect로 폼으로돌아가기
			rv.setUrl("loginForm.nd");
			
		}
		mv.setView(rv);
		
		
		 
		return mv;
	}
	
	@RequestMapping("/logoutProc.nd")
	public ModelAndView logoutProc(ModelAndView mv, HttpSession session, RedirectView rv) {
		session.removeAttribute("SID");
		rv.setUrl("../");
		mv.setView(rv);
		
		return mv;
	}
	
}
