package com.example.mybatisoraclesetting.controller;


import com.example.mybatisoraclesetting.modelVo.BoardVo;
import com.example.mybatisoraclesetting.service.BoardService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
    public List<BoardVo> boardlist(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // ModelAndView mav = new ModelAndView();
        List<BoardVo> boardlist = null;
        try {
            logger.info("board in");
            boardlist = boardService.boardListAll();
            // mav.setViewName("poloboard");
            //mav.addObject("boardlist", list);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("############ SQLException ############");
        }
        return boardlist;
    }
}
