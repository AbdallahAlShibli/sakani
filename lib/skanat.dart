import 'package:flutter/material.dart';

import 'models/sakanModel.dart';

class Skanat extends StatelessWidget {
  const Skanat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('Skanat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 84, 27, 94),
                  fontWeight: FontWeight.bold,
                )),
          ),
          body: _Skanat(),
        ));
  }
}

class _Skanat extends StatefulWidget {
  const _Skanat({super.key});

  @override
  State<_Skanat> createState() => __SkanatState();
}

class __SkanatState extends State<_Skanat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Text("بركة الموز",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          for (var object in dataListS1)
            productBox(object.name, object.imgsList, object.phoneNo, object.desc),
          Text("حي التراث",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          for (var object in dataListS2)
            productBox(object.name, object.imgsList, object.phoneNo, object.desc),
        ]),
      ),
    );
  }

  Widget productBox(String name, img, String phoneNo, String desc) {
    late Container con;

    con = Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                shape: BoxShape.rectangle,
                border: Border.all(
                  width: 0.5,
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Color.fromARGB(255, 163, 163, 163).withOpacity(0.5),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: Offset(0, 3), // changes position of shadow
                //   ),
                // ],
              ),
              width: 155,
              height: 100,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                    for(var i = 0; i< img.length; i++) 
                      imageBox(img[i]),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // Text("Price: 12"),
                    Text("Phone: " + phoneNo),
                    Text("Description: " + desc),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     // Icon(Icons.favorite_border),
                    //     Text("Add to Cart"),
                    //   ],
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

    return con;
  }

  Widget imageBox(imgurl) {
    print(imgurl);
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 163, 163, 163).withOpacity(0.3),
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Image.asset(
        imgurl,
        width: 150,
      ),
    );
  }
}
