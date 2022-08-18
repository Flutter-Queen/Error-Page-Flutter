import 'package:flutter/material.dart';

import 'error_view.dart';
import 'home_view.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Error Page Flutter',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      builder: (BuildContext context, Widget? widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return ErrorPage(errorDetails: errorDetails);
        };
        return widget!;
      },
    );
  }
}
