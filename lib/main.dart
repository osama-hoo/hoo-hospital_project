import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:web_smiley/questions_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: QuestionScreen() ,
        );
      },
    );
  }
}