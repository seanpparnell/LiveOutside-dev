export class Product {

  constructor(public sku: string,
              public name: string,
              public description: string,
              public imageUrl: string,
              public unitsInStock: number,
              public unitPrice: number,
  ) {

  }
}
