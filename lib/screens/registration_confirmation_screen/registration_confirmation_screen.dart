import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/screens/welcome_screen/welcome_screen.dart';
import 'package:memory_box/widgets/buttons/custom_elevated_button.dart';
import 'package:memory_box/widgets/containers/container_info.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';
import 'package:memory_box/widgets/text_fields/custom_text_field.dart';

class RegistrationConfirmationScreen extends StatefulWidget {
  static String routeName = '/registration_confirmation_screen';

  const RegistrationConfirmationScreen({super.key});

  @override
  State<RegistrationConfirmationScreen> createState() =>
      _RegistrationConfirmationScreenState();
}

class _RegistrationConfirmationScreenState
    extends State<RegistrationConfirmationScreen> {
  void _continueAction() =>
      Navigator.of(context).pushNamed(WelcomeScreen.routeName);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      name: 'Реєстрація',
      child: SingleChildScrollView(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Введи код із смс, щоб ми тебе запам\'ятали',
                  style: customTextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: ColorsApp.black58,
                    letterSpacing: 0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              CustomTextField(
                keyboardOnlyDigits: true,
                textAlign: TextAlign.center,
                letterSpacing: 10.0,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomElevatedButton(
                onTap: _continueAction,
              ),
              SizedBox(
                height: 28.0,
              ),
              ContainerInfo(
                text:
                    'Реєстрація прив\'яже твої казки до хмари, після чого вони завжди будуть із тобою',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
