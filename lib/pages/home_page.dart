import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  final String id = "home_page";

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'assets/images/image_1.jpeg',
      'assets/images/image_2.jpg',
      'assets/images/image_3.png',
      'assets/images/image_4.jpg',
      'assets/images/image_5.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Apple Products"),
        backgroundColor: Colors.orange[900],
        elevation: 0.0,
        leading: Icon(Icons.menu),
        actions: [
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.orange[400],
            ),
            height: 30.0,
            width: 37.0,
            child: Center(child: Text("5")),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.orange[900],
        child: Column(
          children: [
            // header panel
            Expanded( flex: 3,
              child: Container(
                margin: EdgeInsets.only(bottom: 25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(image: AssetImage('assets/images/image_4.jpg'),
                  fit: BoxFit.cover
                  ),
                ),
                child: Stack(
                  children: [
                    Center(child: Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 35.0),)),
                  SizedBox(height: 25.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                        ),
                        child: MaterialButton(onPressed: (){},
                          child: Text("Shop Now", style: TextStyle(color: Colors.grey),),),
                      ),
                    ],
                  ),
                    SizedBox(height: 30.0),
                  ],
                )
              ),
            ),
            // body
            Expanded(
              flex: 6,
              child: ListView(
                children: list.map((e) => getlist(e)).toList(),
              )
            ),
          ],
        ),
      ),
    );
  }

  // gridView children
  Widget getlist(index) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.all(10.0),
      height: (MediaQuery.of(context).size.height / 3),
      width: double.infinity,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(15.0),
       image: DecorationImage(
         image: AssetImage(index),
         fit: BoxFit.cover
       )
     ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.favorite, color: Colors.red, size: 30.0,),
        ],
      )
    );
  }
}
