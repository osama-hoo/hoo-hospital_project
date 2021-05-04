import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Thank you for taking the \n time to complete this survey.",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          textAlign: TextAlign.center
        ),
      ),
    );
  }
}
