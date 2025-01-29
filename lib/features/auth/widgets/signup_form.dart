import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';
import 'package:login_screen/features/auth/widgets/custom_text_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  String _password = '';
  int _strength = 0;

  // Get strength text based on the strength value
  String get _strengthText {
    if (_password.isEmpty) {
      return 'Very Weak';
    }
    switch (_strength) {
      case 1:
        return 'Very Weak';
      case 2:
        return 'Weak';
      case 3:
        return 'Moderate';
      case 4:
        return 'Strong';
      case 5:
        return 'Very Strong';
      default:
        return 'Very Weak';
    }
  }

  void _updatePasswordStrength(String password) {
    setState(() {
      _password = password;

      if (password.isEmpty) {
        _strength = 0;
      } else if (password.length < 4) {
        _strength = 1;
      } else if (password.length < 8) {
        _strength = 2;
      } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
        _strength = 3;
      } else if (!RegExp(r'[0-9]').hasMatch(password)) {
        _strength = 4;
      } else {
        _strength = 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTextField(
          hintText: 'Full Name',
          prefixIcon: Icons.person_outline,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hintText: 'deanna.curtis@example.com',
          prefixIcon: Icons.email_outlined,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hintText: 'Gender',
          prefixIcon: Icons.people_outline,
          suffixIcon: Icons.arrow_drop_down,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          isPassword: true,
          onChanged: _updatePasswordStrength,
        ),
        const SizedBox(height: 10),
        // Password Strength Indicator with Text
        if (_password.isNotEmpty)
          Row(
            children: [
              Text(
                _strengthText,
                style: AppStyles.smallText,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(5, (index) {
                    return Container(
                      width: 45,
                      height: 8,
                      decoration: BoxDecoration(
                        color: index < _strength
                            ? AppStyles.primaryColor
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle "Next" button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Next', style: AppStyles.buttonText),
        ),
      ],
    );
  }
}
