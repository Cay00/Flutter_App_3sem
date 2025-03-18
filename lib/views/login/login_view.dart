import 'package:flutter/material.dart';
import 'package:lab1/utils/my_colors.dart';
import '../../utils/my_images.dart';
import '../register/register_view.dart';
import 'package:lab1/widgets/basic_text_form_field.dart';
import 'package:lab1/views/home/home_view.dart';
import 'package:email_validator/email_validator.dart';

final TextEditingController _usernameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class LoginView extends StatelessWidget {
  const LoginView({super.key});

// Symulacja sprawdzenia poprawności logowania
  void _login(BuildContext context) {
    const String correctUsername = 'dsw@gmail.com';
    const String correctPassword = 'admin';

    String username = _usernameController.text;
    String password = _passwordController.text;

    if (!EmailValidator.validate(username)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email format')),
      );
      return;
    }

    if (username == correctUsername && password == correctPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainApp(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 62),

                // Logo Image
                Image.asset(
                  MyImages.logo,
                  width: 129,
                ),
                const SizedBox(height: 21),

                // Sign In Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: MyColors.purpleColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 46),

                // Email/Username Text Field
                BasicTextFormField(
                  controller: _usernameController,
                  hintText: 'Email or User Name',
                  prefixIcon: Icons.person_outline,
                ),
                const SizedBox(height: 40),

                // Password Text Field
                BasicTextFormField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline,
                ),
                const SizedBox(height: 40),

                // Forget Password
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        print('Forgot Password tapped');
                      },
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: MyColors.purpleColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Sign In Button
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
                      'Sign In',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print('Sign In tapped');
                      _login(context);
                    },
                  ),
                ),
                const SizedBox(height: 50),

                // Or Sign In With Label
                Text(
                  'Or Sign In With',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: MyColors.purpleColor,
                  ),
                ),
                const SizedBox(height: 24),

                // Social Media Login Options
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Button 1
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.whiteColor,
                        fixedSize: const Size(50, 50),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        MyImages.logo_google,
                        width: 30,
                      ),
                      onPressed: () {
                        print('Sign In With Google tapped');
                      },
                    ),
                    const SizedBox(width: 24),

                    // Button 2
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.whiteColor,
                        fixedSize: const Size(50, 50),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        MyImages.logo_facebook,
                        width: 30,
                      ),
                      onPressed: () {
                        print('Sign In With Facebook tapped');
                      },
                    ),
                    const SizedBox(width: 24),

                    // Button 3
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.whiteColor,
                        fixedSize: const Size(50, 50),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        MyImages.logo_twitter,
                        width: 30,
                      ),
                      onPressed: () {
                        print('Sign In With Twitter tapped');
                      },
                    ),
                    const SizedBox(width: 24),

                    // Button 4
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.whiteColor,
                        fixedSize: const Size(50, 50),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        MyImages.logo_linkedin,
                        width: 30,
                      ),
                      onPressed: () {
                        print('Sign In With LinkedIn tapped');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Don't have an Account? - Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account ?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: MyColors.purpleColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: MyColors.purpleColor,
                        ),
                      ),
                      onTap: () {
                        print('Sign Up tapped');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterView()),
                        );
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
