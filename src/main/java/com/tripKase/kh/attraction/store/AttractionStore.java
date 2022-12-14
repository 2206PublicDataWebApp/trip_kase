package com.tripKase.kh.attraction.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.tripKase.kh.attraction.domain.AttrImgDomain;
import com.tripKase.kh.attraction.domain.Attraction;
import com.tripKase.kh.attraction.domain.AttractionImg;

public interface AttractionStore {
	// 관광지 등록
	int insertAttr(SqlSession session, Attraction attr);
	// 관광지-이미지 등록
	int insertAttrImg(SqlSession session, AttractionImg attrImg);
	
	// 총 게시글 수 가져오기
	int selectTotalCount(SqlSession session);
	
	// 관광지 목록(관리자) 조회
	List<Attraction> selectAllAttr(SqlSession session, int currentPage, int attrLimit);
	
	// 관광지 상세 + 수정 화면
	Attraction selectOneByNo(SqlSession session, Integer attrNo);
	// 관광지 상세-이미지 조회
	List<AttractionImg> selectImgByNo(SqlSession session, Integer attrNo);
	
	// 관광지 삭제
	int deleteOneByNo(SqlSession session, int attrNo);
	
	// 관광지 수정
	int updateAttr(SqlSession session, Attraction attr);
	// 관광지-이미지 수정
	int updateAttrImg(SqlSession session, AttractionImg attrImg);
	
	// 관광지 검색 게시글 수 가져오기
	int getSearchCount(SqlSession session, String searchValue, String areaValue, String [] typeValue);
	
	// 관광지 검색 게시글 목록 조회
	List<AttrImgDomain> selectSearchAttr(SqlSession session, String searchValue, String areaValue, String [] typeValue,
			int currentPage, int attrLimit);
	
	// 관광지 검색 게시글 상세 조회
	List<AttrImgDomain> selectOneAttr(SqlSession session, Integer attrNo);

}
