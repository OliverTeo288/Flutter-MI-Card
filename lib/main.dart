import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Stateless widget means its get build whenever it hot reloads
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('images/oliver.jpeg'),
            ),
            Text("Oliver Teo",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                )),
            Text("CLOUD ENGINEER",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontFamily: 'Trispace',
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(color: Colors.teal.shade100
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text("+65 9753 8945",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      )),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text("oliver_teo288@hotmail.com",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.teal.shade900))),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
