package com.fenliu.utils;

import java.util.LinkedList;
import java.util.List;


public class GetMax {
	public static int max(int l1, int l2, int l3, int l4) {
		int max1, max2, max3;
		if (l1 > l2)
			max1 = l1;
		else
			max1 = l2;
		if(l3>l4)
			max2=l3;
		else
			max2=l4;
		if(max1>max2)
			max3=max1;
		else
			max3=max2;
		return max3;

	}
	public static List<String> numberList(int max) {
		
		List<String> list=new LinkedList<String>();
		for(int i=1;i<=max;i++)
		{
			list.add(""+i);
		}
	
		return list;
	}
}
