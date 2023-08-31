import 'package:flutter/material.dart';
import 'package:money/2Bottom_Nav_Bar.dart';
import 'package:money/Electric_Money_1.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List name = [
    "Bank accounts",
    "Cards",
  ];
  int containercolor = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavBarSecond(),
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 120),
                  Text(
                    "Wallet",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "asetts/images/card.png",
                width: 350,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "asetts/images/Income.png",
                          width: 180,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "asetts/images/exp inc card.png",
                          width: 180,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset(
                      "asetts/images/balance is.png",
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    "Analytics",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  children: List.generate(
                    2,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          containercolor == index;
                        });
                      },
                      child: Container(
                        height: 38,
                        width: 150,
                        margin: EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: containercolor == index
                              ? Color(0xffFF897E)
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            name[index],
                            style: TextStyle(
                              color: index == containercolor
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Image.asset("asetts/images/scan card.png"),
            ),
          ],
        ),
      ),
    );
  }
}
