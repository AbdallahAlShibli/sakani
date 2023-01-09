import 'package:flutter/material.dart';
import 'package:sakani/resturants.dart';
import 'package:sakani/skanat.dart';
import 'package:sakani/transportations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAKANI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SAKANI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 84, 27, 94),
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildButton("السكنات", 1),
            _buildButton("النقليات", 2),
            _buildButton("المطاعم", 3),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildButton(s, i) {
    late Container button;

    if (i == 1) {
      button = Container(
        padding: EdgeInsets.all(10),
        width: 250,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Skanat()),
            );
          },
          child: Text(s, style: TextStyle(color: Colors.white, fontSize: 20)),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 50),
            primary: const Color.fromARGB(255, 84, 27, 94),
          ),
        ),
      );
    } else if (i == 2) {
      button = Container(
        padding: EdgeInsets.all(10),
        width: 250,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Transportation()),
            );
          },
          child: Text(s, style: TextStyle(color: Colors.white, fontSize: 20)),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 50),
            primary: const Color.fromARGB(255, 84, 27, 94),
          ),
        ),
      );
    } else {
      button = Container(
        padding: EdgeInsets.all(10),
        width: 250,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Resturants()),
            );
          },
          child: Text(s, style: TextStyle(color: Colors.white, fontSize: 20)),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 50),
            primary: const Color.fromARGB(255, 84, 27, 94),
          ),
        ),
      );
    }
    return button;
  }
}
