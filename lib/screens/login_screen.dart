import 'package:e_commmercal/screens/forgot_password_screen.dart';
import 'package:e_commmercal/screens/sign_up_screen.dart';
import 'package:e_commmercal/shared/custom_appbarr.dart';
import 'package:e_commmercal/shared/custom_textbox.dart';
import 'package:e_commmercal/styles/app_color.dart';
import 'package:e_commmercal/styles/app_font_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget  {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameEditController = TextEditingController();
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
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              _buildLoginForm(),
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
            textEditingController: nameEditController,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextBox(
            lable: "Name",
            textEditingController: nameEditController,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextBox(
            lable: "Password",
            textEditingController: nameEditController,
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Already have an account?'),
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
              'Sign up',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialLoginButton(),
              SizedBox(width: 20,),
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
