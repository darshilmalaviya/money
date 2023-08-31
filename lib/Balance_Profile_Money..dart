import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:money/Top_Up_Money.dart';
import 'package:money/Transfer_Money.dart';

class Balanceprofile extends StatefulWidget {
  const Balanceprofile({Key? key}) : super(key: key);

  @override
  State<Balanceprofile> createState() => _BalanceprofileState();
}

class _BalanceprofileState extends State<Balanceprofile> {
  List screens = [
    Transfermoney(),
    Text("Withdrw"),
    Topup(),
    Text("Withdrw"),
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
  List color = [
    Color(0xff4F31C2),
    Color(0xff198646),
    Color(0xffFF9D42),
    Color(0xff011A51),
  ];
  List image1 = [
    "asetts/images/Paypal.png",
    "asetts/images/Apple.png",
    "asetts/images/Mcd.png",
    "asetts/images/amazon.png",
  ];
  List title = [
    "Paypall",
    "Apple",
    "Mcdonalds",
    "Amazon",
  ];
  List number = [
    "+91 8320619087",
    "+91 91047959810",
    "+91 8320619087",
    "+91 91047959810",
  ];
  List time = [
    "24 Mar 2022",
    "25 Mar 2022",
    "26 Mar 2022",
    "28 Mar 2022",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
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
              ],
            ),
            Positioned(
              top: 250,
              child: Container(
                height: 700,
                width: 392,
                decoration: BoxDecoration(
                  color: Color(0xffEFF2F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Text(
                        "Operations",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
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
                                  color: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Text(
                        "Recent transaction",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 400,
                        child: ListView.builder(
                          itemCount: 4,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: color[index],
                                  child: Image.asset(
                                    image1[index],
                                  ),
                                ),
                                title: Text(
                                  title[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  number[index],
                                ),
                                trailing: Text(
                                  time[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            );
                          },
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
