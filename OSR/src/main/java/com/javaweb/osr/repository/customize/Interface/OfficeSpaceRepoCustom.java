package com.javaweb.osr.repository.customize.Interface;

import com.javaweb.osr.entity.OfficeSpace;

import java.util.List;
import java.util.Map;

public interface OfficeSpaceRepoCustom {

//	List<OfficeSpace> findAllOSAvailable();

	List<OfficeSpace> searchOS_Lessee(Map<String, Object> params, List<String> typeName, List<String> tagName, List<String> amenityName, List<String> rentTypeName);

//	List<OfficeSpace> searchOSAvailable(Map<String, Object> params, List<String> typeName, List<String> tagName, List<String> amenityName, List<String> rentTypeName);
}
