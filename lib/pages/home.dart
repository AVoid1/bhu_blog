import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wave.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 100, bottom: 30),
                child: Center(
                    child: Text(
                  'B.H.U blog',
                  style: TextStyle(
                      color: Colors.white, fontSize: 60, fontFamily: 'Lobster'),
                )),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'assets/images/icon1.png',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 90),
                child: Center(
                  child: Text(
                    'Welcome, thank you for trusting this app, share \n         '
                        '    your thoughts with everyone in the \n                    '
                        '              campus',
                    style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Lobster'
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 100),
                child:   OutlineButton(
                  child: Text('Get Started', style: TextStyle(color: Colors.white,
                  fontSize: 40
                  )),
                  borderSide: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 1,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
