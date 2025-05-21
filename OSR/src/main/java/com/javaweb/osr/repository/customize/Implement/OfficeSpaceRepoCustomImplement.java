package com.javaweb.osr.repository.customize.Implement;

import com.javaweb.osr.entity.OfficeSpace;
import com.javaweb.osr.repository.customize.Interface.OfficeSpaceRepoCustom;
import com.javaweb.osr.util.ListUtil;
import com.javaweb.osr.util.NumberUtil;
import com.javaweb.osr.util.StringUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import org.springframework.stereotype.Repository;

import java.util.*;
import java.util.stream.Collectors;

@Repository
public class OfficeSpaceRepoCustomImplement implements OfficeSpaceRepoCustom {

	@PersistenceContext
	private EntityManager entityManager;

	public static void joinTableOS(Map<String, Object> params,
								   List<String> type, List<String> tagName, List<String> amenityName, List<String> rentTypeName,
								   StringBuilder sql) {

		if (ListUtil.checkList(type))
			sql.append(" join typeoffice on officespace.typeOfficeID = type.typeOfficeID");

		if (ListUtil.checkList(tagName))
			sql.append(" join os_tag on officespace.officeSpaceID = os_tag.officeSpaceID"
					+ " join tag on os_tag.tagID = tag.tagID");

		if (ListUtil.checkList(amenityName))
			sql.append(" join os_amenity on officespace.officeSpaceID = os_amenity.officeSpaceID"
					+ " join amenity on os_amenity.amenityID = amenity.amenityID");

		boolean flag = false;
		String minPrice = (String) params.get("minPrice");
		String maxPrice = (String) params.get("maxPrice");
		if (StringUtil.checkString(minPrice) || StringUtil.checkString(maxPrice)) {
			sql.append(" join os_renttype on officespace.officeSpaceID = os_renttype.officeSpaceID");
			flag = true;
		}

		if (ListUtil.checkList(rentTypeName)) {
			if (flag)
				sql.append(" join renttype on os_renttype.rentTypeID = renttype.rentTypeID");
			else
				sql.append(" join os_renttype on officespace.officeSpaceID = os_renttype.officeSpaceID"
						+ " join renttype on os_renttype.rentTypeID = renttype.rentTypeID");
		}

		String buildingName = (String) params.get("buildingName");
		String street = (String) params.get("street");
		String ward_commune = (String) params.get("ward_commune");
		String district = (String) params.get("district");
		String city_province = (String) params.get("city_province");
		if (StringUtil.checkString(buildingName) || StringUtil.checkString(street)
				|| StringUtil.checkString(ward_commune) || StringUtil.checkString(district)
				|| StringUtil.checkString(city_province))
			sql.append(" join building on officespace.buildingID = building.buildingID");


	}

	public static void queryNormal(Map<String, Object> params, StringBuilder where) {

		for (Map.Entry<String, Object> item : params.entrySet()) {
			if (!item.getKey().equals("amenityName") && !item.getKey().equals("rentTypeName")
					&& !item.getKey().equals("type") && !item.getKey().equals("tagName")
					&& !item.getKey().equals("buildingName")
					&& !item.getKey().equals("street") && !item.getKey().equals("ward_commune")
					&& !item.getKey().equals("district") && !item.getKey().equals("city_province")
					&& !item.getKey().startsWith("min") && !item.getKey().startsWith("max")) {

				String value = item.getValue().toString();
				if (StringUtil.checkString(value)) {
					if (NumberUtil.isNumber(value))
						where.append(" AND " + item.getKey() + " = " + value);
					else
						where.append(" AND " + item.getKey() + " LIKE '%" + value + "%'");
				}
			}
		}
	}

