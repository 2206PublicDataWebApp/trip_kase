package com.tripKase.kh.room.store;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.tripKase.kh.room.domain.Room;
import com.tripKase.kh.room.domain.RoomImg;
import com.tripKase.kh.room.domain.RoomJoin;

public interface RoomStore {
	// 숙소 정보 등록 기능
	public int insertRoom(SqlSessionTemplate session, Room room);
	// 숙소 정보 리스트 페이징 처리 기능
	public int selectTotalCount(SqlSessionTemplate session, String searchValue);
	// 숙소 정보 리스트 기능	
	public List<Room> selectAllRoom(SqlSessionTemplate session, int currentPage, int roomLimit);
	// 숙소 정보 리스트 상세페이지
	public Room selectDataListOne(SqlSessionTemplate session, int roomNo);
	// 숙소 정보 삭제 기능
	public int deleteDataOne(SqlSessionTemplate session, int roomNo);
	// 숙소 사진 추가 기능
	public int insertRoomImg(SqlSessionTemplate session, RoomImg roomImg);
	// 숙소 사진 화면 구현
	public List<RoomImg> roomImgDetail(SqlSessionTemplate session, int roomNo);
	// 숙소 수정 기능
	public int updateRoomData(SqlSessionTemplate session, Room room);
	// 숙소 수정 이미지
	public int updateRoomImg(SqlSessionTemplate session, RoomImg roomImg);
	// 숙소 검색 리스트 페이징처리
	public int getRoomCount(SqlSessionTemplate session, String searchValue, String areaValue, String[] typeValue, int personValue, String petValue);
	// 숙소 검색 리스트
	public List<Room> selectSearchRoom(SqlSessionTemplate session, String searchValue, String areaValue, String[] typeValue, int personValue, String petValue, int currentPage, int roomsLimit);
	
	// 숙소 이름 검색 리스트 페이징 처리
	public int getRoomNameCount(SqlSessionTemplate session, String searchValue);
	// 숙소 이름 검색 리스트 
	public List<RoomJoin> selectSearchName(SqlSessionTemplate session, String searchValue, int currentPage, int roomsLimit);

	public List<RoomImg> selectAllRoomImg(SqlSessionTemplate session, int roomNo);
	// 숙소 타입 검색 리스트
	public int getRoomTypeCount(SqlSessionTemplate session, String areaValue, String typeValue, int personValue,
			String petValue);
	public List<RoomJoin> selectSearchType(SqlSessionTemplate session, String areaValue, String typeValue,
			int personValue, String petValue, int currentPage, int roomsLimit);
}
