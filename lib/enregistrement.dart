import 'package:flutter/material.dart';
import 'package:connexion/main.dart';

/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connexion',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}*/

class Sign_up_page extends StatefulWidget {
  const Sign_up_page({super.key});

  @override
  State<Sign_up_page> createState() => _Sign_up_pageState();
}

class _Sign_up_pageState extends State<Sign_up_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
                opacity: 95)),
        child: ListView(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Center(
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 15.0,
                          ),
                          Image(
                            image: AssetImage('assets/images/signup.png'),
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ),

                    Text('Sign Up',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: const OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 25.0,
                    ),

                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: 'Surname',
                        border: const OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: const OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 25.0,
                    ),

                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: 'Phone number',
                        border: const OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, shape: StadiumBorder()),
                      child: Ink(
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                          Color(0xff550bfc),
                          Color(0xff00ffa7)
                        ])),
                        child: Container(
                            width: 400,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              'Submit',
                              // ignore: unnecessary_const
                              style: const TextStyle(fontSize: 24),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),

                    const SizedBox(
                      height: 20.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account",
                            selectionColor: const Color(0XFF8B8B8B)),
                        const SizedBox(width: 1.0),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                // ignore: prefer_const_constructors
                                return Home();
                              },
                            ));
                          },
                          // ignore: prefer_const_constructors
                          child: Text('Click here',
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 5, 53, 92))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
