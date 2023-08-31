import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List image = [
    "asetts/images/Mask Group (10).png",
    "asetts/images/Mask Group (11).png",
    "asetts/images/Mask Group (12).png",
    "asetts/images/Mask Group (13).png",
  ];
  List name = [
    "Jason",
    "Kartik",
    "Donsoo",
    "Jackson",
  ];
  List contactname = [
    "Diani Otelanis Teori",
    "Bahrun ST",
    "Ririn Panjaitan spd",
    "Eki Sulungpati Mpd",
    "Septiani Destri seulo",
    "Nuni Eksitin",
  ];
  List number = [
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450",
  ];
  List latterimage = [
    "asetts/images/D.png",
    "asetts/images/B.png",
    "asetts/images/R.png",
    "asetts/images/E.png",
    "asetts/images/S.png",
    "asetts/images/N.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContactList(),
                            ),
                          );
                        });
                      },
                      child: Icon(Icons.arrow_back, size: 30)),
                  SizedBox(width: 100),
                  Text(
                    "Contact List",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "Recent Contact",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          image[index],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(name[index],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "All Contact",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        child: Center(
                          child: Image.asset(
                            latterimage[index],
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      title: Text(
                        contactname[index],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        number[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
