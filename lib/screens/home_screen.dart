import 'package:flutter/material.dart';
import 'package:konfer/constants/colors.dart';
import 'package:konfer/constants/consts.dart';
import 'package:konfer/screens/history_meeting_screen.dart';
import 'package:konfer/screens/meeting_screen.dart';
import 'package:konfer/widgets/meeting_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  List<Widget> pages = [
     MeetingScreen(),
    const HistorymeetingScreen(),
    const Text('Contacts'),
    const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! AppBar
      appBar: AppBar(
        backgroundColor: secColor,
        elevation: 0,
        title: Text(
          'Meet & Chat',
          style: TextStyle(
            fontFamily: bold,
            fontSize: 25,
            color: whiteColor.withOpacity(
              0.9,
            ),
          ),
        ),
        centerTitle: true,
      ),

      //! Body
      body: pages[_page],

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
        ],
      ),
    );
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}

class Historymeeting extends StatelessWidget {
  const Historymeeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            meetingButtons(
              onPressed: () {},
              icon: Icons.videocam,
              text: 'New Meeting',
            ),
            meetingButtons(
              onPressed: () {},
              icon: Icons.add_box_outlined,
              text: 'Join Meeting',
            ),
            meetingButtons(
              onPressed: () {},
              icon: Icons.calendar_today,
              text: 'Schedule',
            ),
            meetingButtons(
              onPressed: () {},
              icon: Icons.arrow_upward_rounded,
              text: 'Share Screen',
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Text(
              'Create/Join meeting',
              style: TextStyle(
                fontFamily: bold,
                color: whiteColor.withOpacity(
                  0.8,
                ),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
