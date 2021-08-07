package com.example.mybatisoraclesetting.mapperDao;

import com.example.mybatisoraclesetting.modelVo.PcDataVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface PcDataDao {
    List<PcDataVo> pcDataList(PcDataVo pcDataVo)throws Exception;
    int create(PcDataVo param)throws Exception;
    int submitinsert(PcDataVo pcDataVo)throws Exception;

    void deleteData(PcDataVo pcDataVo)throws Exception;
}
