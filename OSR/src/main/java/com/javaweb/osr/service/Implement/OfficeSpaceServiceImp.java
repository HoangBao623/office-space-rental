package com.javaweb.osr.service.Implement;

import com.javaweb.osr.converter.OfficeSpaceConverter;
import com.javaweb.osr.dto.OfficeSpaceDTO;
import com.javaweb.osr.entity.OfficeSpace;
import com.javaweb.osr.repository.customize.Interface.OfficeSpaceRepoCustom;
import com.javaweb.osr.repository.systemInterface.OfficeSpaceRepository;
import com.javaweb.osr.service.Interface.OfficeSpaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class OfficeSpaceServiceImp implements OfficeSpaceService {

    @Autowired
    private OfficeSpaceConverter officeSpaceConverter;
    @Autowired
    private OfficeSpaceRepoCustom officeSpaceRepoCustom;

    @Override
    public List<OfficeSpaceDTO> searchOS_Lessee(Map<String, Object> params, List<String> type, List<String> tagName, List<String> amenityName, List<String> rentTypeName) {

        List<OfficeSpace> listOfficeSpace = officeSpaceRepoCustom.searchOS_Lessee(params, type, tagName, amenityName, rentTypeName);
        List<OfficeSpaceDTO> listofficeSpaceDTO = new ArrayList<OfficeSpaceDTO>();

        for(OfficeSpace item : listOfficeSpace) {
            OfficeSpaceDTO ac = officeSpaceConverter.toOfficeSpaceDTO(item);
            listofficeSpaceDTO.add(ac);
        }
        return listofficeSpaceDTO;
    }
}
