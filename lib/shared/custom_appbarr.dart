import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget  implements PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      titleSpacing: 20,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8, left: 8, bottom: 12),
            child: FaIcon(FontAwesomeIcons.angleLeft,
                color: Colors.black, size: 24)),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
