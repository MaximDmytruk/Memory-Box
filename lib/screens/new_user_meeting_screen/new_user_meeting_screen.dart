import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class NewUserMeetingScreen extends StatefulWidget {
  static String routeName = '/new_user_meeting_screen';

  const NewUserMeetingScreen({super.key});

  @override
  State<NewUserMeetingScreen> createState() => _NewUserMeetingScreenState();
}

//TODO: глянути чи правильна побудова віджетів ?

class _NewUserMeetingScreenState extends State<NewUserMeetingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      name: 'MemoryBox',
      secondName: 'Твій голос завжди поряд',
      child: SizedBox(
        width: double.infinity,
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
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(
                    51.0,
                  ),
                  splashColor: ColorsApp.white246.withAlpha(50),
                  highlightColor: ColorsApp.white246.withAlpha(10),
                  child: Ink(
                    height: 59.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorsApp.orange241,
                      borderRadius: BorderRadius.circular(51.0),
                    ),
                    child: Center(
                      child: Text(
                        'Продовжити',
                        style: robotoTextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: ColorsApp.white246,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
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
