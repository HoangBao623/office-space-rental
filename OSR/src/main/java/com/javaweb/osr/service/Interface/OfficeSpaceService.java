package com.javaweb.osr.service.Interface;

import com.javaweb.osr.dto.OfficeSpaceDTO;

import java.util.List;
import java.util.Map;

public interface OfficeSpaceService {

    List<OfficeSpaceDTO> searchOS_Lessee(Map<String, Object> params, List<String> type, List<String> tagName, List<String> amenityName, List<String> rentTypeName);
}
