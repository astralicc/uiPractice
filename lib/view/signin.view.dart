import 'package:flutter/material.dart';
import 'package:ui_practice1/utils/global.colors.dart';
import 'package:ui_practice1/view/widgets/button.global.dart';
import 'package:ui_practice1/view/widgets/social.login.dart';
import 'package:ui_practice1/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 130,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: GlobalColors.textColor,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: GlobalColors.textColor,
                  ),
                ),

                const SizedBox(height: 15),
                
                // Email Form Field
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),

                const SizedBox(height: 10),
                
                // Password Form Field
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  obscure: true,
                ),

                const SizedBox(height: 20),
                
                // Login Button
                const ButtonGlobal(),

                const SizedBox(height: 55),

                // Social Login Options
                const SocialLoginGlobal(),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                color: GlobalColors.mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}