	public static void querySpecial(Map<String, Object> params, List<String> type, List<String> tagName, List<String> amenityName, List<String> rentTypeName, StringBuilder where) {

		String buildingName = (String) params.get("buildingName");
		if (StringUtil.checkString(buildingName))
			where.append(" AND buildingName like" + "'%" + buildingName + "%'");

		String street = (String) params.get("street");
		if (StringUtil.checkString(street))
			where.append(" AND street like" + "'%" + street + "%'");

		String ward_commune = (String) params.get("ward_commune");
		if (StringUtil.checkString(ward_commune))
			where.append(" AND ward like" + "'%" + ward_commune + "%'");

		String district = (String) params.get("district");
		if (StringUtil.checkString(district))
			where.append(" AND district like" + "'%" + district + "%'");

		String city_province = (String) params.get("city_province");
		if (StringUtil.checkString(city_province))
			where.append(" AND city like" + "'%" + city_province + "%'");

		String minCapacity = (String) params.get("minCapacity");
		if (StringUtil.checkString(minCapacity))
			where.append(" AND capacity >= " + minCapacity);

		String maxCapacity = (String) params.get("maxCapacity");
		if (StringUtil.checkString(maxCapacity))
			where.append(" AND capacity <= " + maxCapacity);

		String minPrice = (String) params.get("minPrice");
		if (StringUtil.checkString(minPrice))
			where.append(" AND price >= " + minPrice);

		String maxPrice = (String) params.get("maxPrice");
		if (StringUtil.checkString(maxPrice))
			where.append(" AND price <= " + maxPrice);

		String minSize = (String) params.get("minSize");
		if (StringUtil.checkString(minSize))
			where.append(" AND size >= " + minSize);

		String maxSize = (String) params.get("maxSize");
		if (StringUtil.checkString(maxSize))
			where.append(" AND size <= " + maxSize);

		if (ListUtil.checkList(type)) {
			where.append(" AND (");
			String sql = type.stream().map(it -> "type like" + "'%" + it + "%'")
					.collect(Collectors.joining(" or "));
			where.append(sql);
			where.append(" ) ");
		}
		if (ListUtil.checkList(tagName)) {
			where.append(" AND (");
			String sql = tagName.stream().map(it -> "tagName like" + "'%" + it + "%'")
					.collect(Collectors.joining(" or "));
			where.append(sql);
			where.append(" ) ");
		}

		if (ListUtil.checkList(amenityName)) {
			where.append(" AND (");
			String sql = amenityName.stream().map(it -> "amenityName like" + "'%" + it + "%'")
					.collect(Collectors.joining(" or "));
			where.append(sql);
			where.append(" ) ");
		}

		if (ListUtil.checkList(rentTypeName)) {
			where.append(" AND (");
			String sql = rentTypeName.stream().map(it -> "rentTypeName like" + "'%" + it + "%'")
					.collect(Collectors.joining(" or "));
			where.append(sql);
			where.append(" ) ");
		}
	}

	private void getLatestStatus(StringBuilder sql) {

		sql.append(
				" join ( " +
						"   select os1.officeSpaceID, s.statusName " +
						"   from OS_Status os1 " +
						"   join Status s on os1.statusID = s.statusID " +
						"   where os1.startDate = ( " +
						"       select max(os2.startDate) " +
						"       from OS_Status os2 " +
						"       where os2.officeSpaceID = os1.officeSpaceID " +
						"   ) " +
						") latest_status on officespace.officeSpaceID = latest_status.officeSpaceID "
		);
	}


	@Override
	public List<OfficeSpace> searchOS_Lessee(Map<String, Object> params,
											 List<String> type, List<String> tagName, List<String> amenityName, List<String> rentTypeName) {

		StringBuilder sql = new StringBuilder("select officespace.officeSpaceID, title, " +
				"size, capacity, buildingID, lessorID, typeOfficeID from officespace ");
		joinTableOS(params, type, tagName, amenityName, rentTypeName, sql);
		getLatestStatus(sql);
		StringBuilder where = new StringBuilder(" where 1 = 1 ");
		queryNormal(params, where);
		querySpecial(params, type, tagName, amenityName, rentTypeName, sql);
		where.append(" and latest_status.statusName = 'Available' ");
		sql.append(where);
		sql.append(" group by officespace.officeSpaceID");
		System.out.println(sql);

		Query query = entityManager.createNativeQuery(sql.toString(), OfficeSpace.class);

		return query.getResultList();
	}

//	@Override
//	public List<OfficeSpace> findAllOSAvailable() {
//		StringBuilder sql = new StringBuilder("select officespace.officeSpaceID, accommodationName, street, ward, district, city, size, numberOfRooms, status, lessorID, salesID, direction, image, map, officespace.officeSpaceID from officespace ");
//		StringBuilder where = new StringBuilder(" where status = 'Available' ");
//		sql.append(where);
//		Query query = entityManager.createNativeQuery(sql.toString(), OfficeSpace.class);
//
//		return query.getResultList();
//	}

//	@Override
//	public List<OfficeSpace> searchOSAvailable(Map<String, Object> params,
//											   List<String> type, List<String> tagName, List<String> amenityName, List<String> rentTypeName) {
//		StringBuilder sql = new StringBuilder("select officespace.officeSpaceID, accommodationName, street, ward, district, city, size, numberOfRooms, status, lessorID, salesID, direction, image, map, officespace.officeSpaceID from officespace ");
//		joinTableOS(params, type, tagName, amenityName, rentTypeName, sql);
//		StringBuilder where = new StringBuilder(" where status = 'Available' ");
//		queryNormal(params, where);
//		querySpecial(params, type, tagName, amenityName, rentTypeName, sql);
//		sql.append(where);
//		sql.append(" group by officespace.officeSpaceID");
//		System.out.println(sql);
//
//		Query query = entityManager.createNativeQuery(sql.toString(), OfficeSpace.class);
//
//		return query.getResultList();
//	}
}