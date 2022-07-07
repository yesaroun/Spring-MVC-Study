package com.test.mybatis;

import java.util.ArrayList;

public interface IMemberDAO
{
	public int add(MemberDTO m);
	public int count();
	public ArrayList<MemberDTO> list();
	public int remove(int mid);
	public int modify(MemberDTO m);
}
