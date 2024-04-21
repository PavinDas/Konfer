import 'dart:math';

import 'package:flutter/material.dart';
import 'package:konfer/constants/colors.dart';
import 'package:konfer/constants/styles.dart';
import 'package:konfer/resources/jitsi_meet_methods.dart';
import 'package:konfer/widgets/meeting_buttons.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});

  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(
      roomName,
      true,
      true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            meetingButtons(
              onPressed: () => createNewMeeting(),
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
