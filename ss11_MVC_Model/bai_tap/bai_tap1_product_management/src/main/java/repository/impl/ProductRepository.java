package repository.impl;

import model.Product;
import repository.IProductRepository;


import java.util.*;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "Áo", 10000));
        productMap.put(2, new Product(2, "Quần", 20000));
        productMap.put(3, new Product(3, "Giày", 30000));
        productMap.put(4, new Product(4, "Mũ", 1000));
    }

    @Override
    public List<Product> display() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void add(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public void edit(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void delete(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        for (Integer i : productMap.keySet()) {
            if (productMap.get(i).getName().toLowerCase().contains(name.toLowerCase())) {
                productList.add(productMap.get(i));
            }
        }
        return productList;
    }
}
