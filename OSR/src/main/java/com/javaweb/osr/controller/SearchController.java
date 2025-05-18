package com.javaweb.osr.controller;

import com.javaweb.osr.dto.OfficeSpaceDTO;
import com.javaweb.osr.service.Interface.OfficeSpaceService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class SearchController {

    @Autowired
    private OfficeSpaceService officeSpaceService;

    @GetMapping(value = "/searchOS_Lessee")
    @ResponseBody
    public List<OfficeSpaceDTO> searchAccom(Model model,
                              @RequestParam Map<String, Object> params,
                              @RequestParam (name = "type", required = false) List<String> type,
                              @RequestParam (name = "tagName", required = false) List<String> tagName,
                              @RequestParam (name = "amenityName", required = false) List<String> amenityName,
                              @RequestParam (name = "rentTypeName", required = false) List<String> rentTypeName
                              ) {

        List<OfficeSpaceDTO> osSearch_Lessee = officeSpaceService.searchOS_Lessee(params, type, tagName, amenityName, rentTypeName);

        return osSearch_Lessee;
    }

//	@GetMapping(value = "/searchOS_Lessee")
//	public String searchAccom(Model model,
//                              @RequestParam Map<String, Object> params,
//                              @RequestParam (name = "type", required = false) List<String> type,
//                              @RequestParam (name = "tagName", required = false) List<String> tagName,
//                              @RequestParam (name = "amenityName", required = false) List<String> amenityName,
//                              @RequestParam (name = "rentTypeName", required = false) List<String> rentTypeName,
//                              @RequestParam (name = "page", defaultValue = "1") int page) {
//
//        List<OfficeSpaceDTO> acSearch = officeSpaceService.searchOS_Lessee(params, type, tagName, amenityName, rentTypeName);
//        return "propertiesSearch";
//	}
}