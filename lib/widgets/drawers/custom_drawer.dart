import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class CustomDrawer extends StatelessWidget {

  final VoidCallback? subscriptionAction;

  const CustomDrawer({
    super.key,
    this.subscriptionAction,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsApp.white246,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 39.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90.0,
            ),
            Center(
              child: Text(
                'Аудіоказки',
                style: customTextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: ColorsApp.black58,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Text(
                'Меню',
                style: customTextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  color: ColorsApp.black58.withAlpha(100),
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Головна',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.home,
                width: 30.0,
                height: 30.0,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Профіль',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.profile,
                width: 30.0,
                height: 30.0,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Підбірки',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.category,
                width: 30.0,
                height: 30.0,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Усі аудіозаписи',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.paper,
                width: 30.0,
                height: 30.0,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Пошук',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.search,
                width: 30.0,
                height: 30.0,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Недавно видалені',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.delete,
                width: 30.0,
                height: 30.0,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton.icon(
              onPressed: subscriptionAction,
              label: Text(
                'Підписка',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.wallet,
                width: 30.0,
                height: 30.0,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Написати в підтримку',
                style: customTextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: SvgPicture.asset(
                IconsApp.edit,
                width: 30.0,
                height: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
