package com.tripKase.kh.qna.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripKase.kh.qna.domain.QnA;
import com.tripKase.kh.qna.service.QnAService;
import com.tripKase.kh.qna.store.QnAStore;

@Service
public class QnAServiceImpl implements QnAService{

	@Autowired
	SqlSession session;
	
	@Autowired
	QnAStore qStore;
	
	@Override
	public int insertQna(QnA qna) {
		int result = qStore.insertQna(session, qna);
		return result;
	}

	@Override
	public List<QnA> selectAllQna(String memberId) {
		List<QnA> qList = qStore.selectAllQna(session, memberId);
		return qList;
	}

	@Override
	public int getQnATotalCount(String memberId) {
		int result = qStore.getQnATotalCount(session, memberId);
		return result;
	}
	
	
}
