package com.groups.schicken.noteMessage;

import com.groups.schicken.Employee.EmployeeVO;
import com.groups.schicken.util.Pager;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoteMessageDAO {
    Long getTotalCount(EmployeeVO employee);

    Integer addMessage(NoteMessageVO message);

    Integer addReceivers(List<String> receivers, Long id);

    List<NoteMessageVO> getList(EmployeeVO employee, Pager pager);

    NoteMessageVO getMessage(NoteMessageVO noteMessage);
}
