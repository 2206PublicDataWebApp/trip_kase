package com.tripKase.kh.member.service;

import com.tripKase.kh.member.domain.Member;

public interface MemberService {

	public int registMember(Member member);
	
	public Member loginMember(Member member);
	
	public Member memberOneById(String memberId);
	
	public int modifyMember(Member member);
	
	public int removeMember(String memberId);
	
	public Member findIdMember(String memberName, String memberEmail);
	
	public Member findPwdMember(String memberId, String memberEmail);
	
	public int countPost(String memberNick);
	
	public int countReply(String memberNick);
	
	public int memberGrade(String memberGrade, String memberId);

}
