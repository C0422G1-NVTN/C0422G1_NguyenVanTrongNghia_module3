package repository;

import model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> display();

    void add(Product product);

    void edit(int id,Product product);

    void delete(int id);

    Product findById(int id);

    List<Product> findByName(String name);
}
