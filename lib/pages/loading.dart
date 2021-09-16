import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // void setupWorldTime() async {
  //   await Navigator.pushReplacementNamed(context,'/home',);
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   setupWorldTime();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: Container(
            padding: EdgeInsets.only(top: 360, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: FaIcon(
                    FontAwesomeIcons.blog,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(right: 50, bottom: 300),
                  child: Center(
                    child: SpinKitCircle(
                        color: Colors.white,
                        size: 70.0
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
