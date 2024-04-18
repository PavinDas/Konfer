import 'package:flutter/material.dart';
import 'package:konfer/constants/colors.dart';
import 'package:konfer/constants/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //! AppBar
      appBar: AppBar(
        backgroundColor: secColor,
        elevation: 0,
        title: const Text(
          'Meet & Chat',
          style: TextStyle(
            fontFamily: bold,
            fontSize: 25,
            color: whiteColor,
          ),
        ),
        centerTitle: true,
      ),

      //! Body
      body: Column(
        children: [
          Row(
            children: [
              
            ],
          )
        ],
      ),


      //! Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: textColor,
          unselectedItemColor: bgColor,
          onTap: onPageChanged,
          currentIndex: _page,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: secColor,
              icon: Icon(Icons.comment_bank),
              label: "Meet & Chart",
            ),
            BottomNavigationBarItem(
              backgroundColor: secColor,
              icon: Icon(Icons.lock_clock),
              label: "Meetings",
            ),
            BottomNavigationBarItem(
              backgroundColor: secColor,
              icon: Icon(Icons.person_2_outlined),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              backgroundColor: secColor,
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ]),
    );
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
