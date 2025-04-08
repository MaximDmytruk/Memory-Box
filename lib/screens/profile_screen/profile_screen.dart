import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:memory_box/screens/profile_screen/blocs/profile_screen_bloc/profile_screen_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/profile_screen/pages/edit_page.dart';
import 'package:memory_box/screens/profile_screen/pages/profilePage.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/widgets/custom_text_button.dart';
import 'package:memory_box/widgets/app_bars/custom_app_bar.dart';

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

  void editAction() {
    context.read<ProfileScreenBloc>().add(ProfileScreenEvent.onEditMode());
  }

  void offEditMode() {
    context.read<ProfileScreenBloc>().add(ProfileScreenEvent.offEditMode());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
          builder: (context, state) {
            switch (state.status) {
              case ProfileScreenStatus.loaded:
                return ProfilePage(
                  iconMenuButtonAction: _iconMenuButtonAction,
                  editAction: editAction,
                );
              case ProfileScreenStatus.edit:
                return EditPage(
                  prefixWidgetAction: offEditMode,
                );
            }
          },
        ),
      ),
    );
  }
}
