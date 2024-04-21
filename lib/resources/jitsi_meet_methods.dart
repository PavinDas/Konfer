import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:konfer/resources/auth_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  createMeeting(
    String roomName,
    bool isAudioMuted,
    bool isVideoMuted,
  ) async {
    try {
      var jitsiMeet = JitsiMeet();

      var options = JitsiMeetConferenceOptions(
        serverURL: "https://meet.jit.si",
        room: roomName,
        configOverrides: {
          "startWithAudioMuted": isAudioMuted,
          "startWithVideoMuted": isVideoMuted,
        },
        featureFlags: {"unsaferoomwarning.enabled": false},
        userInfo: JitsiMeetUserInfo(
          displayName: _authMethods.user.displayName,
          email: _authMethods.user.email,
          avatar: _authMethods.user.photoURL,
        ),
      );
      jitsiMeet.join(options);
    } catch (e) {
      print("\n Error: $e");
    }
  }
}
