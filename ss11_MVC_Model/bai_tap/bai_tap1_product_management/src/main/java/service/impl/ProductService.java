package service.impl;

import model.Product;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    ProductRepository productRepository = new ProductRepository();


    @Override
    public List<Product> display() {
        return productRepository.display();
    }

    @Override
    public void add(Product product) {
        productRepository.add(product);
    }

    @Override
    public void edit(int id, Product product) {
        productRepository.edit(id,product);
    }

    @Override
    public void delete(int id) {
        productRepository.delete(id);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }
}
