package com.tripKase.kh.restaurant.service.logic;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripKase.kh.restaurant.domain.ResImg;
import com.tripKase.kh.restaurant.domain.Restaurant;
import com.tripKase.kh.restaurant.service.RestaurantService;
import com.tripKase.kh.restaurant.store.RestaurantStore;

@Service
public class RestaurantServiceImpl implements RestaurantService{

	@Autowired
	private SqlSessionTemplate session;
	@Autowired
	private RestaurantStore resStore;

	
	@Override
	public int insertRestaurant(Restaurant restaurant) {
		int result = resStore.insertRestaurant(session, restaurant);
		return result;
	}
	
	@Override
	public int insertRestaurantImg(ResImg resImg) {
		int result = resStore.insertRestaurantImg(session, resImg);
		return result;
	}

	@Override
	public int getRestaurantCount(String searchValue, String areaValue, String [] typeValue) {
		int count = resStore.getRestaurantCount(session, searchValue, areaValue, typeValue);
		return count;
	}

	@Override
	public List<Restaurant> printRestaurantByValue(String searchValue, String areaValue,String [] typeValue, int currentPage,
			int boardLimit) {
		List<Restaurant> resList = resStore.printRestaurantByValue(session, searchValue, areaValue, typeValue, currentPage, boardLimit);
		return resList;
	}

	@Override
	public Restaurant printOneByRestaurantNo(Integer resNo) {
		Restaurant restaurant = resStore.printOneByRestaurantNo(session, resNo);
		return restaurant;
	}

	@Override
	public int deleteRestaurant(Integer resNo) {
		int result = resStore.deleteRestaurant(session, resNo);
		return result;
	}

	@Override
	public int updateRestaurant(Restaurant restaurant) {
		int result = resStore.updateRestaurant(session, restaurant);
		return result;
	}

	@Override
	public int updateRestaurantImg(ResImg resImg) {
		int result = resStore.updateRestaurantImg(session, resImg);
		return result;
	}

	@Override
	public List<ResImg> selectResImgByNo(Integer resNo) {
		List<ResImg> resImg = resStore.selectResImgByNo(session, resNo);
		return resImg;
	}


}
