import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';
import 'package:login_screen/features/auth/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth/widgets/social_login_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 8),
        const CustomTextField(
          hintText: 'User Name',
          prefixIcon: Icons.phone,
        ),
        const SizedBox(height: 20),
        const SizedBox(height: 8),
        const CustomTextField(
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          isPassword: true,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (value) {},
                  activeColor: Theme.of(context).primaryColor,
                  checkColor: AppStyles.textColor,
                ),
                const Text('Remember Me', style: AppStyles.smallText),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: AppStyles.smallText.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Log in', style: AppStyles.buttonText),
        ),
        const SizedBox(height: 20),
        const Text(
          'or with',
          textAlign: TextAlign.center,
          style: AppStyles.smallText,
        ),
        const SizedBox(height: 20),
        const SocialLoginButton(
          text: 'Continue with Facebook',
          icon: 'assets/images/fb-logo.png',
        ),
        const SizedBox(height: 10),
        const SocialLoginButton(
          text: 'Continue with Instagram',
          icon: 'assets/images/insta-logo.png',
        ),
      ],
    );
  }
}
