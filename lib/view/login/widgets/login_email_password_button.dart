import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:belajar_bloc/view_model/bloc/login_bloc.dart';
import 'package:belajar_bloc/view_model/bloc/login_event.dart';
import 'package:flutter/material.dart';

class LoginEmailPasswordButton extends StatelessWidget {
  final String email;
  final String password;
  final LoginBloc loginBloc; // Tambahkan variabel loginBloc di sini

  const LoginEmailPasswordButton({
    Key? key,
    required this.email,
    required this.password,
    required this.loginBloc, // Tambahkan parameter loginBloc di constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        print('email: $email');
        print('pass: $password');
        loginBloc.add(LoginButtonPressed(email: email, password: password));
      },
      child: const Text(
        'Masuk',
        style: AppTextStyle.body3,
      ),
    );
  }
}
