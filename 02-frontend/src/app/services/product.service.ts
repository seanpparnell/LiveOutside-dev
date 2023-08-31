import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Product } from '../common/product';
import { map } from 'rxjs';
import { Category } from '../common/category';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  

  private baseUrl = 'http://localhost:8080/api/products';
  private categoryUrl = 'http://localhost:8080/api/categories'

  constructor(private httpClient: HttpClient) { }

  getProductList(theSubCategoryId: number): Observable<Product[]> {

    // @TODO: need to build URL based on category id ..... will come back to this!
    const searchUrl = `${this.baseUrl}/search/findBySubcategoryId?id=${theSubCategoryId}`;
    

    return this.httpClient.get<GetResponseProducts>(searchUrl).pipe(
      map(response => response._embedded.products)
    )
  }

  getCategories(): Observable<Category[]> {
    return this.httpClient.get<GetResponseCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.category)
    )
  }
}

interface GetResponseProducts {
  _embedded: {
    products: Product[];
  }
}

interface GetResponseCategory {
  _embedded: {
    category: Category[];
  }
}
