package com.liveoutside.ecom.dao;
import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.stereotype.Repository;
import com.liveoutside.ecom.entity.Product;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;



@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long> {
    Page<Product> findBySubcategoryId(@Param("id") Long id, Pageable pageable);

//        default Page<Product> findBySubcategory_Id(@Param("id") Long id, Pageable pageable) {
//        System.out.println("findBySubcategory_Id invoked with id: " + id);
//        return productRepository.findBySubcategory_Id(id, pageable);
//    }

    // Add custom queries if needed
}
