import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/custom_appbarr.dart';
import '../shared/custom_textbox.dart';
import '../styles/app_color.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailEditController = TextEditingController();

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
                "Forgot Password",
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
         Text("Please, enter your email address. You will receive a link to create a new password via email."),
          SizedBox(
            height: 10,
          ),
          CustomTextBox(
            lable: "Password",
            textEditingController: emailEditController,
          ),
          SizedBox(
            height: 15,
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
              'Send',
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
          Row(
            children: [
              _buildSocialLoginButton(),
              SizedBox(
                width: 20,
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
