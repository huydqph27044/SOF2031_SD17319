package com.fpl.sof2031.repositories;

import com.fpl.sof2031.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    List<Category> findByDeleted(int i);

    Category findByMa(String ma);

    Category findByMaAndDeleted(String ma, int i);
}
