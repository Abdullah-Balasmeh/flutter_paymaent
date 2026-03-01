import 'package:flutter/material.dart';
import 'package:flutter_payment/core/styles/styles.dart';

AppBar customAppBar({required VoidCallback onPressed, required String title}) {
  return AppBar(
    title: Text(title, style: Styles.style25),
    centerTitle: true,
    backgroundColor: const Color(0xffFFFFFF),
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      onPressed: onPressed,
    ),
  );
}
