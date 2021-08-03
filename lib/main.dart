import 'package:flutter/material.dart';
import 'package:welcome_screen_app/pages/welcome_page.dart';
import 'package:welcome_screen_app/size_config.dart';
import 'package:welcome_screen_app/styling.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Welcome Page App',
          theme: AppTheme.lightTheme,
          home: WelcomePage(),
        );
      });
    });
  }
}
