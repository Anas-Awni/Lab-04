import 'package:flutter/material.dart';
import 'package:myapp/screens/information.dart';
import 'package:myapp/screens/preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.pinimg.com/originals/c1/6e/4d/c16e4dfe6310918c6c43dbc3c3cea486.png"),
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 110,
              width: 250,
              child: Card(
                elevation: 20.0,
                shadowColor: Colors.greenAccent,
                margin: EdgeInsets.all(5),
                color: Colors.indigo,
                child: Text(
                  "Welcome To Travel App",
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
            Divider(height: 250),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Prefernces();
                  })));
                });
              },
              icon: Icon(Icons.near_me),
              label: Text(
                "Go To Prefrence Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Information();
                  })));
                });
              },
              icon: Icon(Icons.near_me),
              label: Text(
                " Fill your Information ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
