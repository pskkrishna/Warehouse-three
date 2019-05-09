package com.app.dao;

import java.util.List;

import com.app.model.ShipmentType;

public interface IShipmentTypeDao {

	public Integer saveShipmentType(ShipmentType s);

	public void updateShipementType(ShipmentType s);

	public void deleteShipmentType(Integer id);

	public ShipmentType getShipmentById(Integer id);

	public List<ShipmentType> getAllShipmentTypes();
	
	public List<Object[]> getShipmentCountByMode();
}
