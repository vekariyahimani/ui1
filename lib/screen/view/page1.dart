import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 140),
            child: Container(
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(100),
                  )),
            ),
          ),
          Container(
            height: 190,
            width: 260,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(160),
                )),
          ),
          Container(
            height: 155,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(140),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '2');
            },
            child: Padding(
              padding: EdgeInsets.only(right: 90, left: 90, top: 90),
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
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 245),
              child: Column(
                children: [
                  Text(
                    "Create",
                    style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "account",
                    style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "E-mail",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.email,
                        size: 20,
                        color: Colors.blue.shade700,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.lock,
                        size: 20,
                        color: Colors.blue.shade700,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530, right: 50, left: 50),
            child: Container(
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(Colors.blue.shade700), (Colors.lightBlue)])),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, right: 70, left: 70),
            child: Row(
              children: [
                Text(
                  "Already have account?",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blue,
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
