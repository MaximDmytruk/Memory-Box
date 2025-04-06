import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/blocs/auth_bloc/auth_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/collection_screen/widgets/collections_list_view.dart';
import 'package:memory_box/widgets/app_bars/custom_app_bar.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  void _iconMenuButtonAction() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: ColorsApp.green113,
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 67.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Підбірки',
                onDrawerIconTap: _iconMenuButtonAction,
                leadingChild: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    IconsApp.dots,
                  ),
                ),
              ),
              Text(
                'Усе в одному місці',
                style: customTextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: ColorsApp.white246,
                    letterSpacing: 1.5),
              ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state.status == AuthStatus.authorized) {
                    return CollectionListView();
                  } else if (state.status == AuthStatus.guest) {
                    return Expanded(
                      child: Center(
                        child: Text(
                          'Guest',
                          style: customTextStyle(fontSize: 36),
                        ),
                      ),
                    );
                  } else {
                    return Center(
                      child: Text(
                        'Error',
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
