import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:connexion/enregistrement.dart';
import 'package:connexion/produits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connexion',
      theme: ThemeData(fontFamily: 'Product Sans'),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
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
                    Center(
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'Welcome \nBack ',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 5, 53, 92),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 90.0,
                          ),
                          Image(
                            image: AssetImage('assets/images/personne.png'),
                            height: 80,
                            width: 80,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'password',
                        border: const OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                            value: check,
                            onChanged: (bool? value) {
                              setState(() {
                                check = value!;
                              });
                            },
                            hoverColor: const Color.fromARGB(25, 5, 53, 92)),
                        const Text('Remember me'),
                        const SizedBox(
                          width: 80.0,
                        ),
                        const Text(
                          'Forgot password?',
                          style:
                              TextStyle(color: Color.fromARGB(255, 5, 53, 92)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Bienvenu(e)'),
                            content: Text('vous êtes  enfin connecté(e) '),
                            actions: [
                              TextButton(
                                child: Text('Quitter'),
                                onPressed: () => Navigator.pop(context),
                              ),
                              TextButton(
                                child: Text('Continuer'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const MyHomePage()));
                                },
                              )
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, shape: StadiumBorder()),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xff550bfc), Color(0xff00ffa7)]),
                        ),
                        child: Container(
                            width: 400,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account",
                          selectionColor: Color(0XFF8B8B8B),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Sign_up_page();
                              },
                            ));
                          },
                          child: Text(
                            '? Sign up',
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 53, 92)),
                          ),
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
