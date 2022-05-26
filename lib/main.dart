import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));

ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: _lightTheme,
      darkTheme: _darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark Mode Demo'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    value: true,
                    onChanged: (val) {
                      Get.changeThemeMode(
                        Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                      );
                    },
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
