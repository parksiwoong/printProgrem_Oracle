package com.example.mybatisoraclesetting.modelVo;

import lombok.Data;

import java.util.Date;

@Data
public class PcDataVo {
 int no;
 String cpu;
 String mem;
 String ssd;
 String pcname;
 String hdd;
 private Date toDate;
 String chbox[];
}
