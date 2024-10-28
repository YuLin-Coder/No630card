package com.action;

import java.util.Date;

public class t
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		Date date2=new Date(new Date().getTime()+10*24*60*60*1000);
System.out.println(date2.toLocaleString());
	}

}
