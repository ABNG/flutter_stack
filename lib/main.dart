import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MySecondApp());
  }
}

class MySecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/emile.jpg",
            fit: BoxFit.fill,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                Container(
                  width: 300.0,
                  height: 300.0,
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "enter username",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        autofocus: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            hintText: "enter password",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                          ),
                          autofocus: false,
                          autocorrect: false,
                          obscureText: true,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Material(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(20.0),
                          child: MaterialButton(
                            splashColor: Colors.purple.shade200,
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            minWidth: 250.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -60.0,
                  child: FlutterLogo(
                    size: 120.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
