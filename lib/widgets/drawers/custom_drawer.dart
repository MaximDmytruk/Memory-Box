import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
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
                style: robotoTextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: ColorsApp.black58,
                ),
              ),
            ),
            SizedBox(
              height: 40.0, //Має бути 40 в загальному
            ),
            Center(
              child: Text(
                'Меню',
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
              onPressed: () {},
              label: Text(
                'Підписка',
                style: robotoTextStyle(
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
                style: robotoTextStyle(
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
