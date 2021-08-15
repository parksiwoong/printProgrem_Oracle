package com.example.mybatisoraclesetting.modelVo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("SearchCriteria") //검색기능Vo
public class SearchCriteria extends Criteria{
    private String searchType = "";
    private String keyword = "";

    //저장할 생성자
    public void setSearchType(String searchType){
        this.searchType = searchType;
    }

    public void setKeyword(String keyword){
        this.keyword = keyword;
    }
}
