package com.example.mybatisoraclesetting.service.serviceIpml;

import com.example.mybatisoraclesetting.mapperDao.BoardDao;
import com.example.mybatisoraclesetting.modelVo.BoardVo;
import com.example.mybatisoraclesetting.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
    private BoardDao boardDao;

    @Autowired
    public BoardServiceImpl(BoardDao boardDao){
        this.boardDao = boardDao;
    };

    @Override
    public List<BoardVo> boardListAll(BoardVo boardVo)throws Exception {
        return boardDao.boardListAll(boardVo);
    }
}
