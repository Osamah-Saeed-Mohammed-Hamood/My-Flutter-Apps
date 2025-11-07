import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
Category({super.key, this.text,this.color,this.onTab});

  String? text;
  Color? color;
  VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTab,
      child: Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                height: 65,
                width: double.infinity,
                color: color,
                child: Text(
                  text!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
    );
  }
}