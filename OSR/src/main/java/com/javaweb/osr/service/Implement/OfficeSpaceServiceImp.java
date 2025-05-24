package com.javaweb.osr.service.Implement;

import com.javaweb.osr.converter.OfficeSpaceConverter;
import com.javaweb.osr.dto.OfficeSpaceDTO;

import com.javaweb.osr.repository.customize.Interface.OfficeSpaceRepoCustom;
import com.javaweb.osr.repository.systemInterface.LessorServiceRepository;
import com.javaweb.osr.repository.systemInterface.OfficeSpaceRepository;
import com.javaweb.osr.repository.systemInterface.ServiceRepository;
import com.javaweb.osr.repository.systemInterface.UserRepository;
import com.javaweb.osr.service.Interface.OfficeSpaceService;
import com.javaweb.osr.util.ListUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javaweb.osr.entity.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class OfficeSpaceServiceImp implements OfficeSpaceService {

    @Autowired
    private OfficeSpaceConverter officeSpaceConverter;

    @Autowired
    private OfficeSpaceRepoCustom officeSpaceRepoCustom;

    @Autowired
    private OfficeSpaceRepository officeSpaceRepository;

    @Autowired
    private ServiceRepository serviceRepository;

    @Autowired
    private LessorServiceRepository lessorServiceRepository;

    @Autowired
    private UserRepository userRepository;

    private List<com.javaweb.osr.entity.Service> getService(List<String> serviceName)
    {
        List<com.javaweb.osr.entity.Service> serviceList = new ArrayList<>();

        if (ListUtil.checkList(serviceName)) {
            for (String name : serviceName)
            {
                com.javaweb.osr.entity.Service serviceListTem = serviceRepository.findByServiceName(name);
                serviceList.add(serviceListTem);
            }
        }
        return serviceList;
    }

    private List<LessorService> getLessor_Service(List<com.javaweb.osr.entity.Service> serviceList)
    {
        List<LessorService> lessorServices = new ArrayList<>();

        for (com.javaweb.osr.entity.Service service : serviceList)
        {
            List<LessorService> lessorServicesTem = lessorServiceRepository.findAllByServiceID(service);
            lessorServices.addAll(lessorServicesTem);
        }
        return lessorServices;
    }

    private List<User> getLessor(List<LessorService> lessorServices)
    {
        List<User> lessorList = new ArrayList<>();

        for (LessorService lessorService : lessorServices)
        {
            User lessorsTem = userRepository.findById(lessorService.getLessorID().getUserID()).get();
            lessorList.add(lessorsTem);
        }
        return lessorList;
    }

    @Override
    public List<OfficeSpaceDTO> searchOS_Lessee(Map<String, Object> params, List<String> typeName, List<String> tagName, List<String> amenityName, List<String> rentTypeName, List<String> serviceName) {

        if(ListUtil.checkList(serviceName)) {
            List<com.javaweb.osr.entity.Service> services = getService(serviceName);
            List<LessorService> lessorServices = getLessor_Service(services);
            List<User> lessors = getLessor(lessorServices);

//      List OS theo điều kiện Service nếu có
            List<OfficeSpace> officeSpaces = new ArrayList<>();
            for (User lessor : lessors) {
                List<OfficeSpace> officeSpacesTem = officeSpaceRepository.findAllByLessorID(lessor);
                officeSpaces.addAll(officeSpacesTem);
            }

            //      List OS theo các điều kiện còn lại
            List<OfficeSpace> listOfficeSpace = officeSpaceRepoCustom.searchOS_Lessee(params, typeName, tagName, amenityName, rentTypeName);

//      Lấy giao của hai danh sách (dựa theo ID)
            List<OfficeSpace> intersectionList = new ArrayList<>();
            for (OfficeSpace os1 : listOfficeSpace) {
                for (OfficeSpace os2 : officeSpaces) {
                    if (os1.getOfficeSpaceID().equals(os2.getOfficeSpaceID())) {
                        intersectionList.add(os1);
                        break; // Đã tìm thấy, không cần kiểm tra tiếp
                    }
                }
            }
        }

        List<OfficeSpace> intersectionList = officeSpaceRepoCustom.searchOS_Lessee(params, typeName, tagName, amenityName, rentTypeName);

        List<OfficeSpaceDTO> listofficeSpaceDTO = new ArrayList<OfficeSpaceDTO>();
        for(OfficeSpace item : intersectionList) {
            OfficeSpaceDTO ac = officeSpaceConverter.toOfficeSpaceDTO(item);
            listofficeSpaceDTO.add(ac);
        }
        return listofficeSpaceDTO;
    }
}
