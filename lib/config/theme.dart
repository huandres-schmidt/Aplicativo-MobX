import 'package:aprendendo_mobx/colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData theme(){
    return ThemeData(
      useMaterial3: false,
      primaryColor: ColorsConstants.midnightDreams,
      appBarTheme: const AppBarTheme(
        toolbarHeight: 0.0,
        backgroundColor: ColorsConstants.midnightDreams,
        elevation: 0.0,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      )
    );
  }
}