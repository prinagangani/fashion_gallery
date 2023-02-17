import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List img = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
  ];
  List name = [
    "Shirt",
    "Earings",
    "Jeans",
    "Watch",
    "Hot Wear",
    "Combo",
    "Shoes",
    "Top",
  ];
  List price = [
    "\$25.33",
    "\$15.20",
    "\$72.30",
    "\$99.99",
    "\$45.90",
    "\456.27",
    "\$30.33",
    "\$40.00",
  ];
  List rat = [
    "4.0",
    "4.7",
    "4.5",
    "4.3",
    "4.1",
    "4.8",
    "5.0",
    "4.9",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff9fdcda),
        appBar: AppBar(
          title: Text("SHOPPING GALLERY UI"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) =>
                box(name[index], img[index], price[index], rat[index]),
            itemCount: img.length,
          ),
        ),
      ),
    );
  }

  Widget box(String name, String img, String price, String rat) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Image.asset(img,height: 155,width: 155,),

        ),
        Container(
          decoration: BoxDecoration(color: Colors.green.shade300,borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(12))),
          height: 20,
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(rat),
              Icon(
                Icons.star,
                size: 15,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 25,
            decoration: BoxDecoration(color: Colors.black38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${name}",style: TextStyle(color: Colors.white),),
                Text("${price}",style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
