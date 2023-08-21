import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class MyTextStyle {
  static TextStyle tabBarScreenTitle = const TextStyle(
    color: Colors.white,
    fontSize: AppSize.titlePage,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );

  static TextStyle dialogMessage = const TextStyle(
    color: Colors.black,
    fontSize: AppSize.mediumText,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static TextStyle dialogButton = const TextStyle(
    color: Colors.blueAccent,
    fontSize: AppSize.button,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle dialogTitle = const TextStyle(
    color: Colors.black,
    fontSize: AppSize.titleDialog,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle searchText = const TextStyle(
    color: Colors.white,
    fontSize: AppSize.textInput,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static TextStyle settingsText = const TextStyle(
    color: Colors.black87,
    fontSize: AppSize.mediumText,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

}