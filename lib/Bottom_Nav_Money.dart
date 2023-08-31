import 'package:flutter/material.dart';
import 'package:money/Balance_Profile_Money..dart';

class Bottommoney extends StatefulWidget {
  const Bottommoney({Key? key}) : super(key: key);

  @override
  State<Bottommoney> createState() => _BottommoneyState();
}

class _BottommoneyState extends State<Bottommoney> {
  int select = 0;
  List screen = [
    Balanceprofile(),
    Text("Other"),
    Text("Other"),
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
