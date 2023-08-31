import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money/Electric_Money_1.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  double slidervalue = 0;
  int value1 = 0;
  int select = 0;
  List<double> Amount = [
    05,
    10,
    15,
    20,
    50,
    100,
    500,
    1000,
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
        backgroundColor: Color(0xfffF5F5F5),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Transaction Details",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Amount",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$ ${Amount[value1]}",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Balance \$9580.00",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 12,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.red,
                    activeTrackColor: Color(0xfffFF897E),
                    inactiveTrackColor: Colors.white,
                    thumbColor: Color(0xfffFF897E),
                    valueIndicatorColor: Colors.transparent,
                    valueIndicatorTextStyle: TextStyle(color: Colors.black),
                  ),
                  child: Slider.adaptive(
                    min: 5.0,
                    max: 1000.0,
                    divisions: 100,
                    value: Amount[value1],
                    onChanged: (value) {
                      setState(
                        () {
                          Amount[value1] = value;
                        },
                      );
                    },
                  ),
                ),
              ),
              Wrap(
                children: List.generate(
                  8,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          value1 = index;
                        },
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            value1 == index ? Color(0xfffFF897E) : Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          '\$${Amount[index]}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Text(
                      "Wallet Type",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 4,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: InkWell(
                          onTap: () {
                            setState(
                              () {},
                            );
                            select = index;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Electricone(),
                              ),
                            );
                          },
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
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              number[index],
                            ),
                            trailing: select == index
                                ? Icon(
                                    Icons.check_circle_sharp,
                                    color: Color(0xfffFF897E),
                                  )
                                : Icon(Icons.circle),
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
    );
  }
}
