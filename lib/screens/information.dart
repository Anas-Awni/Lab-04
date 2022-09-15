import 'package:flutter/material.dart';

import 'Home.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  String selectedF = "2-5 Person";
  List myListItems = [
    "1 Person",
    "2 Person",
    "2-5 Person",
    "6-8 Person",
  ];

  String yourClass = "";
  bool havePet = false;
  bool haveMed = false;
  bool haveWep = false;

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
                "https://i.pinimg.com/736x/ae/2b/3a/ae2b3a4784d66e05060281662d967b3c.jpg"),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Enter your Information",
                style: TextStyle(
                    backgroundColor: Colors.yellow.shade200,
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 50,
              ),
              Text(
                "How Many Person?",
                style: TextStyle(
                    backgroundColor: Colors.black26,
                    fontSize: 30,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.amberAccent,
                thickness: 5,
                height: 50,
              ),
              DropdownButton(
                  value: selectedF,
                  items: myListItems
                      .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedF = val.toString();
                    });
                  }),
              //  DropdownButton(items: items, onChanged: onChanged)
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
                    "Please Select your Class ?",
                    style: TextStyle(fontSize: 29, color: Colors.amber),
                  ),
                ),
              ),
              Divider(
                color: Colors.amberAccent,
                thickness: 5,
                height: 50,
              ),
              Column(
                children: [
                  Container(
                    color: Colors.black54,
                    child: RadioListTile(
                        secondary: Icon(Icons.card_travel),
                        isThreeLine: true,
                        title: Text(
                          "Business",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Hot! Only 200 Dollar per person",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: "Business",
                        groupValue: yourClass,
                        onChanged: ((val) {
                          setState(() {
                            yourClass = val.toString();
                          });
                        })),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    color: Colors.black54,
                    child: RadioListTile(
                        secondary: Icon(Icons.card_travel),
                        isThreeLine: true,
                        title: Text(
                          "Economy",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Hot! 50 Dollar per person",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: "Economy",
                        groupValue: yourClass,
                        onChanged: ((val) {
                          setState(() {
                            yourClass = val.toString();
                          });
                        })),
                  ),
                  Divider(
                    height: 30,
                  ),
                  Text(
                    "Please Select whatever you have during the trip?",
                    style: TextStyle(
                        backgroundColor: Colors.black45,
                        fontSize: 30,
                        color: Colors.amber.shade400,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.amberAccent,
                    thickness: 5,
                    height: 50,
                  ),
                  CheckboxListTile(
                      activeColor: Colors.green,
                      tileColor: Colors.cyan,
                      title: Text("Pets"),
                      subtitle: Text("Cats,Dogs,Rabbits"),
                      value: havePet,
                      onChanged: (val) {
                        setState(() {
                          havePet = val!;
                        });
                      }),
                  CheckboxListTile(
                      activeColor: Colors.green,
                      tileColor: Colors.cyan,
                      title: Text("Medicine"),
                      subtitle: Text("Capsules,Drops,Injections"),
                      value: haveMed,
                      onChanged: (val) {
                        setState(() {
                          haveMed = val!;
                        });
                      }),
                  CheckboxListTile(
                      activeColor: Colors.green,
                      tileColor: Colors.cyan,
                      title: Text("Weapon"),
                      subtitle: Text("Pistols ,Rifles,Shotguns"),
                      value: haveWep,
                      onChanged: (val) {
                        setState(() {
                          haveWep = val!;
                        });
                      }),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: ((context) {
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
