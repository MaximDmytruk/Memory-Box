import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/registration_screen/widgets/custom_text_button.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';
import 'package:memory_box/widgets/buttons/custom_text_with_underline_button.dart';
import 'package:memory_box/widgets/text_fields/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _iconMenuButtonAction() {
    Scaffold.of(context).openDrawer();
  }

  void _photoAction() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 67.0,
            bottom: 47.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // spacing: 24.0,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: _iconMenuButtonAction,
                    icon: SvgPicture.asset(
                      IconsApp.menu,
                    ),
                  ),
                  Text(
                    'Профіль',
                    style: customTextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.w700,
                      color: ColorsApp.white246,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                    height: 30.0,
                  ),
                ],
              ),
              Text(
                'Твоя частинка',
                style: customTextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.white246,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 93.0,
                ),
                child: Container(
                  padding: EdgeInsets.all(
                    70,
                  ),
                  height: 228.0,
                  width: 228.0,
                  decoration: BoxDecoration(
                    color: ColorsApp.black58WithOpaciti08,
                    borderRadius: BorderRadius.circular(
                      24.0,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    onTap: _photoAction,
                    child: SvgPicture.asset(
                      IconsApp.photo,
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Text(
                'Profile Name',
                style: customTextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.black58,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 36.0,
                ),
                child: CustomTextField(
                  keyboardOnlyDigits: true,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(9),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(25.0),
                onTap: () {},
                child: Text(
                  'Редагувати',
                  style: customTextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: ColorsApp.black58,
                  ),
                ),
              ),
              SizedBox(
                height: 66.0,
              ),
              CustomTextWithUnderlineButton(
                name: 'Підписка',
                color: ColorsApp.black58,
              ),
              Expanded(
                child: SizedBox(),
              ),
              Row(
                spacing: 13,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextButton(
                    name: 'Вийти з додатка',
                    fontWeight: FontWeight.w400,
                  ),
                  CustomTextButton(
                    name: 'Видалити акаунт',
                    fontWeight: FontWeight.w400,
                    color: ColorsApp.red,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
