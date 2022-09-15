import 'package:flutter/material.dart';
import 'package:myapp/screens/Home.dart';

class Prefernces extends StatefulWidget {
  const Prefernces({super.key});

  @override
  State<Prefernces> createState() => _PreferncesState();
}

class _PreferncesState extends State<Prefernces> {
  String city = "";

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
                "https://i.pinimg.com/originals/49/32/ae/4932aecc1b05bf5f84a688919ec40d4f.jpg"),
          ),
        ),
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return Home();
                  })));
                });
              },
              child: Text(
                "Back To Home Page",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white38),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 80,
              width: 450,
              child: Card(
                elevation: 20.0,
                shadowColor: Colors.purple,
                margin: EdgeInsets.all(5),
                color: Colors.black26,
                child: Text(
                  "Where you want to travel ?",
                  style: TextStyle(fontSize: 29),
                ),
              ),
            ),
            Divider(height: 50),
            Column(
              children: [
                Container(
                  color: Colors.black54,
                  child: RadioListTile(
                      secondary: Icon(Icons.card_travel),
                      isThreeLine: true,
                      title: Text(
                        "Jordan",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Wadi-Rum",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: "Jordan",
                      groupValue: city,
                      onChanged: ((val) {
                        setState(() {
                          city = val.toString();
                        });
                      })),
                ),
                Divider(
                  height: 20,
                ),
                Container(
                  color: Colors.black54,
                  child: RadioListTile(
                      secondary: Icon(Icons.card_travel),
                      isThreeLine: true,
                      title: Text(
                        "UAE",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Dubai",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: "UAE",
                      groupValue: city,
                      onChanged: ((val) {
                        setState(() {
                          city = val.toString();
                        });
                      })),
                ),
                Divider(
                  height: 20,
                ),
                Container(
                  color: Colors.black54,
                  child: RadioListTile(
                      secondary: Icon(Icons.card_travel),
                      isThreeLine: true,
                      title: Text(
                        "Egypt",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Sharm-ElShaikh",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: "Egypt",
                      groupValue: city,
                      onChanged: ((val) {
                        setState(() {
                          city = val.toString();
                        });
                      })),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
