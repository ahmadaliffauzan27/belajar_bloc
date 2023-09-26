import 'package:belajar_bloc/shared/independent/font_weight.dart';
import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Lupa Kata Sandi?",
        textAlign: TextAlign.end,
        style: AppTextStyle.body3
            .setMedium()
            .copyWith(color: AppColors.primary.pr05),
      ),
    );
  }
}
