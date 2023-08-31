package com.liveoutside.ecom.dao;
import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.stereotype.Repository;
import com.liveoutside.ecom.entity.Category;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "Category", path = "categories")
public interface CategoryRepository extends JpaRepository<Category, Long> {
    // Add custom queries if needed
}

