import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_flutter/utils/colors.dart';
import 'package:instagram_flutter/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              // svg image (app logo)
              SvgPicture.asset(
                'assets/ic_instagram_logo.svg',
                color: primaryColor,
                height: 60.0,
              ),
              const SizedBox(height: 65.0),
              // text field input for email
              TextFieldInput(
                hintText: "Enter Email Address",
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
              ),
              // text field input for password
              // button login
              // transitioning to signing up
            ],
          ),
        ),
      ),
    );
  }
}
