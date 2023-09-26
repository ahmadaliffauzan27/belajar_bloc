import 'package:belajar_bloc/shared/independent/text_field.dart';
import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:belajar_bloc/view/home/screen/navbar.dart';
import 'package:belajar_bloc/view/login/widgets/forgot_password_button.dart';
import 'package:belajar_bloc/view/login/widgets/login_email_password_button.dart';
import 'package:belajar_bloc/view_model/bloc/login_bloc.dart';
import 'package:belajar_bloc/view_model/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String email = '';
  String password = '';
  final LoginBloc _loginBloc = LoginBloc();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: BlocBuilder<LoginBloc, LoginState>(
        bloc: _loginBloc,
        builder: (context, state) {
          if (state is LoginLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is LoginSuccess) {
            // login berhasil
            return const Navbar();
          } else if (state is LoginFailure) {
            // login gagal
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scaffoldMessengerKey.currentState!.showSnackBar(
                SnackBar(
                  content: Text(
                    state.error,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            });
          }
          return Scaffold(
            body: SafeArea(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  16.0,
                  32.0,
                  16.0,
                  16.0,
                ),
                children: [
                  Text(
                    "Masuk",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.heading5
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Masukkan Akun Kamu",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.body2
                        .copyWith(color: AppColors.neutral.ne05),
                  ),
                  const SizedBox(height: 32.0),
                  KgTextField(
                    labelText: 'Email',
                    hintText: 'Masukkan email kamu',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  const SizedBox(height: 16.0),
                  KgTextField(
                    labelText: 'Kata Sandi',
                    hintText: 'Masukkan kata sandi kamu',
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      focusNode: FocusNode(skipTraversal: true),
                      color: AppColors.neutral.ne04,
                      iconSize: 20.0,
                      icon: const Icon(
                        Icons.visibility_off_rounded,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  const SizedBox(height: 16.0),
                  const ForgotPasswordButton(),
                  const SizedBox(height: 24.0),
                  LoginEmailPasswordButton(
                    email: email,
                    password: password,
                    loginBloc: _loginBloc,
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
