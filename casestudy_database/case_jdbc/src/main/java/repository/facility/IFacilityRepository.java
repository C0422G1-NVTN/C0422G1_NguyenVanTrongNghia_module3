package repository.facility;

import model.Facility.Facility;

import java.util.List;

public interface IFacilityRepository {
    boolean createFacility(Facility facility);
    boolean editFacility(Facility facility,int id);
    boolean deleteFacility(int id);
    List<Facility> findAllFacility();
    List<Facility> findByName();
    Facility findById(int id_search);
}
