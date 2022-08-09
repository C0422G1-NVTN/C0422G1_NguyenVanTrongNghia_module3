package service.facility;

import model.Facility.Facility;
import model.Facility.RentType;
import model.Facility.ServiceType;
import repository.facility.impl.FacilityRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FacilityService implements IFacilityService{
    private final String REGEX_NAME_FACILITY = "([A-Z][A-Za-z0-9]+\\s?)+";

    FacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public Map<String,String> createFacility(Facility facility) {
        Map<String, String> mapErrors = new HashMap<>();

        if (!facility.getName().isEmpty()) {
            if (!facility.getName().matches(REGEX_NAME_FACILITY)) {
                mapErrors.put("name", "Please input right format!");
            }
        } else {
            mapErrors.put("name", "Please input name!");
        }

        if (facility.getMaxPeople()>0){
            mapErrors.put("maxPeople","Please input right format!");
        }else {
            mapErrors.put("maxPeople","Please input maxPeople!");
        }

        if (facility.getNumberFloor()>0){
            mapErrors.put("number_floor","Please input right format!");
        }else {
            mapErrors.put("number_floor","Please input maxPeople!");
        }

        if (mapErrors.size() == 0) {
            this.facilityRepository.createFacility(facility);
        }
        return mapErrors;
    }

    @Override
    public boolean editFacility(Facility facility, int id) {
        return facilityRepository.editFacility(facility,id);
    }

    @Override
    public boolean deleteFacility(int id) {
        return facilityRepository.deleteFacility(id);
    }

    @Override
    public List<Facility> findAllFacility() {
        return facilityRepository.findAllFacility();
    }

    @Override
    public List<Facility> findByName() {
        return facilityRepository.findByName();
    }

    @Override
    public Facility findById(int id_search) {
        return facilityRepository.findById(id_search);
    }

    @Override
    public List<ServiceType> getServiceTypeList() {
        return facilityRepository.getServiceTypeList();
    }

    @Override
    public List<RentType> getRentalTypeList() {
        return facilityRepository.getRentalTypeList();
    }
}
