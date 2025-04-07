import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

import 'package:memory_box/widgets/app_bars/custom_app_bar.dart';

import 'package:memory_box/widgets/text_fields/custom_text_field.dart';
import 'package:memory_box/widgets/text_fields/custom_text_field_with_underline.dart';

class EditPage extends StatefulWidget {
  final GestureTapCallback? prefixWidgetAction;

  const EditPage({super.key, this.prefixWidgetAction});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController nameTextController = TextEditingController(
    text: 'Guest',
  );

  @override
  void dispose() {
    nameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            CustomAppBar(
              title: 'Профіль',
              onDrawerIconTap: () {},
              prefixChild: InkWell(
                onTap: widget.prefixWidgetAction,
                child: SvgPicture.asset(
                  IconsApp.backArrowInWhiteRectangle,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            Text(
              'Твоя частинка',
              style: customTextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.white246,
                  letterSpacing: 1.5),
            ),
            SizedBox(
              height: 64.0,
            ),
            Container(
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
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    40,
                  ),
                ),
                onTap: () {},
                child: SvgPicture.asset(
                  IconsApp.photo,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 77,
              ),
              child: CustomTextFieldWithUnderline(
                nameTextController: nameTextController,
              ),
            ),
            SizedBox(
              height: 80.0,
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
              height: 40,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(25.0),
              onTap: () {},
              child: Text(
                'Зберегти',
                style: customTextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.black58,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
