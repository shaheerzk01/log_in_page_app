import 'package:flutter/material.dart';
import 'package:log_in/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String_title = 'Log in page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.grey,
              side: BorderSide(width: 2, color: Colors.black),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(3),
            ),
          ),
        ),
        title: String_title,
        home: Scaffold(
          appBar: AppBar(
              title: Center(
                child: const Text(
                  String_title,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              backgroundColor: Colors.grey),
          body: const MyStatefulWidget(),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Tutorial kart',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign in',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                ),
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(),
                labelText: 'User name',
                labelStyle: TextStyle(
                  color: Colors.black
                ),
              ),
            ),

          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(

                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Colors.black
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forget password
            },
            child: const Text(
              'Forget password',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
            ),
          ),
          Row(
            children: <Widget>[
              const Text(
                'Does not have any account?',
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return screen1();
                  }));
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

