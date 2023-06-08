package com.fpl.sof2031.repositories;

import com.fpl.sof2031.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
    List<Product> findByDeleted(int i);

    Product findByCodeAndDeleted(String code, int i);

    Product findByIdAndDeleted(Integer id, int i);

    Page<Product> findAllByDeleted(Pageable pageable, int i);
}
