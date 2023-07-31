import 'package:e_commmercal/styles/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatefulWidget {
  final String lable ;
  final TextEditingController textEditingController;


  CustomTextBox({ required this.lable, required this.textEditingController});

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.only(
          left: 22.0,
          right: 22.0,
          bottom: 3.0,
          top: 3,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ]),
        child: Focus(
          onFocusChange: (hasFocus) {
            setState(() {
              _isFocused = hasFocus;
            });
          },
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: widget.lable,
              labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.greyTextColor),
              floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                (Set<MaterialState> states) {
                  final Color color = states.contains(MaterialState.error)
                      ? Theme.of(context).colorScheme.error
                      : AppColors.greyTextColor;
                  return TextStyle(color: color, letterSpacing: 1.0, fontSize: 14);
                },
              ),
            ),
            validator: (String? value) {
              if (value == null || value == '') {
                return 'Enter name';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ),
    );
  }
}
