import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product_Detail extends StatefulWidget {
  @override
  _Product_DetailState createState() => _Product_DetailState();
}

class _Product_DetailState extends State<Product_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        height: 50,
        child: RaisedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Add to Cart',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          color: Colors.deepPurple,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://post.healthline.com/wp-content/uploads/2020/09/healthy-eating-ingredients-1200x628-facebook-1200x628.jpg'))),
              //color: Colors.brown,
            ),
            Container(
              height: 85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                      "Non-Fried Chicken Curry Puff",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text("With cucumber sauce"),
                  )
                ],
              ),
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 85,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                  Text(
                    "2",
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
