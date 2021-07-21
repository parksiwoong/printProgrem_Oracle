package com.example.mybatisoraclesetting.service;

import com.example.mybatisoraclesetting.modelVo.BoardVo;
import org.springframework.stereotype.Service;

import java.util.List;


public interface BoardService {
    public List<BoardVo> boardListAll()throws Exception ;
}
