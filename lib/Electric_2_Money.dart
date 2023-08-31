import 'package:flutter/material.dart';
import 'package:money/Bills_Money.dart';
import 'package:money/Electric_Money_1.dart';

class Electric2 extends StatefulWidget {
  const Electric2({Key? key}) : super(key: key);

  @override
  State<Electric2> createState() => _Electric2State();
}

class _Electric2State extends State<Electric2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Electricone(),
                          ),
                        );
                      });
                    },
                    child: Icon(Icons.arrow_back, size: 35),
                  ),
                  SizedBox(width: 120),
                  Text(
                    "Electric",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 150,
                          margin: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff011A51),
                          ),
                          child: Center(
                            child: Text(
                              "Electricity Token",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(width: 60),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Bill(),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            child: Text(
                              "Bills",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Token Number",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Ammount",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 60,
              width: 200,
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFB847C),
              ),
              child: Center(
                child: Text(
                  "BUY",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
