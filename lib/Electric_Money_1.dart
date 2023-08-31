import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money/Electric_2_Money.dart';
import 'package:money/Internet_Money.dart';
import 'package:money/Notification.dart';

import 'package:money/Top_Up_Money.dart';
import 'package:money/Transfer_Money.dart';
import 'package:money/Wallet_Money.dart';
import 'package:money/Withdraw_Money.dart';

class Electricone extends StatefulWidget {
  const Electricone({Key? key}) : super(key: key);

  @override
  State<Electricone> createState() => _ElectriconeState();
}

class _ElectriconeState extends State<Electricone> {
  int value1 = 0;
  List screens = [
    Transfermoney(),
    Withdraw(),
    Topup(),
    Text("Withdrw"),
  ];
  List screens1 = [
    Electric2(),
    Electric2(),
    Enternet(),
    Electric2(),
    Electric2(),
    Electric2(),
    Electric2(),
    Electric2(),
  ];
  List image = [
    "asetts/images/transfer.png",
    "asetts/images/withdraw.png",
    "asetts/images/wallet.png",
    "asetts/images/topup.png",
  ];
  List name = [
    "Transfer",
    "Withdraw",
    "Top-up",
    "Deposit",
  ];
  List image1 = [
    "asetts/images/Electri.png",
    "asetts/images/merchant.png",
    "asetts/images/Internet.png",
    "asetts/images/Ticket.png",
    "asetts/images/mobile.png",
    "asetts/images/Transfer12.png",
    "asetts/images/more.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 300,
          backgroundColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: 300,
                color: Color(0xff011A51),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("asetts/images/women.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rene Wells",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "rene43@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Verified",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Dark Mode",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Invite Friends",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Contact List",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "My Wallet",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 100),
                      Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Color(0xffFF897E),
                          ),
                          Text(
                            "Log Out",
                            style: TextStyle(
                                color: Color(0xffFF897E),
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 280,
                      width: 392,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        image: DecorationImage(
                            image: AssetImage("asetts/images/Group 287.png"),
                            fit: BoxFit.cover),
                      ),
                      child: Image.asset("asetts/images/Group 286 (1).png"),
                    ),
                    Positioned(
                      top: 30,
                      right: 30,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xff011A51),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Notification_Money(),
                                ),
                              );
                            });
                          },
                          child: Icon(Icons.notifications_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Builder(
                        builder: (context) {
                          return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon:
                                Icon(Icons.menu, color: Colors.white, size: 25),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: Text(
                    "All Service",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: List.generate(
                    7,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => screens1[index],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 120,
                        margin:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        child: Center(
                          child: Image.asset(
                            image1[index],
                            height: 50,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 160,
              left: 20,
              child: Container(
                height: 230,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Text(
                        "Balance",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        "\$7800.50",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => screens[index],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width: 55,
                                  color: Color(0xffEFF2F4),
                                  child: Center(
                                    child: Image.asset(
                                      image[index],
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                name[index],
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
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
