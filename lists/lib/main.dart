import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var str = [
      "Apple",
      "Ball",
      "Cat",
      "Dog",
      "Elephant",
      "Fan",
      "Goat",
      "Home",
      "Ice-cream",
      "Jug",
      "Kite",
      "Lion",
      "Monkey",
      "Nest",
      "Orange",
      "Peacock",
      "Queen",
      "Rose",
      "Swan",
      "Telephone",
      "Umbrella",
      "Van",
      "Watch",
      "Xylophone",
      "Yatch",
      "Zebra"
    ];
    var str1 = [
      "assets/images/a.jpg",
      "assets/images/b.jpg",
      "assets/images/c.jpg",
      "assets/images/d.jpg",
      "assets/images/e.png",
      "assets/images/f.jpg",
      "assets/images/g.jpg",
      "assets/images/h.jpg",
      "assets/images/i.png",
      "assets/images/j.jpg",
      "assets/images/k.gif",
      "assets/images/l.jpg",
      "assets/images/m.jpg",
      "assets/images/n.png",
      "assets/images/o.jpg",
      "assets/images/p.jpg",
      "assets/images/q.jpg",
      "assets/images/r.jpg",
      "assets/images/s.jpg",
      "assets/images/t.jpg",
      "assets/images/u.jpg",
      "assets/images/v.jpg",
      "assets/images/w.jpg",
      "assets/images/x.jpg",
      "assets/images/y.jpg",
      "assets/images/z.jpg"
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Alphabets"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  top: 20, left: 16.0, right: 8.0, bottom: 32.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      str[index].substring(0, 1),
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(color: Colors.red)),
                    child: Image.asset(
                      str1[index],
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      str[index],
                      style: TextStyle(fontSize: 24.0),
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: str.length,
        ));
  }
}
