import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stupor/screens/auth_screen/phone_login.dart';
import 'package:stupor/screens/auth_screen/sign_up.dart';
import 'package:stupor/widgets/horizontal_line.dart';
import 'package:stupor/widgets/signup_with_phone.dart';
import 'package:stupor/widgets/social_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/images/signup-vector.svg",
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              SocialButton(
                name: "Continue with Facebook",
                icon: "assets/icons/facebook.svg",
              ),
              SocialButton(
                name: "Continue with Google",
                icon: "assets/icons/google.svg",
              ),
              SocialButton(
                name: "Continue with Apple",
                icon: "assets/icons/apple-logo.svg",
                appleLogo: true,
              ),
              HorizontalLine(
                name: "OR",
                height: 0.1,
              ),
              SignupWithPhone(
                name: "Sign in with Phone Number",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhoneLogin()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));

                    },
                    child: Text(
                      "Sign up",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
