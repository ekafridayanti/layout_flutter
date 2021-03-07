import 'package:flutter/material.dart';
import './detailproduk.dart';

class Produklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange, title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "ACER",
                  description: "Ini Laptop Acer Multiguna dan Canggih",
                  price: 10000,
                  image: "acer.png",
                  star: 1,
                ),
              ));
            },
            //menambah class ProductBox
            child: ProductBox(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "ACER",
              description: "Ini Laptop Acer Multiguna dan Canggih",
              price: 10000,
              image: "acer.png",
              star: 1,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "HP",
                        description: "HP memberikan kemudahan",
                        price: 9000,
                        image: "hp.png",
                        star: 3,
                      )));
            },
            child: ProductBox(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "HP",
              description: "HP memberikan kemudahan",
              price: 9000,
              image: "hp.png",
              star: 3,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "ASUS",
                        description:
                            "Laptop ASUS memiliki produktivitas tinggi",
                        price: 15000,
                        image: "asus.png",
                        star: 4,
                      )));
            },
            child: ProductBox(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "ASUS",
              description: "Laptop ASUS memiliki produktivitas tinggi",
              price: 15000,
              image: "asus.png",
              star: 4,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "Macbook",
                        description: "Macbook memberi kenyaman bagi pengguna",
                        price: 25000,
                        image: "macbook_air.png",
                        star: 5,
                      )));
            },
            child: ProductBox(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Macbook",
              description: "Macbook memberi kenyaman bagi pengguna",
              price: 25000,
              image: "macbook_air.png",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "Samsung",
                        description: "Samsung canggih Nomer 1",
                        price: 6000,
                        image: "samsung.png",
                        star: 3,
                      )));
            },
            child: ProductBox(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Samsung",
              description: "Samsung canggih Nomer 1",
              price: 6000,
              image: "samsung.png",
              star: 3,
            ),
          ),
        ],
      ),
    );
  }
}

//menggunakan Wigdet StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyhomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //variabel yang digunakan untuk menmpung parameter tersebut
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget Container
    return Container(
      //padding
      padding: EdgeInsets.all(10),
      //height: 120
      //menggunakan widget card
      child: Card(
        //membuat tampilan secara horizontal antar imag dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //children digunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + image,
              width: 150,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              //membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //isi tampilan vertical
                children: <Widget>[
                  Text(this.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text(this.description),
                  Text("Price: " + this.price.toString(),
                      style: TextStyle(color: Colors.orange)),
                  //menampilkan Widget Icon dibungkus dengan row
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
