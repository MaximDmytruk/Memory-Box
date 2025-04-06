import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box/blocs/auth_bloc/auth_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/screens/home_screen/home_screen.dart';
import 'package:memory_box/screens/registration_screens/registration_confirmation_screen/registration_confirmation_screen.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/registration_screen.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/widgets/custom_text_button.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';
import 'package:memory_box/widgets/buttons/custom_elevated_button.dart';
import 'package:memory_box/widgets/buttons/custom_text_with_underline_button.dart';
import 'package:memory_box/widgets/text_fields/custom_text_field.dart';

class AuthScreen extends StatefulWidget {
  static String routeName = '/auth_screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Size get size => MediaQuery.of(context).size;

  void _continueAction() {
    // Navigator.of(context).pushNamed(RegistrationConfirmationScreen.routeName);
  }

  void _lateAction() {
    context.read<AuthBloc>().add(AuthEvent.goGuest());
  }

  void registratioAction() {
    Navigator.of(context).pushNamed(
      RegistrationScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.guest) {
          Navigator.of(context).pushReplacementNamed(
            HomeScreen.routeName,
          );
        }
      },
      child: CustomBackground(
        name: "Авторизація",
        child: Padding(
          padding: const EdgeInsets.symmetric(
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
                style: customTextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.black58,
                  letterSpacing: 0,
                ),
              ),
              CustomTextField(
                prefixText: '+380 ',
                keyboardOnlyDigits: true,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(9),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              CustomElevatedButton(
                onTap: _continueAction,
              ),
              CustomTextWithUnderlineButton(
                name: 'Реєстрація',
                onTap: registratioAction,
                color: ColorsApp.black58,
                fontSize: 16,
              ),
              CustomTextButton(
                name: "Пізніше",
                onTap: _lateAction,
                letterSpacing: 2,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
