import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<String> url = [
    'https://seefah.com/wp-content/uploads/2020/08/Good-Food-uai-258x258.jpg',
    'https://www.emquartier.co.th/wp-content/uploads/2018/01/980x525-6-1480x1480.jpg',
    'https://static01.nyt.com/images/2020/03/03/well/physed-foods/physed-foods-mediumSquareAt3X.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUAY2yo9m-MJT4FTfTuRFdpCAqBrlWpCtjkA&usqp=CAU'
  ];
  List menu = [
    {
      'name': 'ผักสลัด',
      "price": "฿ 100",
      "image": "",
      "Description": 'สลัดเพื่อสุขภาพ'
    },
    {
      'name': 'ก๋วยเตี๋ยว',
      "price": "฿ 40",
      "image": "",
      "Description": ''
    },
    {
      'name': 'ต้มยำ',
      "price": "฿ 120",
      "image": "",
      "Description": ''
    },
    {
      'name': 'ต้มยำ',
      "price": "฿ 120",
      "image": "",
      "Description": ''
    },
    {
      'name': 'ต้มยำ',
      "price": "฿ 120",
      "image": "",
      "Description": ''
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Food",
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.monetization_on),
                      Text(
                        "โปรโมชั่น",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
              Container(
                //margin: EdgeInsets.only(top: 40,),
                height: 200,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(6),
                // color: Colors.black38,
                child: ListView(
                  //padding: EdgeInsets.all(6),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                        children: url
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withOpacity(0.3),
                                      spreadRadius: 0.5,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage(e),
                                  ),
                                ),
                              ),
                            )
                            .toList())
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.monetization_on),
                          Text(
                            "รายการอาหาร",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 45),
                      child: SingleChildScrollView(
                        child: Column(
                            children: menu
                                .map((menu) => Card(
                                      elevation: 10,
                                      child: ListTile(
                                        leading: Container(
                                          height: 100,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Colors.brown,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                        title: Text(menu['name']),
                                        subtitle: Text(menu['Description']),
                                        trailing: Text(menu['price']),
                                      ),
                                    ))
                                .toList()),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
