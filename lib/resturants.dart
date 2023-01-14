import 'package:flutter/material.dart';
import 'package:sakani/main.dart';
import 'package:sakani/models/restuModel.dart';

class Resturants extends StatelessWidget {
  const Resturants({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('Resturants',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 84, 27, 94),
                  fontWeight: FontWeight.bold,
                )),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: _Resturants(),
        ));
  }
}

class _Resturants extends StatefulWidget {
  const _Resturants({super.key});

  @override
  State<_Resturants> createState() => __ResturantsState();
}

class __ResturantsState extends State<_Resturants> {
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
          for (var object in dataList1)
            productBox(object.name, object.img, object.phoneNo),
          Text("حي التراث",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          for (var object in dataList2)
            productBox(object.name, object.img, object.phoneNo),
          Text("فرق",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          for (var object in dataList2)
            productBox(object.name, object.img, object.phoneNo),
        ]),
      ),
    );
  }

  Widget productBox(String name, String img, String phoneNo) {
    late Container con;

    con = Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              img,
              width: 150,
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
}
