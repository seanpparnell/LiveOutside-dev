package com.liveoutside.ecom.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
//import org.springframework.stereotype.Repository;
import com.liveoutside.ecom.entity.SubCategory;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "SubCategory", path = "subcategories")
public interface SubCategoryRepository extends JpaRepository<SubCategory, Long> {
    // Add custom queries if needed
}

