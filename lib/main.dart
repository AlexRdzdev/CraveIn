import 'package:cravein/routes/Routes.dart';
import 'package:cravein/theme/AppTheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CraveIn',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getAppTheme(context),
    );
  }
}
