import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import '../widgets/text_field_input.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  get primaryColor => null;

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Expanded(
          child: Scrollbar(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // svg image (app logo)
                SvgPicture.asset(
                  'assets/ic_instagram_logo.svg',
                  color: primaryColor,
                  height: 60.0,
                ),
                const SizedBox(height: 65.0),
                // text field input for email
                TextFieldInput(
                  hintText: 'Enter Email Address',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _emailController,
                ),
                const SizedBox(height: 25.0),
                // text field input for password
                TextFieldInput(
                  hintText: 'Enter Password',
                  textInputType: TextInputType.text,
                  textEditingController: _passwordController,
                  isPass: true,
                ),
                const SizedBox(height: 25.0),
                // button login
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: const Text('Log In'),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                      color: blueColor,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                // transitioning to signing up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // ignore: sort_child_properties_last
                      child: const Text("Don't have an account?"),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Create account',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 5,
                        ),
                      ),
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
