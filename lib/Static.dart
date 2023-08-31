// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class Static extends StatefulWidget {
  const Static({Key? key}) : super(key: key);

  @override
  State<Static> createState() => _StaticState();
}

class _StaticState extends State<Static> {
  List name = [
    "Day",
    "Week",
    "Month",
    "Years",
  ];
  List Day = [
    "Sunday",
    "Monday",
    "Tuseday",
    "Wednersday",
    "Thursday",
    "Friday",
    "Saturday",
  ];
  List week = [
    "Week1",
    "Week2",
    "Week3",
    "Week4",
  ];
  List month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  List year = [
    "2020",
    "2022",
    "2023",
    "2024",
    "2025",
    "2026",
    "2027",
    "2028",
    "2029",
    "2030",
    "2031",
    "2032",
    "2033",
    "2034",
    "2035",
  ];
  int value = 0;
  int day = 0;
  int Week = 0;
  int Month = 0;
  int Year = 0;
  List imagebuilder = [
    "asetts/images/Shopping.png",
    "asetts/images/grocery.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Current Balance",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Static(),
                            ),
                          );
                        });
                      },
                      child: const Icon(Icons.arrow_back, size: 30)),
                  const SizedBox(width: 110),
                  const Text(
                    "Statistic",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: Text(
                    "\$7800.50",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text(
                        "5.20",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Icon(
                        Icons.percent,
                        color: Colors.orange,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => InkResponse(
                    onTap: () {
                      setState(() {
                        value = index;
                      });
                    },
                    child: Text(
                      name[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: value == index ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset("asetts/images/static.png"),
            ),
            value == 0
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        7,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                day = index;
                              });
                            },
                            child: Text(
                              Day[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:
                                    day == index ? Colors.orange : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            value == 1
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        week.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 45, top: 30),
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                Week = index;
                              });
                            },
                            child: Text(
                              week[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:
                                    Week == index ? Colors.orange : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            value == 2
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        month.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                Month = index;
                              });
                            },
                            child: Text(
                              month[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Month == index
                                    ? Colors.orange
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            value == 3
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        year.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Year = index;
                              });
                            },
                            child: InkResponse(
                              onTap: () {
                                setState(() {
                                  Year = index;
                                });
                              },
                              child: Text(
                                year[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Year == index
                                      ? Colors.orange
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xffFF897E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.south_east,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Column(
                            children: const [
                              Text(
                                'Income',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '\$3460',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xff011A51),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.south_east,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Column(
                            children: const [
                              Text(
                                'Outcome',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '\$3460',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "Spendings",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      width: 200,
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            imagebuilder[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
