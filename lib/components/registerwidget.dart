// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({
    Key? key,
    required this.title,
    this.containerColor,
    this.onTap,
  });

  final String title;
  final Color? containerColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: containerColor ?? Color(0xff2571B6),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 14),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
