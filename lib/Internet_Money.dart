import 'package:flutter/material.dart';

class Enternet extends StatefulWidget {
  const Enternet({Key? key}) : super(key: key);

  @override
  State<Enternet> createState() => _EnternetState();
}

class _EnternetState extends State<Enternet> {
  List image = [
    "asetts/images/internet freedom1.png",
    "asetts/images/internet freedom (2).png",
    "asetts/images/internet freedom (3).png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  width: 392,
                  color: Color(0xff011A51),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 120),
                    child: Text(
                      "Internet Data",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 22,
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asetts/images/data.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Chhose Package",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Container(
                  height: 150,
                  width: 392,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        image[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
