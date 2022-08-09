package service.facility;

import model.Facility.Facility;
import model.Facility.RentType;
import model.Facility.ServiceType;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    Map<String,String> createFacility(Facility facility);
    boolean editFacility(Facility facility,int id);
    boolean deleteFacility(int id);
    List<Facility> findAllFacility();
    List<Facility> findByName();
    Facility findById(int id_search);
    List<ServiceType> getServiceTypeList();
    List<RentType> getRentalTypeList();
}
