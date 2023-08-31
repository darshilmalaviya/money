import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money/Bottom_Nav_Money.dart';
import 'package:money/Transaction_Sucess_Money.dart';

class Transfermoney extends StatefulWidget {
  const Transfermoney({Key? key}) : super(key: key);

  @override
  State<Transfermoney> createState() => _TransfermoneyState();
}

class _TransfermoneyState extends State<Transfermoney> {
  int value = 0;
  int value1 = 0;
  int picture = 0;
  List price = [
    "100",
    "150",
    "200",
    "250",
  ];
  List image = [
    "asetts/images/6.png",
    "asetts/images/1.png",
    "asetts/images/2.png",
    "asetts/images/3.png",
    "asetts/images/4.png",
  ];
  List name = [
    "Alis",
    "John",
    "Peter",
    "Alisn",
    "Smit",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFF2F4),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottommoney(),
                            ),
                          );
                        });
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottommoney(),
                          ),
                        );
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 25,
                    ),
                  ),
                  Text(
                    "Send Money",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage("asetts/images/women.png"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text(
                      "Choose Account",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("asetts/images/card.png"),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How much you would like to send ?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (value > 0) {
                            value--;
                          }
                        });
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                spreadRadius: 1,
                                blurRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.remove, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 80,
                      child: Center(
                        child: Text(
                          "${int.parse(price[value1]) + value}",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value++;
                        });
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                spreadRadius: 1,
                                blurRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.add, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          value1 = index;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: value1 == index
                              ? Color(0xffF8C345)
                              : Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            price[index],
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      "Choose Recepient",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    5,
                    (index) => Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              picture = index;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      image[index],
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 30,
                          child: picture == index
                              ? Text(
                                  name[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15),
                                )
                              : SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFB9089),
                    ),
                    child: Center(
                      child: Text(
                        "TAKE ME BACK",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sucess(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff011A51),
                      ),
                      child: Center(
                        child: Text(
                          "SEND MONEY",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
