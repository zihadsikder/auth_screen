import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String icon;

  const SocialLoginButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        side: const BorderSide(color: AppStyles.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, height: 24),
          const SizedBox(width: 10),
          Text(text, style: AppStyles.buttonText),
        ],
      ),
    );
  }
}
