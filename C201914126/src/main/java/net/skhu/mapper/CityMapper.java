package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import net.skhu.dto.City;

@Mapper
public interface CityMapper {
	@Select("SELECT c.*, d.districtName FROM city c LEFT JOIN district d ON c.districtId = d.id")
	List<City> findAll();

	@Select("SELECT c.*, d.districtName FROM city c LEFT JOIN district d ON c.districtId = d.id" + " WHERE d.districtName LIKE #{districtName}")
	List<City> findByName(String districtName);

	@Select("SELECT c.*, d.districtName FROM city c LEFT JOIN district d ON c.districtId = d.id" + " WHERE c.id =#{id}")
	City findById(int id);
}






