import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money/Electric_Money_1.dart';

class Notification_Money extends StatefulWidget {
  const Notification_Money({Key? key}) : super(key: key);

  @override
  State<Notification_Money> createState() => _Notification_MoneyState();
}

class _Notification_MoneyState extends State<Notification_Money> {
  List image = [
    "asetts/images/not1.png",
    "asetts/images/not2.png",
    "asetts/images/not3.png",
    "asetts/images/not4.png",
    "asetts/images/not4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  InkWell(
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
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 90),
                  Text(
                    "Notification",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Image.asset("asetts/images/Transfer (1).png"),
            ),
            Divider(color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Center(
                child: Image.asset(
                  "asetts/images/TopUp125.png",
                  height: 60,
                  width: 350,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    "Yesterday",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Column(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Image.asset(
                        image[index],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
