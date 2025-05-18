package com.javaweb.osr.converter;

import com.javaweb.osr.dto.OfficeSpaceDTO;
import com.javaweb.osr.entity.*;
import com.javaweb.osr.repository.systemInterface.*;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;



@Component
public class OfficeSpaceConverter {
	
	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private BuildingRepository buildingRepository;

	@Autowired
	private TypeOfficeRepository typeOfficeRepository;

	@Autowired
	private OS_TagRepository osTagRepository;

	@Autowired
	private ImageRepository imageRepository;
	
	@Autowired
	private OS_AmenityRepository osAmenityRepository;
	
	@Autowired
	private OS_RentTypeRepository osRentTypeRepository;
	
	public OfficeSpaceDTO toOfficeSpaceDTO (OfficeSpace item) {

		// Covert các field basic
		OfficeSpaceDTO os = modelMapper.map(item, OfficeSpaceDTO.class);

		// Covert các field từ Building
		Building building = buildingRepository.findById(item.getBuilding().getBuildingID()).get();
		os.setBuildingName(building.getBuildingName());
		os.setAddress(building.getStreet() + ", " + building.getWard_commune() + ", " + building.getDistrict() + ", " + building.getCity_province());

		// Covert các field từ Type
		TypeOffice type = typeOfficeRepository.findById(item.getTypeOffice().getTypeOfficeID()).get();
		os.setType(type.getType());

		// Covert các field từ Tag
		List<OS_Tag> tag = osTagRepository.findAllByOfficeSpaceID(item);
		String tagName = tag.stream().map(it -> "" + it.getTag().getTagName()).collect(Collectors.joining(","));
		String[] tagNameArray = tagName.split(",");
		os.setTagName(tagNameArray);

		// Covert các field từ Image
		List<Image> im = imageRepository.findAllByOfficeSpaceID(item);
		String imageName = im.stream().map(it -> "" + it.getImageName()).collect(Collectors.joining(","));
		String[] imageNameArray = imageName.split(",");
		os.setImageName(imageNameArray);

		// Covert các field từ Amenity
		List<OS_Amenity> am = osAmenityRepository.findAllByOfficeSpaceID(item);
		String amenityName = am.stream().map(it -> "" + it.getAmenity().getAmenityName()).collect(Collectors.joining(","));
		String[] amenityNameArray = amenityName.split(",");
		os.setAmenityName(amenityNameArray);

		String quantity = am.stream().map(it -> "" + it.getQuantity()).collect(Collectors.joining(","));
		String[] quantityArray = quantity.split(",");
		os.setQuantity(quantityArray);

		// Covert các field từ RentType
		List<OS_RentType> deRT = osRentTypeRepository.findAllByOfficeSpaceID(item);
		String rentType = deRT.stream().map(it -> it.getRentType().getRentTypeName()).collect(Collectors.joining(","));
		String[] rt = rentType.split(",");
		os.setRentTypeName(rt);

		String price = deRT.stream().map(it -> "" + it.getPrice()).collect(Collectors.joining(","));
		String[] priceArray = price.split(",");
		os.setPrice(priceArray);

		String deposit = deRT.stream().map(it -> "" + it.getDeposit()).collect(Collectors.joining(","));
		String[] depositArray = deposit.split(",");
		os.setDeposit(depositArray);

		return os;
	}
	
}