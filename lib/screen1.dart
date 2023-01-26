import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(90),
          child: Text(
            'Sign in',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: statefull()
    );
  }
}

class statefull extends StatefulWidget {
  const statefull({Key? key}) : super(key: key);

  @override
  State<statefull> createState() => _statefullState();
}

class _statefullState extends State<statefull> {

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        padding: EdgeInsets.only(top: 20.0),
        children: <Widget>[
          Container(
            child: Center(
              child: Text('Create Acoount',
              style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30,),),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: name,
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
                labelText: 'Name',
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
              controller: password,
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
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: Cpassword,
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
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                    color: Colors.black
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                print(name.text);
                print(password.text);
                print(Cpassword.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}

