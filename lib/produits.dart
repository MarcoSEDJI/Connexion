import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get leading => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const <Widget>[
          Icon(Icons.notifications),
          SizedBox(width: 5.0),
          Icon(Icons.shopping_cart),
          SizedBox(width: 15.0),
        ],
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.grey),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.account_circle, size: 80),
                    const SizedBox(width: 5.0),
                    // ignore: prefer_const_constructors
                    Text('NAME \nJob',
                        style: const TextStyle(color: Colors.black))
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('HOME'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('ABOUT'),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('SETTINGS'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone_android),
              title: const Text('PHONE'),
              onTap: () {
                // Navigator.pop(context);
              },
            ),

            const SizedBox(
              height: 30.0,
            ),

            Center(
              child: Row(
                children: const [
                  Expanded(child: Divider()),
                  Text("Login with"),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 7, 62, 107),
                  size: 24.0,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                  size: 24.0,
                ),
                Image(
                  image: AssetImage('assets/images/google.png'),
                  height: 20,
                  width: 20,
                ),
                Icon(
                  Icons.apple_sharp,
                  color: Colors.black,
                  size: 28.0,
                ),
              ],
            ),
          ],
        ),
      ),
      // ignore: prefer_const_constructors
      body: Center(),

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(microseconds: 300),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const Icon(Icons.home),
            const Icon(Icons.photo_camera),
            const Icon(Icons.account_circle),
          ]),
    );
  }
}
