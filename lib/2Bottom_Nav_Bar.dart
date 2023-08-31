import 'package:flutter/material.dart';
import 'package:money/Static.dart';
import 'package:money/Wallet_Money.dart';
import 'Electric_Money_1.dart';

class BottomNavBarSecond extends StatefulWidget {
  const BottomNavBarSecond({Key? key}) : super(key: key);

  @override
  State<BottomNavBarSecond> createState() => _BottomNavBarSecondState();
}

class _BottomNavBarSecondState extends State<BottomNavBarSecond> {
  int select = 0;
  List screen = [
    Electricone(),
    Static(),
    Wallet(),
    Text("Other"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: select,
          onTap: (value) {
            setState(
              () {
                select = value;
              },
            );
          },
          selectedFontSize: 18,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
          ],
        ),
      ),
      body: screen[select],
    );
  }
}
