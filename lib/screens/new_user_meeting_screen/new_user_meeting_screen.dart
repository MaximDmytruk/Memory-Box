import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/screens/registration_screen/registration_screen.dart';
import 'package:memory_box/widgets/buttons/custom_elevated_button.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class NewUserMeetingScreen extends StatefulWidget {
  static String routeName = '/new_user_meeting_screen';

  const NewUserMeetingScreen({super.key});

  @override
  State<NewUserMeetingScreen> createState() => _NewUserMeetingScreenState();
}

//TODO: глянути чи правильна побудова віджетів ?

class _NewUserMeetingScreenState extends State<NewUserMeetingScreen> {
  void continueAction() => Navigator.of(context).pushNamed(
        RegistrationScreen.routeName,
      );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      name: 'MemoryBox',
      secondName: 'Твій голос завжди поряд',
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 47.0,
        ),
        child: Column(
          spacing: 24.0,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.4,
            ),
            Text(
              'Привіт!',
              style: robotoTextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
                color: ColorsApp.black58,
              ),
            ),
            Text(
              'Ми раді бачити тебе тут. Ця програма допоможе записувати казки та тримати їх у зручному місці не заповнюючи пам\'ять на телефоні',
              style: robotoTextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: ColorsApp.black58,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24.0,
            ),
            CustomElevatedButton(
              onTap: continueAction,
            ),
          ],
        ),
      ),
    );
  }
}
