import 'package:flutter/material.dart';

class Utils{

  /// App Bar Back Button
  static AppBar appBarBackButton(BuildContext context){
    return AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: ImageIcon(AssetImage('assets/icons/back.png'),),), ///size: 20.r
    );
  }
}