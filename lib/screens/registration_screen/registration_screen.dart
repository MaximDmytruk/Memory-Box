import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/screens/registration_screen/widgets/custom_text_button.dart';
import 'package:memory_box/widgets/buttons/custom_elevated_button.dart';
import 'package:memory_box/widgets/containers/container_info.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';
import 'package:memory_box/widgets/text_fields/custom_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = '/registration_screen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  void _continueAction() {}
  void _lateAction() {}

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
              Text(
                'Введіть номер телефона',
                style: robotoTextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.black58,
                  letterSpacing: 0,
                ),
              ),
              CustomTextField(
                prefixText: '+380 ',
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomElevatedButton(
                onTap: _continueAction,
              ),
              CustomTextButton(
                onTap: _lateAction,
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
