package com.groups.schicken.calendar;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CalendarDAO {

	
	public int insert (CalendarVO calendarVO) throws Exception;
	public int insertuser(CalendarVO calendarVO)throws Exception;
	public int insertAllUser(List<CalendarVO> a)throws Exception;
	public int depDelte(CalendarVO calendarVO)throws Exception;
	public int update(CalendarVO calendarVO)throws Exception;
	public List<CalendarVO> calList(CalendarVO calendarVO)throws Exception;
	public List<CalendarVO> departmentList (CalendarVO calendarVO)throws Exception;
	public List<CalendarVO> depList(CalendarVO calendarVO)throws Exception;
	public void depDelte(String employeeId);
	
	
}