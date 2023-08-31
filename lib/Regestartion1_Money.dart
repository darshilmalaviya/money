import 'package:flutter/material.dart';
import 'package:money/Regestartaion2_Money.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                  child: Image.asset("asetts/images/Registerimagewomwn.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Text(
                  "Flowa",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10),
                child: Text(
                  "Experience the",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff011A51),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "easier way",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xffFF897E),
                          fontSize: 55,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      " for",
                      style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff011A51),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Transaction!",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff011A51),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Connect your money to your\nfriends & brands. ",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register2(),
                          ));
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xfffFB847C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
