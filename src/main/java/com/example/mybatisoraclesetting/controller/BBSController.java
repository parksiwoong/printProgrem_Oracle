package com.example.mybatisoraclesetting.controller;


import com.example.mybatisoraclesetting.modelVo.BoardVo;
import com.example.mybatisoraclesetting.service.BoardService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping(value = "/")
public class BBSController {
    //log4j2 사용
    private static final Logger logger = LogManager.getLogger(BBSController.class);
     private BoardService boardService;

    @Autowired
    public BBSController(BoardService boardService){
        this.boardService = boardService;
    }

    @RequestMapping(value = "board")
    @ResponseBody
    public ModelAndView boardlist(HttpServletRequest request, HttpServletResponse response , BoardVo boardVo, Model model) throws Exception {
        ModelAndView mav = new ModelAndView();
        List<BoardVo> boardlist = boardService.boardListAll(boardVo);
        logger.info(boardlist + "2들어갔니");
      try {
            logger.info("board in");
            logger.info(boardlist + "들어갔니");
            mav.addObject("boardlist", boardlist);
            mav.setViewName("board/poloboard");

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("############ SQLException ############");
        }
        return mav;

      /*  ModelAndView 방식
           ModelAndView mav = new ModelAndView();
        List<BoardVo> boardlist = boardService.boardListAll(boardVo);
        logger.info(boardlist + "2들어갔니");
      try {
            logger.info("board in");
            logger.info(boardlist + "들어갔니");
            mav.setViewName("board/poloboard");
            mav.addObject("boardlist", boardlist);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("############ SQLException ############");
        }
        return mav;
    }*/
    }
}
