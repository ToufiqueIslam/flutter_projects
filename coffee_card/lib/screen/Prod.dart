import 'package:flutter/material.dart';

class Prod extends StatefulWidget {
  const Prod({super.key});

  @override
  State<Prod> createState() => _ProdState();
}

class _ProdState extends State<Prod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List"), centerTitle: true),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
              name: "Laptop",
              description: "Good",
              price: 55000,
              image: 'laptop1.jpg',
            ),
            ProductBox(
                name: "Laptop",
                description: "Good",
                price: 40000,
                image: "laptop2.jpg"),
            ProductBox(
                name: "Phone",
                description: "Good",
                price: 12000,
                image: "phone1.jpg"),
            ProductBox(
                name: "Android",
                description: "Smart Phone",
                price: 20000,
                image: "phone2.jpg"),
            ProductBox(
                name: "i-phone",
                description: "IOS",
                price: 35000,
                image: "phone3.jpg"),

                ProductBox(
                name: "i-phone",
                description: "IOS",
                price: 35000,
                image: "phone3.jpg"),

                ProductBox(
                name: "i-phone",
                description: "IOS",
                price: 35000,
                image: "phone3.jpg"),

                ProductBox(
                name: "i-phone",
                description: "IOS",
                price: 35000,
                image: "phone3.jpg"),

                ProductBox(
                name: "i-phone",
                description: "IOS",
                price: 35000,
                image: "phone3.jpg"),
                ProductBox(
                name: "i-phone",
                description: "IOS",
                price: 35000,
                image: "phone3.jpg"),
          ],
        )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 110,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image,
                color: Color.fromRGBO(247, 242, 249, 1),
                colorBlendMode: BlendMode.multiply,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Rs: " + price.toString()),
                        ],
                      )))
            ])));
  }
}


