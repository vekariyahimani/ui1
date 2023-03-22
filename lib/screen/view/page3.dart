import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 140,
              top: 187,
            ),
            child: Container(
              height: 220,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(170),
                    bottomRight: Radius.circular(5),
                  )),
            ),
          ),
          Container(
            height: 350,
            width: 410,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(400),
                    bottomRight: Radius.circular(400),
                    topLeft: Radius.circular(400)),
                gradient: LinearGradient(
                    colors: [(Colors.blue.shade800), (Colors.blue)])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(400),
                      bottomRight: Radius.circular(300),
                    topLeft: Radius.circular(0)
                      ),
                  color: Colors.lightBlue)
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 100, left: 10, top: 240),
            child: Container(
              height: 150,
              width: 200,
              decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 90,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 410),
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 50,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "back",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580, right: 40, left: 40),
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(Colors.blue.shade700), (Colors.lightBlue)])),
              child: Center(
                child: Text(
                  "Login as Maria",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, right: 70, left: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Delete account",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),


        ],
      ),
    ));
  }
}
