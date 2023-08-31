import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/services/product.service';
import { Product } from 'src/app/common/product';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  products: Product[] = [];
  currentSubCategoryId: number = 1 ;

  constructor(private productService: ProductService,
              private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.paramMap.subscribe(() => {
      this.listProducts();
    });
  }

  listProducts() {
    //check if "id" param is available
    const hasSubCategoryId: boolean = this.route.snapshot.paramMap.has('id');

    if (hasSubCategoryId) {
      // get "id" param string, convert to number using "+" symbol
      this.currentSubCategoryId = +this.route.snapshot.paramMap.get('id')!;

    }
      else {
        // no category id avail ... default to subcategory id 1
        this.currentSubCategoryId = 1;
      }

    // now get the products for the given subcategory id

    this.productService.getProductList(this.currentSubCategoryId).subscribe(
      data => {
        this.products = data;
      }
    )
  }

}
