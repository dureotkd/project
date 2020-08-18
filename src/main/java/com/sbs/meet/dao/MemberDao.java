package com.sbs.meet.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.sbs.meet.dto.Member;

@Mapper
public interface MemberDao {

	int getNicknameDupCount(String nickname);

	void join(Map<String, Object> param);

	Member getMemberByNickname(String nickname);
	
}
