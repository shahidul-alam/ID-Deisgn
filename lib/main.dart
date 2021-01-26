import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CardApp(),
  ));
}

class CardApp extends StatefulWidget {
  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  int cardLevel = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              cardLevel += 1;
            });
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.grey,
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/new.png'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[900],
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.black, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Shahidul Alam',
                style: TextStyle(
                    color: Colors.black, letterSpacing: 2, fontSize: 28),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Current Level',
                style: TextStyle(color: Colors.black, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$cardLevel',
                style: TextStyle(
                    color: Colors.black, letterSpacing: 2, fontSize: 28),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.email),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'shahidulalam234@gmail.com',
                    style: TextStyle(fontSize: 18.0, letterSpacing: 1.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
