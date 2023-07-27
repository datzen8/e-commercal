import 'package:e_commmercal/screens/forgot_password_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/custom_appbarr.dart';
import '../shared/custom_textbox.dart';
import '../styles/app_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailEditController = TextEditingController();
  TextEditingController passwordEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppbar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              _buildLoginForm(),
              Expanded(child:Container() ),
              _buildThirdPartyLogin(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Container(
      margin: EdgeInsets.only(
          top: 50, bottom: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        children: [
          CustomTextBox(
            lable: "Name",
            textEditingController: emailEditController,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextBox(
            lable: "Password",
            textEditingController: passwordEditController,
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordScreen(),));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot your password?'),
                SvgPicture.asset(
                  'assets/images/round-arrow_right_alt-24px-optimized.svg',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width, 48),
              padding: EdgeInsets.all(16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              backgroundColor: AppColors.primaryColor,
            ),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThirdPartyLogin() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Or sign up with social account"),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialLoginButton(),
              SizedBox(
                width: 10,
              ),
              _buildSocialLoginButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSocialLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(94.0, 62.0),
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        backgroundColor: Colors.white,
      ),
      child: SvgPicture.asset("assets/images/google_logo.svg"),
    );
  }
}
