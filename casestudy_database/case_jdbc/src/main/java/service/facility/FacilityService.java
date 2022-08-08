package service.facility;

import model.Facility.Facility;
import repository.facility.impl.FacilityRepository;

import java.util.List;

public class FacilityService implements IFacilityService{
    FacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public boolean createFacility(Facility facility) {
        return facilityRepository.createFacility(facility);
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
}
