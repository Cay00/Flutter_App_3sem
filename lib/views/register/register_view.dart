import 'package:flutter/material.dart';
import 'package:lab1/utils/my_colors.dart';
import 'package:lab1/widgets/basic_text_form_field.dart';

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _password2Controller = TextEditingController();

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 59),

                // Go Back
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        // Make button size based on content
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: MyColors.purpleColor,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: MyColors.purpleColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 105),

                // Sign Up Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: MyColors.purpleColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 46),

                // Full name Text Field
                BasicTextFormField(
                  controller: _nameController,
                  hintText: 'Full Name',
                  prefixIcon: Icons.person_outlined,
                ),
                const SizedBox(height: 40),

                // Email Text Field
                BasicTextFormField(
                  controller: _emailController,
                  hintText: 'Email',
                  prefixIcon: Icons.mail_outline,
                ),
                const SizedBox(height: 40),

                // Password Text Field
                BasicTextFormField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline,
                ),
                const SizedBox(height: 40),

                // Confirm Password Text Field
                BasicTextFormField(
                  controller: _password2Controller,
                  hintText: 'Confirm Password',
                  prefixIcon: Icons.lock_outline,
                ),
                const SizedBox(height: 40),

                // Sign Up Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.purpleLight2Color,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print('Sign Up tapped');
                    },
                  ),
                ),
                const SizedBox(height: 35),

                // Already have an Account? - Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account ?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: MyColors.purpleColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: MyColors.purpleColor,
                        ),
                      ),
                      onTap: () {
                        print('Sign In tapped');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
