import 'package:flutter/material.dart';

class SimpleNavWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ProductList(
      products: List.generate(20, (i) => Product("P${i}", "des${i}")),
    ));
  }
}

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                products[index].title + "\n" + products[index].description),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          new ProductDetail(product: products[index])));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${product.title}"),
      ),
      body: Center(
        child: Text("${product.description}"),
      ),
    );
  }
}
